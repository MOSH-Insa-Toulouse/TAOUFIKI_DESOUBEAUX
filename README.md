# CAPTEUR DE GRAPHITE TAOUFIKI_DESOUBEAUX
# Sommaire
<!-- TOC depthFrom:2 -->
  - [1. Description](#1-Description)
  - [2. Code Arduino](#2-Code-Arduino)
  - [3. KiCAD](#3-KiCAD)
  - [4. Application Android](#4-Application-Android)
  - [5. Banc de test](#5-Banc-de-test)
  - [6. Résultats et discussion](#7-Résultats-et-discussion)
  - [7. Datasheet du capteur](#6-Datasheet-du-capteur)
<!-- /TOC -->

# 1. Description 

Ce projet a été réalisé au cours de l'unité de formation "Du Capteur au Banc de Test" de la 4ème année du cursus “Génie Physique” à l’INSA de Toulouse.  L'objectif de ce dernier est la réalisation d'un capteur de déformation à base de graphite, peu onéreux, flexible, léger et écoresponsable.

Ce capteur exploite la dépendance entre la conductivité électrique et la distance entre les nanoparticules de graphite. En  effet, les électrons se déplacent entre les nanoparticules de graphite par effet tunnel. En appliquant de plus une contrainte mécanique, l'échantillon se déforme, ce qui affecte la distance entre les nanoparticules du capeur et modifie ainsi la conductivité électrique, ce qui se traduit par une variation de résistance, qu'on peut alors mesurer.

Pour ce faire, nous allons colorier au crayon la surface du capteur pour laisser une fine couche de graphite sur le papier. Nous avons à notre disposition plusieurs types de crayons, allant du 9H au 9B, et qui se distinguent par la concentration de graphite contenue dans chacun d'entre eux. Nous pourrons ainsi observer différents comportements de résistances en fonction des crayons utilisés.

La chaîne de mesure est basée sur l'acquisition d'un signal associée à la variation de résistance du capteur. Nous avons alors réalisé un shield PCB à l'aide du logiciel KiCad contenant un amplificateur transimpédance, un encodeur rotatoire, un module Bluetooth et un écran OLED. Ce shield est ensuite placé sur une carte Arduino UNO, programmé par un code C++ Arduino à l'aide du logiciel Arduino IDE. Les mesures de résistances sont également trannsmises par Bluetooth et interfacées sur une application Android APK créée sur MIT App Inventor.

# 2. Code Arduino

Pour développer notre code Arduino, nous avons d'abord du installer trois librairies Adafruit : Adafruit_GFX_Library et Adafruit_SSD1306 pour le contrôle de nos modules et Adafruit_BusIO pour la connexion entre SPI et I2C. 

Nous avons ensuite réalisé un code développé sous Arduino IDE, qui nous permet de contrôler un module Bluetooth, un amplificateur transimpédance et un écran OLED et permet la mesure de résistance de notre graphite. Ce code se trouve [ici](/Capteur_de_graphite.ino).

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

Notre banc de test est composé d'une carte Arduino sur laquelle on a placé notre shield et branchée par un câble USB à l'ordinateur. Les pinces crocodiles permettent d'immobiliser le capteur de graphite et de relever les mesures de résistance.

<img src="/Mesures/Dispositif.png" width="550" height="560"> 

Afin de mesurer les variations de résistance, nous avons utilisé un dispositif composé de demi-cercles concentriques, dont le rayon varie de 1 à 2,5 cm.

<img src="/Mesures/Bancdetest.png" width="600" height="500"> 

On place d'abord les pinces crocodiles sur le capteur, après avoir colorié ce dernier avec le crayon qui nous intéresse pour la mesure. On place ensuite notre capteur sur le demi-cercle au rayon le plus grand, pour éviter de trop abimer le capteur dès le début. On repète cette dernier opération jusqu'à arriver au demi-cercle de plus petit rayon.

# 6. Résultats et discussion

## Résultats
Avec ce banc de tests, nous obtenons les courbes suivantes réalisées sous Python, représentant l'évolution de la variation relative de résistance en fonction de la déformation et leurs courbes de tendance; ainsi qu'un graph comparant les résultats pour les 3 types de crayons testés:

<img src="/Mesures/Courbes/B pencil.png" width="700" height="400"> <img src="/Mesures/Courbes/H pencil.png" width="700" height="400"> 
<img src="/Mesures/Courbes/HB pencil.png" width="700" height="400">
<img src="/Mesures/Courbes/Comparison pencils.png" width="700" height="400">

Plusieurs remarques peuvent être faites :
- Les courbes suivent une évolution quasi-linéaire.
- Parmi les trois types de crayons testés, ce sont les variations de résistance des crayons H et B qui semblent les plus constantes en fonction de la déformation. On aurait pu s'attendre à ce que plus le crayon soit dur, plus la variation de résistance soit élevée. Ce n'est pas notre cas ici. Il aurait fallu tester avec plus de crayons différents pour voir une tendance plus marquée ou faire plus d'essais. Vous pouvez retrouver le détail des mesures rassemblées dans un fichier Excel [ici](/Mesures).

## Discussion

Deux limites principales sont ici à mentionner quant à l'utilisation de ce banc de test :
- La non-répétabilité des mesures : en effet, lors du relevé des mesures, le plus infime des mouvements pouvait faire varier la résistance du tout au tout, il était donc difficile d'obtenir des valeurs de résistance proches l'une de l'autre d'un essai à l'autre.
- Le dépot de graphite : déposer trop peu de graphite peut entraîner des problèmes de continuité électrique; il faut aussi prendre en compte la précision du tracé ou encore la pression du crayon sur le papier.

# 7. Datasheet du capteur
