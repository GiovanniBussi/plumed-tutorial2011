#!/bin/bash
sum_hills.x -stride 10 -ndim 1 -ndw 1 -ngrid 100 100 -kt 0.6 -file HILLS -pi 1
for file in fes.dat.? fes.dat.?? fes.dat.???
 do
  if [ -f ${file} ]; then
    F=`awk 'BEGIN{tot=0}{if(NF==2 && $1>-3.0 && $1<-1.0)tot=tot+exp(-$2/0.6)}END{print -0.6*log(tot)}' $file`
    U=`awk 'BEGIN{tot=0}{if(NF==2 && $1>0.0 && $1<2.0)tot=tot+exp(-$2/0.6)}END{print -0.6*log(tot)}' $file`
    delta=`echo "$F - $U" | bc -l`
    echo $delta
  fi 
done > DeltaF

