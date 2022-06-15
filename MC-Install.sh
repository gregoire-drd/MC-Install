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
echo "   [1.12] [1.12.2] [1.16] [1.16.5] [1.17] [1.17.1] [1.18] [1.18.2]    "
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
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.7.10/server/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar";;
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
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/mc/game/1.8/server/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://cdn.getbukkit.org/spigot/spigot-1.8-R0.1-SNAPSHOT-latest.jar";;
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
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://download.getbukkit.org/spigot/spigot-1.18.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.18.2 | 1182)
    version="1.18.2"
    echo "                  [Vanilla] [Bukkit] [Spigot] [Paper]                  "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://download.getbukkit.org/craftbukkit/craftbukkit-1.18.2.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://download.getbukkit.org/spigot/spigot-1.18.2.jar";;
    Paper | paper | P | p ) type="paper" ; server_jar="https://papermc.io/api/v2/projects/paper/versions/1.18.2/builds/290/downloads/paper-1.18.2-290.jar";;
    *) echo "ERREUR - Invalid input" ; echo ; exit 0 ;;
    esac
;;

1.19 | 119)
    version="1.19"
    echo "                  [Vanilla] [Bukkit] [Spigot] [Paper]                  "
    echo
    read -p "Type : " type
    echo
    case $type in
    Vanilla | vanilla | V | v ) type="vanilla" ; server_jar="https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar";;
    Bukkit | bukkit | B | b ) type="bukkit" ; server_jar="https://download.getbukkit.org/craftbukkit/craftbukkit-1.19.jar";;
    Spigot | spigot | S | s ) type="spigot" ; server_jar="https://download.getbukkit.org/spigot/spigot-1.19.jar";;
    Paper | paper | P | p ) type="paper" ; server_jar="https://api.papermc.io/v2/projects/paper/versions/1.19/builds/18/downloads/paper-1.19-18.jar";;
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
    apt-get install screen 
    #apt-get install openjdk-8-jdk 
    wget -O ${type}-${version}.jar ${server_jar}
echo "screen -dmS ${name} java -jar ${type}-${version}.jar" > start.sh 
echo "eula=true" > eula.txt

exit 0
