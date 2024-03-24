function filter=create_filter(long_min,long_max,lat_min,lat_max)

long_min=floor(long_min);
long_max=floor(long_max);
lat_min=floor(lat_min);
lat_max=floor(lat_max);

i_min=lat_min+91;
i_max=lat_max+91;
j_min=long_min+181;
j_max=long_max+181;
filter=zeros(181,361);
filter(i_min:i_max,j_min:j_max)=1;