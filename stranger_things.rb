use_bpm 168

use_synth :fm


define :rightHand do
  play :C3
  sleep 0.5
  play :E3
  sleep 0.5
  play :G3
  sleep 0.5
  play :B3
  sleep 0.5
  play :C4
  sleep 0.5
  play :B3
  sleep 0.5
  play :G3
  sleep 0.5
  play :E3
  sleep 0.5
end

define :rightHand2 do
  play :C3
  sleep 0.5
  play :E3
  sleep 0.5
  play :G3
  sleep 0.5
  play :B3
  use_synth :prophet
  play :D2, sustain: 1
  play :D3, sustain: 1
  use_synth :fm
  sleep 0.5
  play :C4
  sleep 0.5
  play :B3
  sleep 0.5
  play :G3
  sleep 0.5
  play :E3
  sleep 0.5
end

define :rightHand3 do
  play :C3
  use_synth :prophet
  play :E2, sustain: 1
  play :E3, sustain: 1
  use_synth :fm
  sleep 0.5
  play :E3
  sleep 0.5
  play :G3
  sleep 0.5
  play :B3
  sleep 0.5
  play :C4
  sleep 0.5
  play :B3
  sleep 0.5
  play :G3
  sleep 0.5
  play :E3
  sleep 0.5
end



with_fx :bitcrusher do
  
  
  1.times do
    use_synth :prophet
    play :C2, sustain: 1
    play :C3, sustain: 1
    use_synth :fm
  end
  
  3.times do
    rightHand
  end
  
  1.times do
    rightHand2
  end
  
  1.times do
    rightHand3
  end
end

