% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��1��20�� 15:17:00
clear;clc;
% �����Ѿ������ϵĳ��������շ�ͤ������ռ�������ĳ�����Ѿ����������ó�������û�г�����ȫ���룩
% ������ڳ�����ָ��������ȴ�������x�ų���
% etcͤ������etc��������,�����շ�ͤ������������������
numOfEtcB=1;numOfEtcL=1;
numOfTollbooths=8-numOfEtcB;
numOfLanes=4-numOfEtcL;
% �շ�ͤ�����޳������д�����
tollBooths=zeros(1,numOfTollbooths);
%%���룬���淶
tollBooths=[1,1,0,1,0,0,1];
% �����շ�ͤ�г�����ָ��޳����ߵȴ�Ϊ0������x����Ϊx
cmd=zeros(1,numOfTollbooths);
% ����ռ�������1����ռ�ã�0����δ��ռ��
lanes=zeros(1,numOfLanes);
lanes=[1,1,0];
tollBooths
lanes
[cmd,lanes,tollBooths]=getAns(tollBooths,lanes);
cmd
tollBooths
lanes




