# ¡¡ Proyecto final !!
## EXELENTE TRABAJO EQUIPO OFFICEKING ##
==============================================

<div align="center">

|  MIEMBROS                  | PARTICIPACION|
| :-----------------------------: | :-----: |
| ALEX XAHUENTITLA PALACIOS       | Lluvia de ideas, Sintaxys de código, Lógica de problema, Investigacion de codigo, Resolucion de problemas.       |
| BOGAR FRAGA BAEZ   	            | Lluvia de ideas, Sintaxys de código, Lógica de problema, Investigacion de codigo, Resolucion de problemas.        |
| JAIR QUIROZ TREJO               | Lluvia de ideas, Sintaxys de código, Lógica de problema, Investigacion de codigo, Resolucion de problemas.        |
| FERNANDO ISRAEL RIVERA APARICIO | Lluvia de ideas, Sintaxys de código, Lógica de problema, Investigacion de codigo, Resolucion de problemas.        |

## TRABAJO EN EQUIPO OFFICEKING ##

![Final1](https://github.com/fir1veraa/proyecto-final-grupo-02/assets/134978021/7b12b03b-1077-41ab-81e4-d11d37441ed2)

![Final4](https://github.com/fir1veraa/proyecto-final-grupo-02/assets/134978021/5c6ddaf3-244a-4a9e-80fb-c9ec204e21a7)

![Final3](https://github.com/fir1veraa/proyecto-final-grupo-02/assets/134978021/774114db-7359-43ed-a059-6d408a157afc)

![Final7](https://github.com/fir1veraa/proyecto-final-grupo-02/assets/134978021/86c8d1ec-4108-4823-b4af-b6dda11636cb)
_________________________________________________

## INSTRUCCIONES SCRIPT ##

### Comando para indicar la fecha ###

fecha=$(date "+%A, %B-%d, %Y")


### Declaramos las funciones ###
nuevo ()

### Comando para crear el BUCKET ###

gsutil mb -p sit-devops-training -c standard -l us -b on gs://sit-devops-training-bkt$num

### Comando para declarar las etiquetas ###

gsutil label ch -l KEY_1:Grupo:Grupo-02 gs://sit-devops-training-bkt$num
gsutil label ch -l KEY_2:Proyecto:golondrinas gs://sit-devops-training-bkt$num

### Comando para dar formato Control de acceso ###

gcloud storage buckets describe gs://sit-devops-training-bkt$num --format= "default(uniform_access)"

### Funcion para crear las carpetas y crear archivos sinceramente.txt ###

crearc()

    funcion=$(gs://sit-devops-training-bkt$num)
    for j in $(seq -w 1 100); 
    do
     gsutil cp gs://${funcion}/carpeta-${j}/
     #gsutil cp /dev/null gs://${funcion}/carpeta-${j}/
     touch sinceramente.txt
    done

![Final6](https://github.com/fir1veraa/proyecto-final-grupo-02/assets/134978021/ec438438-e674-4d8e-98da-da9910b7a58e)

![Final2](https://github.com/fir1veraa/proyecto-final-grupo-02/assets/134978021/24a7ab84-4e31-42c3-8d21-aaec57411077)
