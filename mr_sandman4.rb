clap = "C:/Users/sterling_blagg/Desktop/clap.wav"
sing = "C:/Users/sterling_blagg/Desktop/sing.wav"
ready = "C:/Users/sterling_blagg/Desktop/ready.wav"

sand = [69, 72, 77, 81, 79, 77, 74, 70, 70, 74, 77, 81, 79]
uno = [69, 72, 77, 81, 79, 77, 74, 70]
trumpet = [70, 72, 74, 75]
x = 0

use_bpm 110
define :sandman do
  12.times do
    play sand [x]
    sleep 0.5
    x = x + 1
  end
  play sand [x]
  sleep 2.1
  if x > 11
    x = 0
  end
end

define :doot do
  play 70
  sleep 0.5
  play 72
  sleep 0.5
  play 74
  sleep 0.5
  play 75
end

define :part1 do
  7.times do
    play uno [x]
    sleep 0.5
    x = x + 1
  end
  play uno [x], sustain: 1
  if x > 7
    x = 0
  end
end
sample ready
sleep 3.3

sample clap
sleep 4.15

live_loop :sing do
  1.times do
    sample sing
    sleep 1000
  end
end
2.times do
  sandman
end
sleep 0.35
1.times do
  part1
end
sleep 2.72
1.times do
  doot
end
