%% 根据等待时间让指定位置的收费亭的车离开
function maxx=chooseTollBoothLeave(waitTime)
    lengthW=length(waitTime);
    maxy=0;
    maxx=0;
    for i=1:lengthW
        if(waitTime(i)>maxy)
            maxx=i;
            maxy=waitTime(i);
        end
    end
end