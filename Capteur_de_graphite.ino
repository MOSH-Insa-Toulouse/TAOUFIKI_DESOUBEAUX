//____________________Library____________________//
#include <stdio.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>      

//__________PORTS AND VARIABLES' DEFINITION_______//

/*OLED*/
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_RESET -1 //Reset pin shared with the arduino reset button
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

/*Bluetooth*/
#define rxPin 10 
#define txPin 11
SoftwareSerial HC05(rxPin ,txPin); //Software serial definition
#define baudrate 9600

/*Roto Encoder*/
#define encoder0PinCLK  3 //Clock Output of the Roto Encoder
#define encoder0PinDT  4  //Data Output of the Roto Encoder
#define Switch 2 //Switch connection of the Roto Encoder

int encoderPos=0; //Position of the Roto Encodeur
long unsigned tempsA ; //Clock setup
int rotoTimer = millis(); //Clock loop


/*Measure*/
#define TensionEntree A0 //Pin used to measure the Sensor
float VADC = 0.0; //Tension (0 = 0V; 1024 = 5V)
byte tensionHC05; //Tension send to the APK
double R0 = 0.0; //Resistor R0
float offset=1.10;
float mesure = 0.0; //Tension calibrated

//____________________SETUP____________________//
void setup() {
  
  /*Bluetooth Configuration*/
  pinMode(rxPin,INPUT);
  pinMode(txPin,OUTPUT);
  HC05.begin(baudrate);   

  /*Roto Encoder Confuguration */
  pinMode(encoder0PinCLK, INPUT); 
  digitalWrite(encoder0PinCLK, HIGH);
  pinMode(encoder0PinDT, INPUT); 
  digitalWrite(encoder0PinDT, HIGH); 
  tempsA = millis();
    
  /*OLED Confuguration*/
  /*if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3C for 128x32 sreen
    Serial.println(F("SSD1306 allocation failed"));
    for(;;);
  }*/
    
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C); // Address 0x3C for 128x32 sreen
  display.display();
  delay(2000);
  display.clearDisplay();

  /*Introduction to our sensor on the OLED screen*/
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(40,7);
  display.println(F("Capteur"));
  display.setCursor(29,17);
  display.println(F("de graphite"));
  display.drawRoundRect(2, 2, 124,30, 4, WHITE);
  display.display();
  delay(2000);
  display.clearDisplay();

  /*Introduction to our sensor operation on the OLED screen*/
  display.setTextSize(2);
  display.setTextColor(WHITE);
  display.setCursor(30,7);
  display.println(F("Choix"));
  display.setTextSize(1);
  display.setCursor(37,35);
  display.println(F("Tension"));
  display.setCursor(15,48);
  display.println(F("<- Resistance ->"));
  display.display();
  delay(2000);
  display.clearDisplay();
}

//____________________MAIN LOOP____________________//
void loop(){

  rotoTimer = millis();
  
  /*Measure of the tension on the pin A0 and calculation of the average value of the last five values*/
  VADC = analogRead(TensionEntree)*5.0/1024.0;

  /*Calculation of the Tension calibrated*/   
  mesure = VADC - offset;

  /*Calculation of the value of the resistance*/
  if(mesure > 0){
    R0 = (float)((1.0+100000.0/1000.0)*100000.0*(5.0/mesure)-100000.0-10000.0)/1000000.0 ;
  }else{
    R0 = -1;
  }  

  /*Calculation of the value of the pin A0 for the Bluetooth*/
  tensionHC05= map (analogRead(TensionEntree),0,1024,0,255)-offset;
  /*Sending and Reading of the value of the pin A0 on the APK*/
  HC05.write(tensionHC05);
  while (HC05.available()){
    HC05.read();  
  }
  display.clearDisplay();
  /*Reading of the R0 value when we turn the Roto Encoder*/
  if (digitalRead(encoder0PinDT) == LOW || encoderPos==1){
    ConfigText("R =",0,4,5,1);
    ConfigText("NaN",R0,4,20,2);
    ConfigText("MO",0,90,20,2);
    display.display();
    delay(4000);
    display.clearDisplay();
    encoderPos=1;
  }

  /*Reading of the Tension (pin A0) value when the Roto Encodeur is motionless*/  
  if (digitalRead(encoder0PinDT) == HIGH || encoderPos==2) {
    ConfigText("Tension =",0,4,5,1);
    ConfigText("NaN",mesure,4,20,2);
    ConfigText("V",0,80,20,2);
    display.display();
    delay(400);
    display.clearDisplay();
    encoderPos=2;
  }
}

/*Fonction that configure a text on the OLED screen*/ 
void ConfigText(String text, double val, int x, int y,int size){
  display.setTextSize(size);
  display.setTextColor(WHITE);
  display.setCursor(x,y);
  if (text=="NaN"){
    display.println(val);}
  else{
    display.println(text);
  }
   delay(100);
}
