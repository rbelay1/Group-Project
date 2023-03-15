%% Vigenère cipher %%
% function [ciphertext] = vigenere_cipher('plaintext','keyword');
%% a:z repeating 26 times but each time indices shift 1
rows = (['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']);
shift = 1;
my_mat=[];
for ii = 0:numel(rows)-1
tmp = circshift(rows, -ii);
my_mat = [my_mat;tmp];
end
%% keyword repeated until length of plaintext
keyword = 'lemon'; keyword = keyword(find(~isspace(keyword)));
plaintext = 'attack at dawn'; plaintext = plaintext(find(~isspace(plaintext)));
keyreps = floor(length(plaintext)/length(keyword));
extendedkey = [repmat(keyword,1,keyreps) keyword(1:rem(length(plaintext),length(keyword)))];
%% [key-row, msg-col] to encipher
ciphertext='';
for jj = 1:length(plaintext)
    x = double((plaintext)); numplain = x-96;   
    y = double((extendedkey)); numkey = y-96;
    ciphertext = my_mat(numplain,numkey);%% row A, column L
end
disp(ciphertext)
%% [key-row, ciphertext-letter in col X] to decipher





