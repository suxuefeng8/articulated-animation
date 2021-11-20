#driving="/search/odin/sxf/data/action_yani/test/yaniwhite_vpa_yani8_ac1_white_vi02_5.mp4"
#source="/search/odin/sxf/data/action_yani/frame/0001.jpg"
#config="config/action-yani.yaml"

driving="/search/odin/sxf/data/action_male/limu_video_seg/sogou_btp_m_ttvs_limu_0011.mp4"
source="/search/odin/sxf/data/action_male/limu_video_seg/test/sogou_btp_m_ttvs_limu_0011/frame-000001.png"

model="latest.pth"
config="config/action-limu.yaml"

rm -f tmp.mp4
ffmpeg -i $driving -vf scale=-1:512,crop=512:512:200:0 tmp.mp4

#python demo.py  --config $config --driving_video tmp.mp4 --source_image $source --checkpoint $model --img_shape 512,512 --mode standard
python demo.py  --config $config --driving_video tmp.mp4 --source_image $source --checkpoint $model --img_shape 512,512 --mode avd

