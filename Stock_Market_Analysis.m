% Author Name: Justice Adels
% Email: adelsj89@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date: October 18, 2024
%_____________________________________________________________________

%getting stock data from file "stock_data.txt"
stock_data = read_from_file('stock_data.txt');

%calculating average, max, min, and number of days of increase of closing
%stock prices.
avg_cl_price = mean(stock_data);
highest_cl_price = max(stock_data);
lowest_cl_price = min(stock_data);
num_dy_pr_incr = sum(diff(stock_data) > 0);

%printing values.
fprintf('%s %d\n','The average closing price (k$) is',avg_cl_price)
fprintf('%s %d\n','The higest closing price (k$) is',highest_cl_price)
fprintf('%s %d\n','The lowest closing price (k$) is',lowest_cl_price)
fprintf('%s %d\n','The number of days the closing price increased is',num_dy_pr_incr)

%storing values in shorter variables to reduce space usage.
a = avg_cl_price;
h = highest_cl_price;
l = lowest_cl_price;

%establishing vectors for horizontal ploting
avg_vector = [a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a];
hi_vector = [h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h];
lo_vector = [l l l l l l l l l l l l l l l l l l l l l l l l l l l l l l];

%plotting data sets
plot(stock_data)
hold on
plot(avg_vector)
hold on
plot(hi_vector)
hold on
plot(lo_vector)
hold off

%labeling chart
xlabel('time (d)')
ylabel('closing price (k$)')
title('Stock Closing Prices Over Time')
legend('closing stock prices','average price','highest price','lowest price')

%Collecting labels
st_dt_labels = ["Mean Closing Price"; "Highest Closing Price"; "Lowest Closing Price"; "Number of Days Price Increased"];
%collecting labels & calculated values and storing in the variable "stock_summary"
stock_summary = {st_dt_labels; [avg_cl_price; highest_cl_price; lowest_cl_price; num_dy_pr_incr]};
%saving stock summary values to the file "stock_summary.txt"
writecell(stock_summary,'stock_summary.txt')
