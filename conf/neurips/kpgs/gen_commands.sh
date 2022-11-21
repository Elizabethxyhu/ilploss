#!/usr/bin/env bash
export seed clip cool reset
mkdir ilploss
mkdir ../../../logs/neurips/kpgs
mkdir ../../../logs/neurips/kpgs/ilploss
for seed in 8174 2720 4711 
do
    mkdir ilploss/seed-${seed}
    for clip in 0.1 0.025
	do
        mkdir ilploss/seed-${seed}/clip-${clip}
        for cool in 0 4 
		do
            mkdir ilploss/seed-${seed}/clip-${clip}/cool-${cool}
		    for reset in {True,False}
            do
                mkdir ilploss/seed-${seed}//clip-${clip}/cool-${cool}/reset-${reset}/
                echo "python trainer.py --config conf/neurips/kpgs/ilploss/seed-${seed}/clip-${clip}/cool-${cool}/reset-${reset}/kp4.yaml > logs/neurips/kpgs/ilploss/seed-${seed}_clip-${clip}_cool-${cool}_reset-${reset}_kp4.log 2>&1" >> all_commands.sh 
                #envsubst < template4kp.yaml > ilploss/seed-${seed}/clip-${clip}/cool-${cool}/reset-${reset}/kp4.yaml
            done
		done
	done
done

