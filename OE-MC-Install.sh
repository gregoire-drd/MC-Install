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

echo "      Veuillez indiquer la version de serveur Minecraft souhaité      "
echo
echo "         [1.6.4] [1.7.2] [1.7.10] [1.8] [1.8.8] [1.9] [1.9.4]         "
echo "   [1.12] [1.12.2] [1.16] [1.16.5] [1.17] [1.17.1] [1.18] [1.18.1]    "
echo
read -p "Version : " version
echo
echo "        Veuillez indiquer le type de serveur Minecraft souhaité       "
echo

case $version in
1.6.4 | 164 )
    version="1.6.4"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.6.4/server/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.6.4-R2.0.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.6.4-R2.1-SNAPSHOT.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
 
;;

1.7.2 | 172)
    version="1.7.2"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.2-R0.4-20140216.012104-3.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.2-R0.4-SNAPSHOT-1339.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.7.10 | 1710)
    version="1.7.10"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.8 | 18)
    version="1.8"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.8.8 | 188)
    version="1.8.8"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.9 | 19)
    version="1.9"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.9.4 | 194)
    version="1.9.4"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.12 | 112)
    version="1.12"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.12.2 | 1122)
    version="1.12.2"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.16 | 116)
    version="1.16"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.16.5 | 1165)
    version="1.16.5"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.17 | 117)
    version="1.17"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.17.1 | 1171)
    version="1.17.1"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.18 | 118)
    version="1.18"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.18.1 | 1181)
    version="1.18.1"
    echo "                      [Vanilla] [Bukkit] [Spigot]                      "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

5 | Q | q ) echo "L'utilisateur $USER à quitter le programme" ; echo ; exit 0 ;;
*) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
esac

echo
echo "Démarage de l'installation ... (Serveur Minecraft ${type} ${version})" 
    mkdir ${name}
    cd ${name}
    sleep 2s
    #apt-get update 
    #apt-get upgrade -y
    #apt-get install screen 
    #apt-get install openjdk-8-jdk 
    wget -O ${type}-${version}.jar ${server_jar}
echo "screen -dmS ${name} java -jar ${type}-${version}.jar" > start.sh 
echo "eula=true" > eula.txt

exit 0
