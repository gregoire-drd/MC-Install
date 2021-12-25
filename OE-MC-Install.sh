#!/bin/bash 

apt-get update 
clear

printf "\n"
echo "  ____            _         ______                                     "
echo " / __ \          | |       |  ____|                                    "
echo "| |  | |_ __   __| | __ _  | |__   _ __   ___ _ __ __ _ _   _ _______  "
echo "| |  | | '_ \ / _  |/ _' | |  __| | '_ \ / _ \ '__/ _  | | | |_  / _ \ "
echo "| |__| | | | | (_| | (_| | | |____| | | |  __/ | | (_| | |_| |/ /  __/ "
echo " \____/|_| |_|\____|\____| |______|_| |_|\___|_|  \__, |\__, /___\___| "
echo "                                                   __/ | __/ |         "
echo "                                                  |___/ |___/   V2.1   "
echo
echo "---------------------------- OE MCinstall ----------------------------"
echo "--------------------------- by gregoire_drd --------------------------"
echo
echo "    Veuillez indiquer un nom pour votre serveur Minecraft souhaité     "
echo
read -p "Name : " name
echo

# Set name if it wasn't set
if [ -z "$name" ]; then
    port="Minecraft"
fi

mkdir ${name}
cd ${name}

echo "      Veuillez indiquer la version de serveur Minecraft souhaité      "
echo
echo " [1.6.4] [1.7.2] [1.7.10] [1.8] [1.8.8] [1.9] [1.9.4] [1.10] [1.10.2] "
echo "    [1.11] [1.11.2] [1.12] [1.12.2] [1.13] [1.13.2] [1.14] [1.14.3]   "
echo "    [1.15] [1.15.2] [1.16] [1.16.5] [1.17] [1.17.1] [1.18] [1.18.1]   "
echo
read -p "Version : " version
echo


case $version in
1.6.4 | 164 )
    echo "        Veuillez indiquer le type de serveur Minecraft souhaité        "
    echo
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) 
        echo "Démarage de l'installation ... (Serveur Minecraft 1.6.4)" 
        sleep 2s
        #apt-get update 
        #apt-get upgrade -y
        #apt-get install screen 
        #apt-get install openjdk-8-jdk 
        wget https://launcher.mojang.com/mc/game/1.6.4/server/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar 
    ;;

    Bukkit | bukkit | B | b ) 
        echo "Démarage de l'installation ... (Serveur Minecraft 1.6.4)" 
        sleep 2s
        #apt-get update 
        #apt-get upgrade -y
        #apt-get install screen 
        #apt-get install openjdk-8-jdk 
        wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.6.4-R2.0.jar 
    ;;

    Spigot | spigot | S | s ) 
        echo "Démarage de l'installation ... (Serveur Minecraft 1.6.4)" 
        sleep 2s
        #apt-get update 
        #apt-get upgrade -y
        #apt-get install screen 
        #apt-get install openjdk-8-jdk 
        wget https://cdn.getbukkit.org/spigot/spigot-1.6.4-R2.1-SNAPSHOT.jar 
    ;;
    *) echo "ERREUR - ";;
    esac
    echo "screen -dmS ${name} java -jar server.jar" > start.sh 
    echo "eula=true" > eula.txt 
;;

1.7.2 | 172) 
    echo "        Veuillez indiquer le type de serveur Minecraft souhaité        "
    echo
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) 
        echo "Démarage de l'installation ... (Serveur Minecraft 1.7.2)" 
        sleep 2s
        #apt-get update 
        #apt-get upgrade -y
        #apt-get install screen 
        #apt-get install openjdk-8-jdk 
        wget https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar
    ;;

    Bukkit | bukkit | B | b ) 
        echo "Démarage de l'installation ... (Serveur Minecraft 1.7.2)" 
        sleep 2s
        #apt-get update 
        #apt-get upgrade -y
        #apt-get install screen 
        #apt-get install openjdk-8-jdk 
        wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.2-R0.4-20140216.012104-3.jar
    ;;

    Spigot | spigot | S | s ) 
        echo "Démarage de l'installation ... (Serveur Minecraft 1.7.2)" 
        sleep 2s
        #apt-get update 
        #apt-get upgrade -y
        #apt-get install screen 
        #apt-get install openjdk-8-jdk 
        wget https://cdn.getbukkit.org/spigot/spigot-1.7.2-R0.4-SNAPSHOT-1339.jar
    ;;
    *) echo "ERREUR - ";;
    esac
    echo "screen -dmS ${name} java -jar server.jar" > start.sh 
    echo "eula=true" > eula.txt 
;;

1.7.10) echo " ----- MENU 3 -----
    <1>  menu 3.1
    <2>  menu 3.2
    <3>  menu 3.3
    <4>  Q = Quitter
    "
    read choix_menu_3
    echo
    case $choix_menu_3 in
    1) echo "vous avez selectionné le menu: 3.1" ;;
    2) echo "vous avez selectionné le menu: 3.2" ;;
    3) echo "vous avez selectionné le menu: 3.3" ;;
    4 | Q | q ) echo "L'utilisateur $USER à quitter le programme" ; echo ; exit 0 ;;
    *) echo "Erreur saisi Menu 3";;
    esac
;;

5 | Q | q ) echo "L'utilisateur $USER à quitter le programme" ; echo ; exit 0 ;;
*) echo "Erreur saisi menu principal";;
esac
echo
exit 0
