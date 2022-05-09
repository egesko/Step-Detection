
[y,Fs] = audioread('beep-02.wav');

netX = importTensorFlowNetwork('model_X');
netY = importTensorFlowNetwork('model_Y');
netZ = importTensorFlowNetwork('model_Z');

label = 0;
data_CollectedX = double.empty;
data_CollectedY = double.empty;
data_CollectedZ = double.empty;

while true
    
    pause(0.06)
    currentSample = m.Acceleration;
    data_CollectedX(end+1) = currentSample(1);
    data_CollectedY(end+1) = currentSample(2);
    data_CollectedZ(end+1) = currentSample(3);


    if(length(data_CollectedX) == 10)

        labelX = predict(netX,data_CollectedX);
        labelY = predict(netY,data_CollectedY);
        labelZ = predict(netY,data_CollectedZ);

        data_CollectedX = double.empty;
        data_CollectedY = double.empty;
        data_CollectedZ = double.empty;

        average = labelZ;

        disp(average)
        if(average>0.5)
            sound(y,Fs)
        end
    end
    


end