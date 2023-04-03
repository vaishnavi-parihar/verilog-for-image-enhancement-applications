% 24-bit BMP image RGB888 

b=imread('parrot_input.jpg'); 

k=1;
for i=768:-1:1   %height-- image is written from the last row to the first row
  for j=1:855    %width
    a(k)=b(i,j,1);
    a(k+1)=b(i,j,2);
    a(k+2)=b(i,j,3);
    k=k+3;
  end
end
fid = fopen('inputimage.hex', 'wt');
fprintf(fid, '%0.2x\n', a);
disp('Text file write done');disp(' ');
fclose(fid);
