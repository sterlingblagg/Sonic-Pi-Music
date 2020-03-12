use_synth :piano
use_bpm 88

define :repeat do |a, b, c, d, e, f, g|
  play a
  sleep 0.5
  play b
  sleep 0.5
  play c
  sleep 0.25
  play d
  sleep 0.25
  play e, sustain: 1
  play f, sustain: 1
  sleep 1.5
  play g
  sleep 1
end

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

define :measurerepeat2 do |a, b, c, d, e, f, g, h|
  play a
  play b
  sleep 1
  play c
  sleep 0.5
  play d
  play e
  sleep 0.5
  play f
  sleep 0.5
  play g
  sleep 0.5
  play h
  sleep 1
end

define :part2 do |a, b, c, d, e, f, g, h, i, j|
  sleep 1
  play a
  play b
  sleep 1
  play c
  play d
  sleep 2
  play e
  play f
  sleep 1
  play g
  play h
  sleep 0.5
  play i
  play j
  sleep 2.5
end

define :part3 do |a, b, c, d|
  play a, sustain: 4
  11.times do
    play b
    play c
    sleep 0.5
  end
  play b, sustain: 2
  play c, sustain: 2
  sleep d
end


define :dnote do
  play :d2
  sleep 1
end

define :anote do
  play :a2
  sleep 1
end
#################The Song.#################
4.times do
  repeat :d2, :d2, :g2, :a2, :c3, :f3, :a2
end

#play1
live_loop :note1 do
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

live_loop :note2 do
  8.times do
    anote
  end
  stop
end

part2 :Db4, :e4, :Db4, :e4, :Db4, :e4, :Eb4, :c4, :Db4, :e4
#play6
part3 :g2, :b3, :f4, 2.5

4.times do
  repeat :d2, :d2, :g2, :a2, :c3, :f3, :a2
end
live_loop :note1 do
  16.times do
    dnote
  end
  stop
end
measureintro :f4, :c4, :f4, :c4, :f4, :c4, :f4, :c4, :d4, :c4, :d4
measurerepeat2 :f4, :c4, :d4, :f4, :c4, :d4, :c4, :d4
measurerepeat2 :f4, :c4, :d4, :f4, :c4, :d4, :c4, :d4
measurerepeat2 :f4, :c4, :d4, :f4, :c4, :d4, :c4, :d4