% Author Name: Justice Adels
% Email: adelsj89@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: October 18, 2024
%_____________________________________________________________________

%reading weather_data.txt
data = readcell('weather_data.txt', 'Delimiter', ',');

%extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

%extracting headers
vector_head = ["Temperature" "Humidity" "Precipitation"];

%creating vector with average measurement labels
vector_avg = ["Average " "Average " "Average "];
avg_headers = append(vector_avg,vector_head);

%calculating averages for temperatue, humidity, and precipitation
avg_temp = mean(temperature);
avg_hum = mean(humidity);
avg_prec = mean(precipitation);

%storing condition averages and labels in "avg_data"
avg_data = {avg_headers'; [avg_temp; avg_hum; avg_prec]};

%saving "avg_data" to weather summary
writecell(avg_data,'weather_summary.txt')
