#! /bin/bash 

kubectl get services my-service 

ret=$?
if [ $ret -eq 0 ]; then
        echo "done"
else
        echo "essaie encore "
fi
