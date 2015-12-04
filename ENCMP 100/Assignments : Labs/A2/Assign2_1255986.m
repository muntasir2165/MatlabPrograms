%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 2
% Lab Section: A3
% Name: Mohammad Sirajee
% CCID: sirajee
% UofA ID: 1255986
% Date: October 1, 2013
%
% Acknowledgements:
% None
% File: Assign2_1255986.m
% Description:
% This program contains four rules which can be used to crack the
% secret code to save Maverick the co-op student.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Get secret code from the user as a string
code_string = input('Please enter a code to break: ', 's');

%Get an array of the individual digits
code = code_string - '0';

%If the code is not 7 digits output an error message
if length(code) ~= 7
    disp('Error message: Not a seven-digit number.');
    
    %Otherwise, get the sum of the digits
else
    digit_sum = sum(code);
    
    %If sum is odd output an error message
    if mod(digit_sum,2) == 1
        disp('Error message: Sum is odd.');
        
        %Otherwise, get the rescue number
    else
        rescue_num = ( code(1) * code(2) ) - code(3);
        
        %If the rescue day is not valid output an eror message
        if rescue_num < 1 || rescue_num > 7
            disp('Error message: Invalid rescue day.');
            
            %Otherwise, calculate the rendezvous point
        else
            fourth_fifth_sum = code(4) + code(5);
            six_seventh_sum = code(6) + code(7);
            
            %If the sum of the fourth and fifth digits is equal to the sum
            %of the sixth and seventh, output an error message
            if fourth_fifth_sum == six_seventh_sum
                disp('Error message: Invalid rendezvous point.');
                
                %Otherwise get the rendezvous point number
            else
                if  fourth_fifth_sum < six_seventh_sum
                    rendezvous_number = six_seventh_sum- fourth_fifth_sum;
                else
                    rendezvous_number = fourth_fifth_sum - six_seventh_sum;
                end
                
                %Determine the rescue day
                switch rescue_num
                    case 1
                        rescue_day = 'Monday';
                    case 2
                        rescue_day = 'Tuesday';
                    case 3
                        rescue_day = 'Wednesday';
                    case 4
                        rescue_day = 'Thursday';
                    case 5
                        rescue_day = 'Friday';
                    case 6
                        rescue_day = 'Saturday';
                    case 7
                        rescue_day = 'Sunday';
                end
                
                %Determine the rescue point
                switch rendezvous_number
                    case 1
                        rendezvous_point = 'bridge';
                    case 2
                        rendezvous_point = 'library';
                    case 3
                        rendezvous_point = 'river crossing';
                    case 4
                        rendezvous_point = 'airport';
                    case 5
                        rendezvous_point = 'bus terminal';
                    case 6
                        rendezvous_point = 'hospital';
                    case 7
                        rendezvous_point = 'St. Petes Church';
                end
                
                %Compose and output the valid message
                disp(['Rescue on ', rescue_day, ' at the ', rendezvous_point, '.']);
            end
        end
    end
end




