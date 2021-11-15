set -eux

in="/search/odin/sxf/data/action_yani/test/yaniwhite_vpa_yani8_ac1_white_vi01_1.mp4"
out="/search/odin/sxf/data/action_yani/frame/"

ffmpeg -i $in  -f image2 $out/%04d.jpg

