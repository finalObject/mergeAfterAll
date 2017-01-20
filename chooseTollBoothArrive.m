%% 当收费站停了很多车之后，新来的车对于收费站的选择
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