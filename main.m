% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��1��20�� 15:17:00
clear;clc;
% �����Ѿ������ϵĳ��������շ�ͤ������ռ�������ĳ�����Ѿ����������ó�������û�г�����ȫ���룩
% ������ڳ�����ָ��������ȴ�������x�ų���
% ����������λʱ����ֳ���ƽ����������ĵ�λʱ�䣬�ǳ��������շ�֮ͤ��ʻ����ȫ�����ʱ�䣬�������г���һ��
% ���������Ҳ���ǳ������������ˢ��ʱ��
flux=1.5;
% etcͤ������etc��������,�����շ�ͤ������������������
numOfEtcB=1;numOfEtcL=1;
numOfTollbooths=8-numOfEtcB;
numOfLanes=4-numOfEtcL;
% �շ�ͤ�г����������д�����
tollBooths=zeros(1,numOfTollbooths);
% �շ�ͤ�г����ĵȴ�ʱ��
waitTime=zeros(1,numOfTollbooths);
%%���룬���淶
tollBooths=[1,1,0,1,0,0,1];
waitTime=[1,1,0,1,0,0,1];
% �����շ�ͤ�г�����ָ��޳����ߵȴ�Ϊ0������x����Ϊx
cmd=zeros(1,numOfTollbooths);
% ����ռ�������1����ռ�ã�0����δ��ռ��
lanes=zeros(1,numOfLanes);
lanes=[0,1,0];

% ��ʾһ������֮ǰ�����
tollBooths
lanes

while 1
    %%��������������
    if sum(tollBooths)>0
        [cmd,tollBooths,lanes,waitTime]=getCmd(tollBooths,lanes,waitTime);
    else
        disp('����û����');
    end
    %%����ĩ����������
    [cmd,lanes,tollBooths,waitTime]=update(cmd,tollBooths,lanes,waitTime,flux);
    a=input('������');
end



