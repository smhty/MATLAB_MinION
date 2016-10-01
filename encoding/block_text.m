fid = fopen('blocks_17.txt', 'wt');
for i = 1: 17
    fprintf(fid, '%s\r\n', ['Block_' num2str(i) ':']);
    fprintf(fid, '%s\r\n', blocks_17{i});
    fprintf(fid, '%s\r\n', '');
end
fclose(fid);