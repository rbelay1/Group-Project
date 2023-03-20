function message = revcol_trans(keyword,enciphered_text) %a function that takes in a keyword and encoded text and outputs the decoded message

%%Part 1: setting up the matrix 
alphabet = 'a':'z'; %calls the alphabet
cols = size(keyword,2); %sets number of columns equal to length of keyword
rows = ceil(size(enciphered_text,2)/size(keyword,2)); %must divide length of message by length of keyword to get appropriate number of rows
mat = reshape(enciphered_text,rows,cols); %writes encoded text out in a matrix of appropriate row and column size. This matrix is still in sorted order.

%%Part 2: create new matrix with columns in unscrambled order
tmp_mat = []; %creates an empty matrix
sort_key = sort(keyword); %sorts the letters of keyword in alphabetical order
for ii= 1:length(keyword) %loops through letters of keyword
    ltr = keyword(ii); %assigns the current letter of keyword to variable 'ltr'
    index = find(sort_key == ltr); %finds index of the respective letter in sorted keyword
    decipher = mat(:,index); %reads down column of respective index in matrix
    tmp_mat = [tmp_mat decipher]; %updates empty matrix to include new column. Columns of this matrix are in unsorted order.
end 

%%Part 3: go through new matrix and write out the message(deciphered text)
message = []; %creates empty vector
for jj = 1:rows %loops through the rows of tmp_mat
    encipher = tmp_mat(jj,:); %reads across rows of respective row index in tmp_mat
    message = [message encipher] %updates empty vector to include new row, creating the original message
end 