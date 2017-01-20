%% 更新车道占用情况以及新检查完的车辆
%% 单位周期内新车辆的数量假设为泊松分布
function [cmd,lanes,tollBooths,waitTime]=update(cmd,tollBooths,lanes,waitTime,flux)
    
    lengthC=length(cmd);
    lengthT=length(tollBooths);
    lengthL=length(lanes);
    lanes=zeros(1,lengthL);
    %%更新车道占用情况
    for i=1:lengthC
        if cmd(i)~=0
            lanes(cmd(i))=1;
        end
    end
    %单位时间出现的车
    number=random('Poisson',flux);
    for i=1:number
        index=chooseTollBoothArrive(tollBooths);
        tollBooths(index)=tollBooths(index)+1;
        disp([num2str(index) '号收费亭来车了']);
    end
    %增加等待时间
    for i=1:lengthT
        if tollBooths(i)~=0
            waitTime(i)=waitTime(i)+1;
        end
    end
    tollBooths
    lanes
end