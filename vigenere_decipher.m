%% Vigenere Cipher Deciphering %%
function plaintext = vigenere_decipher(ciphertext,keyword)
%% a:z block %%
rows = 'a':'z';
my_mat=[];
for ii = 0:numel(rows)-1
tmp = circshift(rows, -ii);
my_mat = [my_mat;tmp];
end

%% keyword repeated until length of ciphertext
keyword = keyword(~isspace(keyword)); keyword = lower(keyword);
ciphertext = ciphertext(~isspace(ciphertext)); ciphertext = lower(ciphertext);
keyreps = floor(length(ciphertext)/length(keyword));
extendedkey = [repmat(keyword,1,keyreps) keyword(1:rem(length(ciphertext),length(keyword)))];

%% [key-row, position of ciphertext-letter in col X to pull column number] to decipher
plaintext=[];
for ii = 1:length(ciphertext)
    y = double(extendedkey(ii)); numkey = y-96;
    col_num = find(my_mat(numkey,:)==ciphertext(ii));
    letter = char(col_num + 96);
    plaintext = [plaintext letter];
end
disp(plaintext)

