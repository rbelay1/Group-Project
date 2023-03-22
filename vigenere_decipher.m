%% Vigenere Cipher Deciphering %%
%% function plaintext = vigenere_decipher(ciphertext,keyword)
%% a:z block %%
rows = 'a':'z';
my_mat=[];
for ii = 0:numel(rows)-1
tmp = circshift(rows, -ii);
my_mat = [my_mat;tmp]
end

%% keyword repeated until length of ciphertext
ciphertext = 'lxfopvefrnhr'
keyword = 'lemon';
keyword = keyword(~isspace(keyword)); keyword = lower(keyword);
ciphertext = ciphertext(~isspace(ciphertext)); ciphertext = lower(ciphertext);
keyreps = floor(length(ciphertext)/length(keyword));
extendedkey = [repmat(keyword,1,keyreps) keyword(1:rem(length(ciphertext),length(keyword)))]

%% [key-row, position of ciphertext-letter in col X to pull column number] to decipher
plaintext=[];
for ii = 1:length(ciphertext)
    x = double((ciphertext)); numcipher = x-96;   
    y = double((extendedkey)); numkey = y-96;
     
% [c,r] = find(numcipher);
%% tmp = my_mat(numkey(ii), find(in row == numcipher))

    tmp = my_mat(numkey(ii), numkey(ii)==numcipher);%% row A, column L ??

% A = matrix
% M = A(:,3:end).';
% [C,R] = find(M);
% B = [A(R,1:2),C]


plaintext = [plaintext tmp];
end
disp(plaintext)

