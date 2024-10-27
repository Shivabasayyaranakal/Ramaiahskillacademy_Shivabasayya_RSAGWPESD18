num_points = 100;     
min_value = 0;        
max_value = 10;         

% Generate a sequence of random numbers within the specified range
random_numbers = min_value + (max_value - min_value) * rand(1, num_points);

% Plot the random numbers as a line graph
figure;
plot(random_numbers, 'b-', 'LineWidth', 1.5);
xlabel('Index');
ylabel('Random Value');
title('Sequence of Random Numbers');
grid on;
