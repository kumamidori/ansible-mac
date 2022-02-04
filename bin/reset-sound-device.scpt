# https://qiita.com/yuki777/items/868ca9639adec9d1f197
# SwitchAudioSource -f json -t output -a | jq
# 出力デバイスを指定します
do shell script "/usr/local/bin/SwitchAudioSource -f json -t output -u 'BuiltInHeadphoneOutputDevice'"

# SwitchAudioSource -f json -t input -a | jq
# 入力デバイスを指定します
do shell script "/usr/local/bin/SwitchAudioSource -f json -t input -u 'BuiltInHeadphoneInputDevice'"

# 出力音量を50に設定します
set volume output volume 50

# 入力音量を100に設定します
set volume input volume 100
