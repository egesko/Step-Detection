
label = 0;
data_Collected = double.empty;
while true
    
    pause(0.06)
    currentSample = m.Acceleration;
    data_Collected(end+1) = currentSample(3);

    if(length(data_Collected) == 6)
        label = classify(net,data_Collected);
        data_Collected = double.empty;
    end

    disp(label)

end