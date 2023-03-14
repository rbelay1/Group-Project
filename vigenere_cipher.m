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
keyword = 'lemon';
plaintext = 'attack at dawn';
keyreps = floor(length(plaintext)/length(keyword));
extendedkey = [repmat(keyword,1,keyreps) keyword(1:rem(length(plaintext),length(keyword)))];
%% [key-row, msg-col] to encipher
x = char(extendedkey);
y = char(plaintext);
% for jj = 1:numel(x)
% ciphertext = my_mat(x,y);
% end
disp(ciphertext);
%% [key-row, ciphertext-letter in col X] to decipher