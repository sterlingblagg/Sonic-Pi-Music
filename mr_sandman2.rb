clap = "C:/Users/sterling_blagg/Desktop/clap.wav"
sing = "C:/Users/sterling_blagg/Desktop/sing.wav"
ready = "C:/Users/sterling_blagg/Desktop/ready.wav"


use_bpm 110
define :sandman do
  play 69
  sleep 0.5
  play 72
  sleep 0.5
  play 77
  sleep 0.5
  play 81
  sleep 0.5
  play 79
  sleep 0.5
  play 77
  sleep 0.5
  play 74
  sleep 0.5
  play 70
  sleep 0.5
  play 70
  sleep 0.5
  play 74
  sleep 0.5
  play 77
  sleep 0.5
  play 81
  sleep 0.5
  play 79
  sleep 2.1
end

define :part1 do
  play 81
  sleep 0.5
  play 84
  sleep 0.5
  play 89
  sleep 0.5
  play 93
  sleep 0.5
  play 91
  sleep 0.5
  play 89
  sleep 0.5
  play 86
  sleep 0.5
  play 82, sustain: 1
end
sample ready
sleep 3.3

sample clap
sleep 4.15

sample sing

2.times do
  sandman
end
sleep 0.35

1.times do
  part1
end
