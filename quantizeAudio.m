function yQuant = quantizeAudio(y, bitDepth)

%definining the ranges
lowRange = 2^(bitDepth-1);
highRange = lowRange-1;

%clipping
for i = 1:length(y)
    if y(i) > 1 
        y(i) = 1;
    elseif y(i) < -1
        y(i) = -1;
    else
        y(i) = y(i);
    end
end

%quantizing
for i=1:length(y)
    if y(i) > 0
        y(i) = round(y(i)*highRange)/highRange;
    elseif y(i) < 0
        y(i) = round(y(i)*lowRange)/lowRange;
    end
end
yQuant=y;

end

