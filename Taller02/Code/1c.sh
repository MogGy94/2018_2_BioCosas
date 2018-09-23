#!/bin/bash
for DIR in *;
do 
rm -r $DIR/name; # Mejor (rm -i -r $DIR/name)
done

