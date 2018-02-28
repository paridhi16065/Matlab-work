%paridhi lohani 2016065 Sec B
%maths assignment 3
dataset=importdata('C:\Users\Paridhi Lohani\Desktop\housing.txt');
y=dataset(1:354,14);
A=dataset(1:354,1:13);
k=3;
xout=OMP(y,A,k);
temp=dataset(355:506,1:13);
yout=temp*xout;
f1=dataset(355:506,14);
RMSE=sqrt(mean((f1-yout).^2));
display(RMSE);