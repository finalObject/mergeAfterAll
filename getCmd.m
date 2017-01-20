% 输入各收费亭中的车辆情况，以及车道占用情况，输出给车辆的指令
% 输出对于车辆的指令，包括：等待，开往x号车道,以及给出指令后的lanes变化
% 具体参数说明看主函数
function [cmd,tollBooths,lanes,waitTime]=getCmd(tollBooths,lanes,waitTime)
    lengthT=length(tollBooths);
    lengthL=length(lanes);
    cmd=zeros(1,lengthT);

    %统计一下可以离开的车辆数量
    number=0;
    for i=1:lengthL
        if lanes(i)==0
            number=number+1;
        end
    end
    for i=1:number
        lanesIndex=0;
        for j=1:lengthL
           if lanes(j)==0
               lanesIndex=j;
               break;
           end 
        end
     if sum(tollBooths)==0
        disp('中途没车了');
        return ;
    end
       index=chooseTollBoothLeave(waitTime);
        cmd(index)=lanesIndex;
        lanes(lanesIndex)=1;
        tollBooths(index)=tollBooths(index)-1;
        waitTime(index)=0;
        disp([num2str(index) '号亭的车往' num2str(lanesIndex) '号线开']);
    end
    
    tollBooths
    lanes
end