
#!/bin/bash
function Actualizar() {
        echo "ya procedera a actualizar su sistema"
        sudo apt-get update -y;
        sudo apt-get upgrade -y;
        sleep 4;
        clear;
        echo "su sistema esta actualizado";
        sleep 6
        clear
}

function instalarGuake(){
        echo "se procedera a actualizar el sistema por seguridad"
	sudo apt-get update -y;
        sudo apt-get update -y;
        echo "se realizara la instalacion de Guake"
        sudo apt-get install guake -y;
        sleep 4;
        clear
        echo "ya se inastalo guake con exito ...gracias"
        sleep 4;
        clear
}
function instalarfish(){
        echo "se instalara fish editor de texto plano"
	sleep 4;
        sudo apt-get install fish -y;
        sleep 4;
        sudo chsh -s /usr/bin/fish;
        clear
	echo "felicitaciones ya instalo fish "
	sleep 4;
	clear
}
function instalaratom(){
        echo "se procede a descargar el repositorio desde la web "
        sudo add-apt-repository ppa:webupd8team/atom;
        echo "seprocede a instalar atom "
        sudo apt-get update;
        sudo apt-get install atom;
        clear;
        echo"se instalo completamente "
        sleep 4;
	clear
}

function instalarPlayOnLinux(){
        echo "se procede a descargar PlayOnLinux del repositorio desde la web "
        sudo add-apt-repository ppa:noobslab/apps;
	sudo apt-get update;
	clear
	sleep 4;
	echo "seprocede a instalar playonlinux "
	sudo apt-get install playonlinux;
        clear;
        echo "se instalo completamente "
        sleep 4;
        clear
}
function instalarAdobeFlashPlayer(){
       
        echo "seprocede a instalar adobe flash player "
        sudo apt-get install flashplugin-installer;
        clear;
        echo "se instalo completamente "
        sleep 4;
        clear
}
function instalarWiner(){

        echo "seprocede a instalar Winer1.7 "
	sudo add-apt-repository ppa:ubuntu-wine/ppa;
	sudo apt-get update;
	sudo apt-get install wine1.7 winetricks;
        clear;
        echo "se instalo completamente "
        sleep 4;
        clear
}

while [ "$OPCION" != 20 ]
        do
                echo "Actualizar sistema       presione........1"
                echo "instalar Guake           Presione........2"
                echo "instalar fish            presione........3"
		echo "instalar atom            presione........4"
		echo "instalar playonlinux     presione........5"
                echo "instalar flash player    presione........6"
                echo "instalar Winer1.7        presione........7"
                echo "instalar en espera       presione........8"
                echo "instalar en espera       presione........10"

                echo "salir                    presione........20"
        read -p "INGRESE UNA OPCION" OPCION
        case $OPCION in
                1) Actualizar;
                ;;
                2) instalarGuake;
                ;;
                3) instalarfish;
                ;; 
		4) instalaratom;
                ;;
	        5) instalarPlayOnLinux;
                ;;
		6) instalarAdobeFlashPlayer;
                ;;
	        7) instalarWiner;
                ;;

                20);;
        esac
done
echo "gracias  su preferencia yonalixgarcia@gmail.com";
exit 0 
