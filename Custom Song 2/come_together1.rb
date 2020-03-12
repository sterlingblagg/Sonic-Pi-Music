use_bpm 88
use_synth :piano
vocals = []

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

4.times do
  repeat :d2, :d2, :g2, :a2, :c3, :f3, :a2
end

