fileID = fopen('lineas_codigo.txt','w');

fid = fopen('ground_truth.txt');
%tline = fgetl(fid);

fid2 = fopen('coordenadas_tracker.txt');
%tline2 = fgetl(fid);


for k = 1:95
       tline = fgetl(fid);
    tline2 = fgetl(fid2);
    fprintf(fileID, "Detection(""./images/walk1/output_image-%d.jpg"", %s, %s ),\n", k, tline, tline2);
 %   disp(tline)


end
%Detection("./images/200_frames/output_image-1.jpg",
   % Detection("./images/image_0002.jpg", [39, 63, 203, 112], [54, 66, 198, 114]),

