function enciphered_text = col_trans(keyword,message) %a function col_trans that takes in a keyword and message and outputs an enciphered text

alphabet = 'a':'z'; %calls the alphabet 
cols =  size(keyword,2); %sets the number of columns equal to the length of the keyword
rows = ceil(size(message,2)/size(keyword,2)); %sets the number of rows equal to the length of the message divided by the length of the keyword
num_empty = ceil((rows*cols)-length(message));% subtracts the message length from the size of the matrix to get the number of empty cells 
empty = '_'; 
fill_empty = repmat(empty,1,num_empty);
message = horzcat(message, fill_empty); 
mat = reshape(message,rows,cols); %creates a matrix of the appropriate row and column size depending on the keyword and message
mat = mat'; %the message is originally written vertically instead of horizontally so need to transpose it 

%%Part 2: sort the keyword and read down the columns in this order

enciphered_text = [];
sort_key = sort(keyword);
for ii = 1:length(sort_key)
    ltr = sort_key(ii);
    index = find(keyword == ltr);
    encipher = mat(:,index);
    encipher = encipher';
    enciphered_text = [enciphered_text encipher];
end
end
