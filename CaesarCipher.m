function [Cipher]=CaesarCipher(keyword) %function CaesarCipher will take the keyword 
% and output the enciphered text%
alphabet=('a':'z'); %vector of the letters of the alphabet%
keyword='keyword'; %the specific keyword%
new_alphabet=[]; %an empty vector for the new alphabet for the cipher&
for ii=1:length(alphabet) %vector of the length of the alphabet%
    new_alphabet=[keyword,new_alphabet]; %vector of the new alphabet 
    % that the cipher will use%
    location=strfind(alphabet,keyword); %finds the indices of the keyword in the alphabet%
    alphabet(location)=[]; %deletes these indices from the original alphabet%
end
Cipher=new_alphabet(keyword); %outputs the enciphered word from the new alphabet%
disp(Cipher); %displays the enciphered word%
end


