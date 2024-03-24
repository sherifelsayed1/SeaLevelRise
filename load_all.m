% load ('simulation/m33-34.mat'); 
load ('simulation/result_mask'); 
load ('simulation/result_mask_flip'); 

load('Mat_files/X.mat');
load('Mat_files/Y.mat');



BackgroundImageFilePath = 'small_map.jpg';
BackgroundImage = imread(BackgroundImageFilePath);
imagesc([-180 180], [-90 90], flipdim(BackgroundImage,1));
set(gca,'ydir','normal');


h=colorbar;
set(get(h,'ylabel'),'string','Meters');
view(2);
caxis([-0.012 0.012]);
xlim([-180 180]);
ylim([-81.5 81.5]);
xlabel('Longtiude [°]');
ylabel('Lattitude[°]');

hold on;

