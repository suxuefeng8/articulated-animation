#CUDA_VISIBLE_DEVICES=0,1,2,3 python run.py --config config/mgif256.yaml --device_ids 0,1,2,3 >mgif.log 2>&1 &

CUDA_VISIBLE_DEVICES=0,1,2,3 python run.py --config config/action-yani-.yaml --device_ids 0,1,2,3 >mgif.log 2>&1 &
