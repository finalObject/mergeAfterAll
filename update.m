%% ���³���ռ������Լ��¼����ĳ���
%% ��λ�������³�������������Ϊ���ɷֲ�
function [cmd,lanes,tollBooths,waitTime]=update(cmd,tollBooths,lanes,waitTime,flux)
    
    lengthC=length(cmd);
    lengthT=length(tollBooths);
    lengthL=length(lanes);
    lanes=zeros(1,lengthL);
    %%���³���ռ�����
    for i=1:lengthC
        if cmd(i)~=0
            lanes(cmd(i))=1;
        end
    end
    %��λʱ����ֵĳ�
    number=random('Poisson',flux);
    for i=1:number
        index=chooseTollBoothArrive(tollBooths);
        tollBooths(index)=tollBooths(index)+1;
        disp([num2str(index) '���շ�ͤ������']);
    end
    %���ӵȴ�ʱ��
    for i=1:lengthT
        if tollBooths(i)~=0
            waitTime(i)=waitTime(i)+1;
        end
    end
    tollBooths
    lanes
end