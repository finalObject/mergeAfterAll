% ������շ�ͤ�еĳ���������Լ�����ռ������������������ָ��
% ������ڳ�����ָ��������ȴ�������x�ų���,�Լ�����ָ����lanes�仯
% �������˵����������
function [cmd,lanes]=getAns(tollBooths,lanes)
    lengthT=length(tollBooths);
    lengthL=length(lanes);
    cmd=zeros(1,lengthT);
    %%����߿�ʼɨ�裬ͬһʱ�̣���ߵĳ������ȿ�����Ϊ�ӷֲ�ͼ��������߳��복����ԽϽ��������ڷ�ֹ׷β֮��
    %%��ʵӰ�첻��ͬһʱ��ͬʱ����շѵ�����ǳ���
    for i=1:lengthT
        if tollBooths(i)==0
            continue;
        end
        
        for j=1:lengthL
            if lanes(i)==0
                cmd(i)=1;
                lanes(i)=1;
            end
        end
    end
end