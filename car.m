clc;
clear all;
file='C:\Users\Paridhi Lohani\Desktop\car.data';
dataset=importdata(file);
d1=dataset(1:1210,1:7);
unacc=0;
unaccchar=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
acc=0;
accchar=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
good=0;
goodchar=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
vgood=0;
vgoodchar=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
for a=1:1210
    if d1(a,7)==1
        unacc=unacc+1;
    elseif d1(a,7)==2
        acc=acc+1;
    elseif d1(a,7)==3
        good=good+1;
    elseif d1(a,7)==4
        vgood=vgood+1;
    end
end
punacc=unacc/1210.0;
pacc=acc/1210.0;
pgood=good/1210.0;
pvgood=vgood/1210.0;
for a=1:1210 
    if d1(a,7)==1
        if d1(a,2)==1
            unaccchar(1)=unaccchar(1)+1;
        elseif d1(a,2)==2
            unaccchar(2)=unaccchar(2)+1;
        elseif d1(a,2)==3
            unaccchar(3)=unaccchar(3)+1;
        else
            unaccchar(4)=unaccchar(4)+1;
        end
    elseif d1(a,7)==1
        if d1(a,2)==1
            accchar(1)=accchar(1)+1;
        elseif d1(a,2)==2
            accchar(2)=accchar(2)+1;
        elseif d1(a,2)==3
            accchar(3)=accchar(3)+1;
        else
            accchar(4)=accchar(4)+1;
        end
     elseif d1(a,7)==1
        if d1(a,2)==1
            goodchar(1)=goodchar(1)+1;
        elseif d1(a,2)==2
            goodchar(2)=goodchar(2)+1;
        elseif d1(a,2)==3
            goodchar(3)=goodchar(3)+1;
        else
            goodchar(4)=goodchar(4)+1;
        end
    elseif d1(a,7)==1
        if d1(a,2)==1
            vgoodchar(1)=vgoodchar(1)+1;
        elseif d1(a,2)==2
            vgoodchar(2)=vgoodchar(2)+1;
        elseif d1(a,2)==3
            vgoodchar(3)=vgoodchar(3)+1;
        else
            vgoodchar(4)=vgoodchar(4)+1;
        end
    end
end
for a=1:1210 
    if d1(a,7)==1
        if d1(a,3)==1
            unaccchar(5)=unaccchar(5)+1;
        elseif d1(a,3)==2
            unaccchar(6)=unaccchar(6)+1;
        elseif d1(a,3)==3
            unaccchar(7)=unaccchar(7)+1;
        else
            unaccchar(8)=unaccchar(8)+1;
        end
    elseif d1(a,7)==2
        if d1(a,3)==1
            accchar(5)=accchar(5)+1;
        elseif d1(a,3)==2
            accchar(6)=accchar(6)+1;
        elseif d1(a,3)==3
            accchar(7)=accchar(7)+1;
        else
            accchar(8)=accchar(8)+1;
        end
     elseif d1(a,7)==3
        if d1(a,3)==1
            goodchar(5)=goodchar(5)+1;
        elseif d1(a,3)==2
            goodchar(6)=goodchar(6)+1;
        elseif d1(a,3)==3
            goodchar(7)=goodchar(7)+1;
        else
            goodchar(8)=goodchar(8)+1;
        end
    elseif d1(a,7)==4
        if d1(a,3)==1
            vgoodchar(5)=vgoodchar(5)+1;
        elseif d1(a,3)==2
            vgoodchar(6)=vgoodchar(6)+1;
        elseif d1(a,3)==3
            vgoodchar(7)=vgoodchar(7)+1;
        else
            vgoodchar(8)=vgoodchar(8)+1;
        end
    end
end
for a=1:1210 
    if d1(a,7)==1
        if d1(a,4)==2
            unaccchar(9)=unaccchar(9)+1;
        elseif d1(a,4)==3
            unaccchar(10)=unaccchar(10)+1;
        elseif d1(a,4)==4
            unaccchar(11)=unaccchar(11)+1;
        else
            unaccchar(12)=unaccchar(12)+1;
        end
    elseif d1(a,7)==2
        if d1(a,4)==2
            accchar(9)=accchar(9)+1;
        elseif d1(a,4)==3
            accchar(10)=accchar(10)+1;
        elseif d1(a,4)==4
            accchar(11)=accchar(11)+1;
        else
            accchar(12)=accchar(12)+1;
        end
     elseif d1(a,7)==3
        if d1(a,4)==2
            goodchar(9)=goodchar(9)+1;
        elseif d1(a,4)==3
            goodchar(10)=goodchar(10)+1;
        elseif d1(a,4)==4
            goodchar(11)=goodchar(11)+1;
        else
            goodchar(12)=goodchar(12)+1;
        end
    elseif d1(a,7)==4
        if d1(a,2)==1
            vgoodchar(5)=vgoodchar(5)+1;
        elseif d1(a,2)==2
            vgoodchar(6)=vgoodchar(6)+1;
        elseif d1(a,2)==3
            vgoodchar(7)=vgoodchar(7)+1;
        else
            vgoodchar(8)=vgoodchar(8)+1;
        end
    end
