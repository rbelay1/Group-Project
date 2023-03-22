%% Vigenère cipher %%
function [ciphertext] = vigenere_cipher(plaintext,keyword);
%% a:z repeating 26 times but each time indices shift 1
rows = 'a':'z';
my_mat=[];
for ii = 0:numel(rows)-1
tmp = circshift(rows, -ii);
my_mat = [my_mat;tmp];
end
%% keyword repeated until length of plaintext
keyword = keyword(~isspace(keyword)); keyword = lower(keyword);
plaintext = plaintext(~isspace(plaintext)); plaintext = lower(plaintext);
keyreps = floor(length(plaintext)/length(keyword));
extendedkey = [repmat(keyword,1,keyreps) keyword(1:rem(length(plaintext),length(keyword)))];
%% [key-row, msg-col] to encipher
ciphertext=[];
for jj = 1:length(plaintext)
    x = double((plaintext)); numplain = x-96;   
    y = double((extendedkey)); numkey = y-96;
    tmp = my_mat(numplain(jj),numkey(jj));%% row A, column L
    ciphertext = [ciphertext tmp];
end

%% [key-row, position of ciphertext-letter in col X to pull column number] to decipher

end


