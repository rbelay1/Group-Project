function deciphered_text = revcol_trans(keyword,message)

%%Part 1: Settign up the matrix 
alphabet = 'a':'z'
cols = size(keyword,2)
rows = ceil(size(message,2)/size(keyword,2))
mat = reshape(message,rows,cols)

%%Part 2: 

end