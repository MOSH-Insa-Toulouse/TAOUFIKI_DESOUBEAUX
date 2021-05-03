# CAPTEUR DE GRAPHITE TAOUFIKI_DESOUBEAUX
# Sommaire
<!-- TOC depthFrom:2 -->
  - [1. Description](#1-Description)
  - [2. Code Arduino](#2-Code-Arduino)
  - [3. KiCAD](#3-KiCAD)
  - [4. Application Android](#4-Application-Android)
  - [5. Banc de test](#5-Banc-de-test)
  - [6. Datasheet du capteur](#6-Datasheet-du-capteur)
  - [7. Conclusion et pistes d'amélioration](#7-Conclusion-et-Pistes-d-amélioration)
<!-- /TOC -->

# 1. Description 

Ce projet a été réalisé au cours de l'unité de formation "Du Capteur au Banc de Test" de la 4ème année du cursus “Génie Physique” à l’INSA de Toulouse.  L'objectif de ce dernier est la réalisation d'un capteur de déformation à base de graphite, peu onéreux, flexible, léger et écoresponsable.

Ce capteur exploite la dépendance entre la conductivité électrique et la distance entre les nanoparticules de graphite. En  effet, les électrons se déplacent entre les nanoparticules de graphite par effet tunnel. En appliquant de plus une contrainte mécanique, l'échantillon se déforme, ce qui affecte la distance entre les nanoparticules du capeur et modifie ainsi la conductivité électrique, ce qui se traduit par une variation de résistance, qu'on peut alors mesurer.

Pour ce faire, nous allons colorier au crayon la surface du capteur pour laisser une fine couche de graphite sur le papier. Nous avons à notre disposition plusieurs types de crayons, allant du 9H au 9B, et qui se distinguent par la concentration de graphite contenue dans chacun d'entre eux. Nous pourrons ainsi observer différents comportements de résistances en fonction des crayons utilisés.

La chaîne de mesure est basée sur l'acquisition d'un signal associée à la variation de résistance du capteur. Nous avons alors réalisé un shield PCB à l'aide du logiciel KiCad contenant un amplificateur transimpédance, un encodeur rotatoire, un module Bluetooth et un écran OLED. Ce shield est ensuite placé sur une carte Arduino UNO, programmé par un code C++ Arduino à l'aide du logiciel Arduino IDE. Les mesures de résistances sont également trannsmises par Bluetooth et interfacées sur une application Android APK créée sur MIT App Inventor.

# 2. Code Arduino

Pour développer notre code Arduino, nous avons d'abord du installer trois librairies Adafruit : Adafruit_GFX_Library et Adafruit_SSD1306 pour le contrôle de nos modules et Adafruit_BusIO pour la connexion entre SPI et I2C. Vous pouvez trouver ces librairies ici.

Nous avons ensuite réalisé un code développé sous Arduino IDE, qui nous permet de contrôler un module Bluetooth, un amplificateur transimpédance et un écran OLED et permet la mesure de résistance de notre graphite. Ce code se situe dans le dossier 

# 3. KiCad

## Empreintes et symboles

- Amplificateur LTC1050


<img src="/KiCad/Composants/AmpliLTC1050/AmpliLTC1050.png" width="450" height="200">  <img src="/KiCad/Composants/AmpliLTC1050/LTC1050.png" width="300" height="200"> 


- Module Bluetooth


<img src="/KiCad/Composants/ModuleBluetooth/Module Bluetooth.png" width="400" height="200"> <img src="/KiCad/Composants/ModuleBluetooth/Empreinte bluetooth.png" width="300" height="170"> 

- Encodeur rotatoire

<img src="/KiCad/Composants/Encodeur/Encodeur rotatoire.png" width="400" height="200"> <img src="/KiCad/Composants/Encodeur/Empreinte encodeur.png" width="300" height="170"> 

- Ecran OLED

<img src="/KiCad/Composants/OLED/OLED.png" width="400" height="200"> <img src="/KiCad/Composants/OLED/Empreinte OLED 2.png" width="300" height="170"> 

## Schématique et circuit

<img src="/KiCad/Shield complet/Circuit PCB.png" width="700" height="450"> 
<img src="/KiCad/Shield complet/Schematique.png" width="900" height="600"> 

## Visualisation 3D

<img src="/KiCad/Shield complet/PCB 3D.png" width="700" height="500"> 

# 4. Application Android

Nous avons réalisé une application Android, via le site Internet MIT App Inventor. Celle-ci assure la liaison Bluetooth avec notre Shield et permet d'afficher l'évolution relative de la résistance en temps réel dans un graph.

## Code

<img src="/APK/Code APK.png" width="750" height="600"> 

## Interface

<img src="/APK/Interface APK.JPG" width="350" height="700"> 

# 5. Banc de test

Notre banc de test est composé d'une carte Arduino sur laquelle on a placé notre shield et branchée par un câble USB à l'ordinateur. Les pinces crocodiles permettent d'immobiliser le capteur de graphite.

<img src="/Mesures/Dispositif.png" width="700" height="500"> 


# 6. Datasheet du capteur
# 7. Conclusion et pistes d'amélioration

Problème de répétabilité 
