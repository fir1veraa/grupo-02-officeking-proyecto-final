#!/bin/bash
clear
echo ""
fecha=$(date "+%A, %B-%d, %Y")
echo $fecha
echo ""
echo ""

nuevo(){
gsutil mb -p sit-devops-training -c standard -l us-east4 -b on gs://sit-devops-training-bkt10
} 

crearc(){
    
}
