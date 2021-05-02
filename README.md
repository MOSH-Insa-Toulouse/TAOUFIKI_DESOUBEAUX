# CAPTEUR DE GRAPHITE TAOUFIKI_DESOUBEAUX
# Sommaire
<!-- TOC depthFrom:2 -->
  - [1. Description](#1-Description)
  - [2. Code Arduino](#2-Code-Arduino)
  - [3. KiCAD](#3-KiCAD)
  - [4. APK : Application Android](#4-Application-Android)
  - [5. Datasheet du capteur](#5-Datasheet-du-capteur)
  - [6. Banc de test](#5-Banc-de-test)
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
## Schématique
## Visualisation 3D


# 4. APK : Application Android
# 5. Datasheet du capteur
# 6. Banc de test
# 7. Conclusion et pistes d'amélioration
