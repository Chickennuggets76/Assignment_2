% Author Name: Justice Adels
% Email: adelsj89@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: October 18, 2024
%_____________________________________________________________________

%getting message
message = input('What is your message?');

%initializing assumed value to a condition
cnd = true;

while cnd == true
    %getting shift value
    shift_value = input('Pick a shift value between 1 & 25.');
        %reseting prompt if shift value is not between 1 & 25
        if (1<=shift_value)&&(shift_value<=25)
            cnd = false;
                else
                    %condition statement
                    disp('The value you entered is invalid.')
                    disp('Not between 1 & 25.')
        end
end

%displaying message, calculating ciphar, & diplaying ciphar
fprintf('%s %s \n','Your message is',message)
caesar_ciphar(message,shift_value)
