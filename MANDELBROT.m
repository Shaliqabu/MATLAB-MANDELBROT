im=complex(0.0,1.0);
z0=complex(0,0);
Max_Iteration=50;
xMin=-1.8;
xMax=0.9;
yMin=-1.0;
yMax=1.0;
axis([xMin xMax yMin yMax]);

dx=(xMax-xMin)/200;
dy=(yMax-yMin)/160;
fprintf('please wait...\n');
hold on
for x=xMin:dx:xMax
    for y=yMin:dy:yMax
c=x+im*y;
z=z0;
counter=0;
while(abs(z)<2.0 &counter <=Max_Iteration)
    if(counter<= Max_Iteration)
        z=z*z+c;
        counter=counter+1;
    end
end
if (counter>=Max_Iteration)
    plot(x,y,'b.')
end
    end
end
