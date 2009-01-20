function range () { 
  if [ $1 -ge $2 ]; then 
    return 
  fi 
  
  a=$1 
  b=$2 
  while [ $a -le $b ]; do 
    echo $3$a$4; a=$(($a+1)); 
  done 
}
