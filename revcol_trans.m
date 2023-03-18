function message = revcol_trans(keyword,enciphered_text)

%%Part 1: setting up the matrix 
alphabet = 'a':'z';
cols = size(keyword,2);
rows = ceil(size(enciphered_text,2)/size(keyword,2));
mat = reshape(enciphered_text,rows,cols);

%%Part 2: create new matrix with columns in unscrambled order
tmp_mat = [];
sort_key = sort(keyword);
for ii= 1:length(keyword)
    ltr = keyword(ii);
    index = find(sort_key == ltr);
    decipher = mat(:,index);
    tmp_mat = [tmp_mat, decipher];
end 

%%Part 3: go through new matrix and write out the message(deciphered text)
message = [];
for jj = 1:rows
    encipher = tmp_mat(jj,:);
    message = [message encipher]
end 