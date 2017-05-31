if [ ! $1 ]; then  
   echo 'ERROR: Need to apply loop param'    
   exit  
fi  
for i in $(seq 1 $1)
do 
   `sh ./push.sh`
   time=`date +'%Y-%m-%d %H:%M:%S' -d '-1 days'`
   datetime=`date -d "$time" +%s`
   date -s "$time"
done
