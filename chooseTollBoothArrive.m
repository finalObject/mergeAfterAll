%% ���շ�վͣ�˺ܶ೵֮�������ĳ������շ�վ��ѡ��
function minx=chooseTollBoothArrive(tollBooths)
    lengthT=length(tollBooths);
    miny=99999;
    minx=0;
    for i=1:lengthT
        if(tollBooths(i)<miny)
            minx=i;
            miny=tollBooths(i);
        end
    end
end