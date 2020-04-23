#! /bin/bash 

kubectl get pods vincent

ret=$?
if [ $ret -eq 0 ]; then
        echo "Bravo "
else
        echo "essaie encore "
fi
