set -eux

input_dir="/search/odin/sxf/data/action_male/limu_video_seg"

train_dir=${input_dir}"/train/"
test_dir=${input_dir}"/test/"

rm -rf $train_dir $test_dir

for f in `echo $input_dir/"*.mp4"`
do
    i=$(($RANDOM % 10))
    n=`echo $f | cut -d"." -f1 | rev | cut -d"/" -f1 | rev`
    if [ $i -gt 1 ]
    then
        output_dir=$train_dir"/"$n"/"
    else
        output_dir=$test_dir"/"$n"/"
    fi
    echo $i, $f, $output_dir
    mkdir -p $output_dir
    # 16:9, 1920x1080 (228=512*1920/4/1080)
    ffmpeg -i $f -vf scale=-1:512,crop=512:512:200:0 ${output_dir}frame-%06d.png
#    exit
done
