function sim_change(input,start,end_c,folder)

if(folder==1)
    
   dir='envisat';
   show='Envisat';
else
   dir='jason';
   show='Jason';
end 
if(~isempty(input))
  filter=create_filter(input(1),input(2),input(3),input(4));
else
    filter=1;
end
load_all
global X Y Z
tit=title('');
set(tit,'color',[0 0 1],'Linewidth',5);
load(['simulation\' dir '\m' num2str(start) '\m' num2str(start) '-' num2str(start+1) '.mat']);

for i=start+1:end_c
    
    temp_result(1:181,1:181)=Z(1:181,181:361);
    temp_result(1:181,182:361)=Z(1:181,1:180);
    Z=temp_result.*filter.*result_mask;
    b=surf(X-180,(Y),(Z));
    shading interp;
    lighting phong;
    colormap;
    tit=title([show '-Change from Cycle ' num2str(start) ' to '  num2str(i)]);
    set(tit, 'FontSize',14);
    set(tit,'color',[1 0 0]);
    pause(0.0005);
    
    
    if(i<end_c)
        delete(b);        
    end
    load(['simulation\' dir '\m' num2str(start) '\m' num2str(start) '-' num2str(i) '.mat']);
    
end

