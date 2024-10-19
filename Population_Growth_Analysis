% Author Name: Justice Adels
% Email: adelsj89@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date: October 18, 2024
%_____________________________________________________________________

%recording population census for each of 5 consecutive years in row vector
population = [5000, 5200, 5350, 5600, 5800];
%calculating growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);
%combining populations & growth rate vectors into pop_data matrix
pop_data = [population; [0 growth_rate]];
%combining labels
pop_label = ['populattion'; 'growth rate'];
%printing population data in a table
table(pop_label,pop_data)
