path_folder = '.';

myFiles = dir(fullfile(path_folder,'*.xml')); %gets all .xml files in struct

fileID = fopen('ground_truth.txt','w');

for k = 1:length(myFiles)
   % pause(1.0);

    FileName = myFiles(k).name;

    str1='output_image-'
   % str2=k
    str3='.xml'
    name     = [str1, num2str(k,'%d'), str3]
xmin(k)=readstruct(name,"StructSelector","/annotation/object/bndbox/xmin")
ymin(k)=readstruct(name,"StructSelector","/annotation/object/bndbox/ymin")
xmax(k)=readstruct(name,"StructSelector","/annotation/object/bndbox/xmax")
ymax(k)=readstruct(name,"StructSelector","/annotation/object/bndbox/ymax")

end

for k = 1:length(myFiles)
fprintf(fileID, "[%d, %d, %d, %d] \n", getfield(xmin(k),"Text"), getfield(ymin(k),"Text"), getfield(xmax(k),"Text"), getfield(ymax(k),"Text"))
end