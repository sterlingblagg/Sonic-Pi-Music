use_synth :piano
use_bpm 88

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

define :part3 do |a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y|
  play a, sustain: 4
  play b
  play c
  sleep 0.5
  play d
  play e
  sleep 0.5
  play f
  play g
  sleep 0.5
  play h
  play i
  sleep 0.5
  play j
  play k
  sleep 0.5
  play l
  play m
  sleep 0.5
  play n
  play o
  sleep 0.5
  play p
  play q
  sleep 0.5
  play r
  play s
  sleep 0.5
  play t
  play u
  sleep 0.5
  play v
  play w
  sleep 0.5
  play x, sustain: 2
  play y, sustain: 2
  sleep 2
end

define :dnote do
  play :d2
  sleep 1
end

define :anote do
  play :a2
  sleep 1
end


#play1
/live_loop :note1 do
  16.times do
    dnote
  end
  stop
end


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
/#play6
part3 :g2, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4, :b3, :f4