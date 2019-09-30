clc;
clear all

%Matrix Inversion

A=[5 -2 4; -2 1 1; 4 1 0];
At=A;
M=A;
Adj=A;
DA=det(A);

for i=1:3
    for j=1:3
        At=A;
        At(i,:)=[];
        At(:,j)=[];
        M(i,j)=det(At);
        Adj(j,i)=((-1)^(i+j))*M(i,j);
    end
    
end

Ainv=Adj/DA;
display(Ainv);

