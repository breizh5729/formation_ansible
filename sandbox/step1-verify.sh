#! /bin/bash 

kubectl get pods vincent

ret=$?
if [ $ret -eq 0 ]; then
        echo "done"
else
        echo "essaie encore "
fi
