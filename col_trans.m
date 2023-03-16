function enciphered_text = col_trans(keyword,message) %a function col_trans that takes in a keyword and message and outputs an enciphered text

%%Part 1: setting up the matrix

alphabet = 'a':'z'; %calls the alphabet 
cols =  size(keyword,2); %sets number of columns equal to length of keyword
rows = ceil(size(message,2)/size(keyword,2)); %must divide length of message by length of keyword to get appropriate number of rows
num_empty = ceil((rows*cols)-length(message)); %subtracts message length from size of matrix to get the number of empty cells 
empty = '_'; %this character will be used to fill in empty cells so dimensions are matched and reshape() can be used
fill_empty = repmat(empty,1,num_empty); %fills empty cells by repeating filler along rows for the number of empty cells
message = horzcat(message, fill_empty); %changes the size of matrix by concatenating filler to end (now dimensions match so can reshape message into matrix)
mat = reshape(message,cols,rows); %writes message out in a matrix of appropriate row and column size
mat = mat'; %message is originally written vertically instead of horizontally so need to transpose it 

%%Part 2: sort the keyword and read down the columns in appropriate order

enciphered_text = []; %creates empty vector
sort_key = sort(keyword); %sorts keyword in alphabetical order
for ii = 1:length(sort_key) %loops through the sorted keyword
    ltr = sort_key(ii); %assigns the current letter of keyword to variable 'ltr'
    index = find(keyword == ltr); %finds index of the respective letter in unsorted keyword
    encipher = mat(:,index); %reads down column of respective index in matrix
    encipher = encipher'; %transposes columnso it's read horizontally
    enciphered_text = [enciphered_text encipher]; %updates empty vector to include new column
end
end

