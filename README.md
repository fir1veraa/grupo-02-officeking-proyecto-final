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

![alt text](Final1.PNG)

![alt text](Final4.PNG)

![alt text](Final3.PNG)

![alt text](Final7-1.PNG)
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

![alt text](Final6.PNG)

![alt text](Final2.PNG)
