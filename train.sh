set -eux

#CUDA_VISIBLE_DEVICES=0,1,2,3 python run.py --config config/mgif256.yaml --device_ids 0,1,2,3 >mgif.log 2>&1 &

#CUDA_VISIBLE_DEVICES=0,1,2,3 python run.py --config config/action-yani.yaml --device_ids 0,1,2,3 --checkpoint log/action-yani\ 30_10_21_07.06.40/00000399-cpk-reconstruction.pth  >action.log 2>&1 &
#CUDA_VISIBLE_DEVICES=2,3 python -u run.py --config config/action-limu.yaml --device_ids 0,1 --mode train >limu.log 2>&1 &

#CUDA_VISIBLE_DEVICES=0,1,2,3 python -u run.py --config config/action-limu.yaml --device_ids 0,1,2,3 --mode train >limu.log 2>&1 &

CUDA_VISIBLE_DEVICES=0,1,2,3 python run.py --checkpoint log/action-limu\ 10_11_21_09.46.01/00000249-cpk-reconstruction.pth --config config/action-limu.yaml --device_ids 0,1,2,3 --mode train_avd >limu_avd.log 2>&1 &