end
for a=1:1210 
    if d1(a,7)==1
        if d1(a,4)==2
            unaccchar(13)=unaccchar(13)+1;
        elseif d1(a,4)==4
            unaccchar(14)=unaccchar(14)+1;
        elseif d1(a,4)==6
            unaccchar(15)=unaccchar(15)+1;
        end
    elseif d1(a,7)==2
        if d1(a,4)==2
            accchar(13)=accchar(13)+1;
        elseif d1(a,4)==4
            accchar(14)=accchar(14)+1;
        elseif d1(a,4)==6
            accchar(15)=accchar(15)+1;
        end
    elseif d1(a,7)==3
        if d1(a,4)==2
            goodchar(13)=goodchar(13)+1;
        elseif d1(a,4)==4
            goodchar(14)=goodchar(14)+1;
        elseif d1(a,4)==6
            vgoodchar(15)=vgoodcchar(15)+1;
        end
    elseif d1(a,7)==4
        if d1(a,4)==2
            accchar(13)=accchar(13)+1;
        elseif d1(a,4)==4
            accchar(14)=accchar(14)+1;
        elseif d1(a,4)==6
            accchar(15)=accchar(15)+1;
        end
    end
end
for a=1:1210 
    if d1(a,7)==1
        if d1(a,5)==1
            unaccchar(16)=unaccchar(16)+1;
        elseif d1(a,5)==2
            unaccchar(17)=unaccchar(17)+1;
        elseif d1(a,5)==3
            unaccchar(18)=unaccchar(18)+1;
        end
    elseif d1(a,7)==2
        if d1(a,5)==1
            accchar(16)=accchar(16)+1;
        elseif d1(a,2)==2
            accchar(17)=accchar(17)+1;
        elseif d1(a,2)==3
            accchar(18)=accchar(18)+1;
        end
     elseif d1(a,7)==3
        if d1(a,5)==1
            goodchar(16)=goodchar(16)+1;
        elseif d1(a,5)==2
            goodchar(17)=goodchar(17)+1;
        elseif d1(a,5)==3
            goodchar(18)=goodchar(18)+1;
        end
    elseif d1(a,7)==4
        if d1(a,5)==1
            vgoodchar(16)=vgoodchar(16)+1;
        elseif d1(a,5)==2
            vgoodchar(17)=vgoodchar(17)+1;
        elseif d1(a,5)==3
            vgoodchar(18)=vgoodchar(18)+1;
        end
    end
end
for a=1:1210 
    if d1(a,7)==1
        if d1(a,6)==1
            unaccchar(19)=unaccchar(19)+1;
        elseif d1(a,6)==2
            unaccchar(20)=unaccchar(20)+1;
        elseif d1(a,6)==3
            unaccchar(21)=unaccchar(21)+1;
        end
    elseif d1(a,7)==2
        if d1(a,6)==1
            accchar(19)=accchar(19)+1;
        elseif d1(a,6)==2
            accchar(20)=accchar(20)+1;
        elseif d1(a,6)==3
            accchar(21)=accchar(21)+1;
        end
     elseif d1(a,7)==3
        if d1(a,6)==1
            goodchar(19)=goodchar(19)+1;
        elseif d1(a,6)==2
            goodchar(20)=goodchar(20)+1;
        elseif d1(a,6)==3
            goodchar(21)=goodchar(21)+1;
        end
    elseif d1(a,7)==4
        if d1(a,6)==1
            vgoodchar(19)=vgoodchar(19)+1;
        elseif d1(a,6)==2
            vgoodchar(20)=vgoodchar(20)+1;
        elseif d1(a,6)==3
            vgoodchar(21)=vgoodchar(21)+1;
        end
    end
end
unaccpro=unaccchar/unacc;
accpro=accchar/acc;
goodpro=goodchar/good;
vgoodpro=vgoodchar/vgood;
correct=0;
no_rows=518;
for a=1211:1728
    upro=punacc;
    apro=pacc;
    gpro=pgood;
    vpro=pvgood;
    for b
    
    


        