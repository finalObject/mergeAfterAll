% ������շ�ͤ�еĳ���������Լ�����ռ������������������ָ��
% ������ڳ�����ָ��������ȴ�������x�ų���,�Լ�����ָ����lanes�仯
% �������˵����������
function [cmd,tollBooths,lanes,waitTime]=getCmd(tollBooths,lanes,waitTime)
    lengthT=length(tollBooths);
    lengthL=length(lanes);
    cmd=zeros(1,lengthT);

    %ͳ��һ�¿����뿪�ĳ�������
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
        disp('��;û����');
        return ;
    end
       index=chooseTollBoothLeave(waitTime);
        cmd(index)=lanesIndex;
        lanes(lanesIndex)=1;
        tollBooths(index)=tollBooths(index)-1;
        waitTime(index)=0;
        disp([num2str(index) '��ͤ�ĳ���' num2str(lanesIndex) '���߿�']);
    end
    
    tollBooths
    lanes
end