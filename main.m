% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年1月20日 15:17:00
clear;clc;
% 输入已经检查完毕的车辆所在收费亭，车道占用情况（某量车已经出发开往该车道，并没有超过安全距离）
% 输出对于车辆的指令，包括：等待，开往x号车道
% 车流量，单位时间出现车的平均数，这里的单位时间，是车辆开出收费亭之后驶出安全距离的时间，假设所有车都一样
% 这里的周期也就是车道可用情况的刷新时间
flux=1.5;
% etc亭数量，etc车道数量,其他收费亭数量，其他车道数量
numOfEtcB=1;numOfEtcL=1;
numOfTollbooths=8-numOfEtcB;
numOfLanes=4-numOfEtcL;
% 收费亭中车辆数量，有待输入
tollBooths=zeros(1,numOfTollbooths);
% 收费亭中车辆的等待时间
waitTime=zeros(1,numOfTollbooths);
%%输入，不规范
tollBooths=[1,1,0,1,0,0,1];
waitTime=[1,1,0,1,0,0,1];
% 对于收费亭中车辆的指令，无车或者等待为0，开往x车道为x
cmd=zeros(1,numOfTollbooths);
% 车道占用情况，1代表被占用，0代表未被占用
lanes=zeros(1,numOfLanes);
lanes=[0,1,0];

% 显示一下输入之前的情况
tollBooths
lanes

while 1
    %%获得命令，更新数据
    if sum(tollBooths)>0
        [cmd,tollBooths,lanes,waitTime]=getCmd(tollBooths,lanes,waitTime);
    else
        disp('现在没车啊');
    end
    %%周期末，更新数据
    [cmd,lanes,tollBooths,waitTime]=update(cmd,tollBooths,lanes,waitTime,flux);
    a=input('继续：');
end



