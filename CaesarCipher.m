function Cipher=CaesarCipher(input,keyword) %function takes in input word and keyword 
% and outputs ciphered text%
alphabet='a':'z'; %vector of the alphabet%
new_alphabet=alphabet; %create a copy of the alphabet under the vector new alphabet%
Cipher=[]; %create an empty vector for the cipher%
      for ii=1:length(keyword) %create a vector ii with the length of the keyword%
          location1=strfind(new_alphabet,keyword(ii)); %find the indices of each letter 
          % of the keyword in the new alphabet%
          new_alphabet(location1)=[]; %delete the letters of the keyword 
          % from the new alphabet%           
      end 
new_alphabet=[keyword,new_alphabet]; %create a vector for the new alphabet%
      for jj=1:length(input) %create a vector jj of the length of the input word%
          location2=strfind(alphabet,input(jj)); %find the indices of each letter of the 
          % input word in the original alphabet%
          output=new_alphabet(location2); %create the output word from the new alphabet%
          Cipher=[Cipher,output]; %enciphered word%
      end
          disp(Cipher);
end