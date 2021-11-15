driving="/search/odin/sxf/data/action_yani/test/yaniwhite_vpa_yani8_ac1_white_vi02_5.mp4"
source="/search/odin/sxf/data/action_yani/frame/0001.jpg"
model="latest.pth"

python demo.py  --config config/action-yani.yaml --driving_video $driving --source_image $source --checkpoint $model

