use_synth :piano
use_bpm 88
x = 0

define :measureintro do |a, b, c, d, e, f, g, h, i, j, k|
  sleep 0.5
  play a
  play b
  sleep 0.5
  play c
  play d
  sleep 0.5
  play e
  play f
  sleep 0.5
  play g
  play h
  sleep 0.5
  play i
  sleep 0.5
  play j
  sleep 0.5
  play k
  sleep 1
end
define :measurerepeat do |a, b, c, d, e, f, g, h, i, j|
  play a
  play b
  sleep 1
  play c
  play d
  sleep 0.5
  play e
  play f
  sleep 0.5
  play g
  sleep 0.5
  play h
  sleep 0.5
  play i
  sleep j
end

define :dnote do
  4.times do
    play :d2
    sleep 1
  end
end


#play1
live_loop :note do
  16.times do
    dnote
  end
  stop
end

measureintro :f4, :c4, :f4, :c4, :f4, :c4, :f4, :c4, :d4, :c4, :d4
#play2
measurerepeat :f4, :c4, :f4, :c4, :f4, :c4, :d4, :c4, :d4, 1
#play3
measurerepeat :f4, :c4, :f4, :c4, :f4, :c4, :d4, :c4, :d4, 1
#play4
measurerepeat :f4, :c4, :f4, :c4, :f4, :c4, :d4, :c4, :d4, 0.5

play :a2
sleep 1
play :a2
play :Db4
play :e4
sleep 1
play :a2
play :Db4
play :e4
sleep 1
play :a2
sleep 1
play :a2
play :Db4
play :e4
sleep 1
play :a2
play :Eb4
play :c4
sleep 0.5
play :a2
play :Db4
play :e4
sleep 1
play :a2
sleep 1
#play6
play :g2, sustain: 8
sleep 0
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3
play :f4
sleep 0.5
play :b3, sustain: 2
play :f4, sustain: 2
sleep 1