function enciphered_text = col_trans(keyword,message) %a function col_trans that takes in a keyword and message and outputs an enciphered text

alphabet = 'a':'z'; %calls the alphabet 
cols =  size(keyword,2); %sets the number of columns equal to the length of the keyword
rows = ceil(size(message,2)/size(keyword,2)); %sets the number of rows equal to the length of the message divided by the length of the keyword
struc_mat = reshape(message(rows,cols)) %creates a matrix of the appropriate row and column size depending on the keyword and message 







end

