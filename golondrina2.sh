#!/bin/bash
clear
echo ""
fecha=$(date "+%Y-%m-%d-%H:%M")
echo $fecha
echo ""
echo ""
#ok

nuevo(){
gsutil mb -p sit-devops-training -c standard -l us -b on gs://sit-devops-training-bkt$num
gsutil label ch -l grupo:grupo-02 -l proyecto:golondrinas gs://sit-devops-training-bkt$num
#gcloud storage buckets describe gs://sit-devops-training-bkt$num --format= "default(uniform_access)"
} 

copiar () {
 for j in $(seq -w 1 100); 
    do
      mkdir carpeta-${j}/
     touch carpeta-${j}/sinceramente.txt
      gsutil cp -r carpeta-${j}/ gs://sit-devops-training-bkt$num
    done
    rm -r carpeta-*
}

mostrar () {
read -p "¿DESEARIAS VER EL CONTENIDO?  SI/NO?  " decision
des=$(echo "$decision" | tr '[:upper:]' '[:lower:]')
if [ $des = "si" ];
then
gsutil du "gs://sit-devops-training-bkt"$num/carpeta-* | grep ".txt"
else
        echo "TERMINACION DEL PROGRAMA"
fi
}

#crearc(){
#    funcion= "gs://sit-devops-training-bkt$num"
#    for j in $(seq -w 1 100); 
#    do
#     gsutil cp /dev/null ${funcion}/carpeta-${j}/
#     touch sinceramente.txt
#    done
#}

log () {
echo "Grupo 02"
echo ""
lsb_release -a
echo ""
echo $fecha
echo ""
echo -e "El usuario que ejecuta es:" '\c' 
whoami 
}

eliminar() {
        opcelim=""
 echo ""
 echo "¿ Deseas eliminar el bucket ?"
                echo ""
                echo "1.- Si  2.- No"
                echo ""
                read -n 1 opcelim
                echo ""
                if [ -z $opcelim ]; then 
                        echo "Debe de contener un valor"
                        read
                        eliminar
                else
                if [ $opcelim -eq 1 ]; then
                        echo ""
                        gsutil -m rm -r gs://sit-devops-training-bkt$num/*
                        gsutil rb gs://sit-devops-training-bkt$num
                        echo ""
			echo "Se elimino el Bucket"
                elif [ $opcelim -eq 2 ]; then
                        echo ""
                        exit -1
                else
                        echo ""
                        echo "No es opcion valida, vuelve intentarlo"
                        read
                        eliminar
                fi
                fi
}


validacion(){
echo ""
echo ""
log
log > grupo-02-$fecha.log

echo ""
echo "DIRECTORIO: "
echo ""
gsutil ls | grep "sit-devops-training-bkt"
listado=$(gsutil ls | grep "sit-devops-training-bkt$num")

if [ -n "$listado" ]; then
    if [ "gs://sit-devops-training-bkt$num/" = "$listado" ]; then
        echo ""
        echo ""
        echo "¡¡ El bucket YA EXISTE $listado !!"
        echo ""
        mostrar
        eliminar
    else
        echo "--------------------------------------------------------------"
    fi
else
    echo "--------------------------------------------------------------------------------------"
    echo "¡¡¡¡  No se encontró ningún bucket con el nombre gs://sit-devops-training-bkt$num !!!!"
    echo "¡¡¡¡                               Se crea el bucket                              !!!!"
    echo "--------------------------------------------------------------------------------------"
        nuevo
        echo ""
        echo " -- Se procede a crear carpetas y contenido --"
        echo ""
        copiar
fi
}

echo ""
echo ""
echo -e "¿ Cual es numero del Bucket a crear a 2 digitos: " '\c'
read -n 2 num


validacion
