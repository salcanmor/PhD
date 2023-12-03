
fid = fopen('ground_truth.txt');
tline = fgetl(fid);
%while ischar(tline)
    %disp(tline)
 %   tline = fgetl(fid);
%end

n=0
while ~feof(fid)
    fgetl(fid);
    n = n+1;
end

fclose(fid);

