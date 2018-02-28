clc;
clear all;
file='C:\Users\Paridhi Lohani\Desktop\lenses.data';
dataset=importdata(file);
d1=dataset(1:17,1:6); %70% for training
hard=0;
hardchar=[0 0 0 0 0 0 0 0 0]; %age 1 2 3 pres 1 2 ast 1 2 tpr 1 2
soft=0;
softchar=[0 0 0 0 0 0 0 0 0];
nolens=0;
nolenschar=[0 0 0 0 0 0 0 0 0];
for a=1:17
    if d1(a,6)==1
        hard=hard+1;
    elseif d1(a,6)==2
        soft=soft+1;
    else
        nolens=nolens+1;
    end
end
    phard=hard/17.0;
psoft=soft/17.0;
    pnolens=nolens/17.0;
for a=1:17  %age
    if d1(a,6)==1
        if d1(a,2)==1
            hardchar(1)=hardchar(1)+1;
        elseif d1(a,2)==2
            hardchar(2)=hardchar(2)+1;
        else
            hardchar(3)=hardchar(3)+1;
        end
    elseif d1(a,6)==2
        if d1(a,2)==1
            softchar(1)=softchar(1)+1;
        elseif d1(a,2)==2
            softchar(2)=softchar(2)+1;
        else
            softchar(3)=softchar(3)+1;
        end
    else
        if d1(a,2)==1
            nolenschar(1)=nolenschar(1)+1;
        elseif d1(a,2)==2
            nolenschar(2)=nolenschar(2)+1;
        else
            nolenschar(3)=nolenschar(3)+1;
        end
    end
end
for a=1:17 %pres
    if d1(a,6)==1
        if d1(a,3)==1
            hardchar(4)=hardchar(4)+1;
        elseif d1(a,3)==2
            hardchar(5)=hardchar(5)+1;
        end
    elseif d1(a,6)==2
        if d1(a,3)==1
            softchar(4)=softchar(4)+1;
        else
            softchar(5)=softchar(5)+1;
        end
    else
        if d1(a,3)==1
            nolenschar(4)=nolenschar(4)+1;
        else
            nolenschar(5)=nolenschar(5)+1;
        end
    end
end
for a=1:17 %ast
    if d1(a,6)==1
        if d1(a,4)==1
            hardchar(6)=hardchar(6)+1;
        else
            hardchar(7)=hardchar(7)+1;
        end
    elseif d1(a,6)==2
        if d1(a,4)==1
            softchar(6)=softchar(6)+1;
        else
            softchar(7)=softchar(7)+1;
        end
    else
        if d1(a,4)==1
            nolenschar(6)=nolenschar(6)+1;
        else
            nolenschar(7)=nolenschar(7)+1;
        end
    end
end
for a=1:17 %tpr
    if d1(a,6)==1
        if d1(a,5)==1
            hardchar(8)=hardchar(8)+1;
        else
            hardchar(9)=hardchar(9)+1;
        end
    elseif d1(a,6)==2
        if d1(a,5)==1
            softchar(8)=softchar(8)+1;
        else
            softchar(9)=softchar(9)+1;
        end
    else
        if d1(a,5)==1
            nolenschar(8)=nolenschar(8)+1;
        else
            nolenschar(9)=nolenschar(9)+1;
        end
    end
end
hardpro=hardchar/hard; %the probabilities
softpro=softchar/soft;
nolenspro=nolenschar/nolens;

correct=0;
no_rows=7;
for a=18:24
    hpro=phard;
    spro=psoft;
    npro=pnolens;
    for b=2:6
        if (b==2) && (dataset(a,b)==1)
            hpro=hpro*hardpro(1);
            spro=spro*softpro(1);
            npro=npro*nolenspro(1);
        elseif b==2 && dataset(a,b)==2
            hpro=hpro*hardpro(2);
            spro=spro*softpro(2);
            npro=npro*nolenspro(2);
         elseif (b==2) && (dataset(a,b)==3)
            hpro=hpro*hardpro(3);
            spro=spro*softpro(3);
            npro=npro*nolenspro(3);
         elseif (b==3) && (dataset(a,b)==1)
            hpro=hpro*hardpro(4);
            spro=spro*softpro(4);
            npro=npro*nolenspro(4);
        elseif b==3 && (dataset(a,b)==2)
            hpro=hpro*hardpro(5);
            spro=spro*softpro(5);
            npro=npro*nolenspro(5);
        elseif b==4 && dataset(a,b)==1
            hpro=hpro*hardpro(6);
            spro=spro*softpro(6);
            npro=npro*nolenspro(6);
        elseif b==4 && dataset(a,b)==2
            hpro=hpro*hardpro(7);
            spro=spro*softpro(7);
            npro=npro*nolenspro(7);
        elseif b==5 && dataset(a,b)==1
            hpro=hpro*hardpro(8);
            spro=spro*softpro(8);
            npro=npro*nolenspro(8);
        elseif b==5 && dataset(a,b)==1
            hpro=hpro*hardpro(9);
            spro=spro*softpro(9);
            npro=npro*nolenspro(9);
        end
    end
    c=0;
    if hpro>spro && hpro>npro
        c=1;
    elseif spro>hpro && spro>npro
        c=2;
    else
        c=3;
    end
    if c==dataset(a,6)
        correct=correct+1;
    end
end
accuracy=correct/no_rows;
display(accuracy);
