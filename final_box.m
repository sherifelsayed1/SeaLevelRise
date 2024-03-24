function final_box(long_min,long_max,lat_min,lat_max,start,end_c,folder)
load ('simulation/result_mask'); 
global X Y Z new_ocean result_mask
if(folder==1)
    
   dir='envisat';
   show='Envisat';
else
   dir='jason';
   show='Jason';
end 

load(['simulation\' dir '\m' num2str(start) '\m' num2str(start) '-' num2str(end_c) ]);
temp_result(1:181,1:181)=Z(1:181,181:361);
temp_result(1:181,182:361)=Z(1:181,1:180);
Z=temp_result;
Z=Z.*result_mask;

BackgroundImageFilePath = 'small_map.jpg';
BackgroundImage = imread(BackgroundImageFilePath);
imagesc([-180 180], [-90 90], flipdim(BackgroundImage,1));
set(gca,'ydir','normal');
h=colorbar;
set(get(h,'ylabel'),'string','Meters');
view(2);
caxis([-0.03 0.03]);
xlim([-180 180]);
ylim([-81.5 81.5]);
xlabel('Longtiude [°]');
ylabel('Lattitude[°]');
tit=title('');
set(tit,'color',[0 0 1],'Linewidth',5);
hold on;



long_min=floor(long_min);
long_max=floor(long_max);
lat_min=floor(lat_min);
lat_max=floor(lat_max);

i_min=lat_min+91;
i_max=lat_max+91;
j_min=long_min+181;
j_max=long_max+181;


result_mat=Z(i_min:i_max,j_min:j_max);

[~,d]=size(result_mat);
Z_plot=new_ocean;
count=i_min;
count_2=1;
forplot=X-180;
while(true)

   
    Z_plot(i_min:count,j_min:j_max)=result_mat(1:count_2,1:d);
    b=surf(forplot,(Y),(Z_plot));
    shading interp;
    caxis([-0.012 0.012]);
    lighting phong;
    colormap;
    tit=title([show '-Change from Cycle ' num2str(start) ' to '  num2str(end_c)]);
    set(tit, 'FontSize',14);
    set(tit,'color',[1 0 0]);
    
    pause(0.0000006);
    if(count+10>i_max)
        break;  
    end
    count=count+10;
    count_2=count_2+10;
    delete(b);
    
end
