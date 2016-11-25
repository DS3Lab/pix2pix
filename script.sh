
    	
for a in 1.4 1.8
do
    for n in 1.0 1.2 2.0 5.0 10.0
    do
        DATA_ROOT=/mnt/ds3lab/astronomy/001002_${a}_${n}/jpg/ name=001002_${a}_${n} which_direction=BtoA display=0 niter=20 batchSize=1 gpu=1 checkpoints_dir=/mnt/ds3lab/roou_v2_checkpoint/ th train.lua
    done
done


for a in 2.2 2.5
do
    for n in 1.0 1.2 2.0 5.0 10.0
    do
        DATA_ROOT=/mnt/ds3lab/astronomy/001002_${a}_${n}/jpg/ name=001002_${a}_${n} which_direction=BtoA display=0 niter=20 batchSize=1 gpu=2 checkpoints_dir=/mnt/ds3lab/roou_v2_checkpoint/ th train.lua
    done
done




for a in 1.4 1.8 
do
    for n in 1.0 1.2 2.0 5.0 10.0
    do
    	DATA_ROOT=/mnt/ds3lab/astronomy/001002_${a}_${n}/jpg/ name=001002_${a}_${n} which_direction=BtoA phase=test display=0 gpu=2 checkpoints_dir=/mnt/ds3lab/roou_v2_checkpoint/ results_dir=/mnt/ds3lab/roou_v2_results/ th test.lua
    done
done


for a in 2.2 2.5
do
    for n in 1.0 1.2 2.0 5.0  10.0
    do
    	DATA_ROOT=/mnt/ds3lab/astronomy/001002_${a}_${n}/jpg/ name=001002_${a}_${n} which_direction=BtoA phase=test display=0 gpu=1 checkpoints_dir=/mnt/ds3lab/roou_v2_checkpoint/ results_dir=/mnt/ds3lab/roou_v2_results/ th test.lua
    done
done




