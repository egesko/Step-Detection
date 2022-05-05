% KbDemo


Data = [0 0 0 0];
while true
    
    pause(0.06)
    currentSample = m.Acceleration;

    [keyIsDown, secs, keyCode, deltaSecs] = KbCheck();
  
    
    if keyCode(32) == 1
        currentSample(4) = 1;
    else
        currentSample(4) = 0;
    end
    
    Data = [Data;currentSample];
    disp(currentSample)
end

