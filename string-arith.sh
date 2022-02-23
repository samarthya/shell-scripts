#/bin/bash

#-i	to make NAMEs have the `integer' attribute
declare -i SEE

X=9
Y=3

SEE=X+Y            
SAW=X+Y          
SUM=$X+$Y        
  
echo "SEE = $SEE"
echo "SAW = $SAW"
echo "SUM = $SUM"