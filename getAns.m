% ������շ�ͤ�еĳ���������Լ�����ռ������������������ָ��
% ������ڳ�����ָ��������ȴ�������x�ų���,�Լ�����ָ����lanes�仯
% �������˵����������
function [cmd,lanes,tollBooths]=getAns(tollBooths,lanes)
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
            if lanes(j)==0
                tollBooths(i)=0;
                cmd(i)=j;
                lanes(j)=1;
                break;
            end
        end
    end
end