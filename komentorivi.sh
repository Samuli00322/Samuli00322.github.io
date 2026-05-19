#a) !/bin/bash 

echo "Mikä on nimesi?" 

read entered_name 

echo  "Tervetuloa koneellesi" $entered_name

#b)
#!/bin/bash
echo "Anna käyttäjätunnus:" 

read entered_name

echo "Anna salasana:"

read entered_sana

if [[ "$entered_name" == "opiskelija" && "$entered_sana" == "demo" ]]; then
    echo "Oikein, tervetuloa!"
else
    echo "Syötit väärän tunnuksen tai salasanan"


# c)
#!/bin/bash

oikea=7

while true
do
    echo "Anna numero:"
    read numero

    if [ "$numero" -eq "$oikea" ]; then
        echo "Onnea! Voitit pelin."
        break
    elif [ "$numero" -gt "$oikea" ]; then
        echo "Numero on suurempi kuin oikea numero."
    else
        echo "Numero on pienempi kuin oikea numero."
    fi
done

# d)
#!/bin/bash
echo "Suoritetaanko ylläpitotoimet kyllä ei ?"
read vastaus
if [ "$vastaus" = "kyllä" ]; then
    echo "Suoritetaan ylläpitotoimet..."
    sudo apt update && sudo apt upgrade -y
    echo "Valmista tuli"
else
    echo "Ylläpitotoimia ei suoriteta."
fi