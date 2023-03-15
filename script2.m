
% flip a coin instead of checking the weather to decide what to do
is_head = randn(1)>0; % technical point: sampling a random value from a                         
                      % normal distribution centered at 0 gives me a 50%
                      % probability to get a positive number and 50% to
                      % get a negative value which I can use as the
                      % equivalent of a coin flip...
my_msg = my_action(is_head);
disp(my_msg);      

