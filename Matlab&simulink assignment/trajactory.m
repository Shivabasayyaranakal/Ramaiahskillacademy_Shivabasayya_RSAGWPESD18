initial_velocity = input('enter the value of initial velocity'); 
launch_angle = input('enter the value of launch angle');
g = input('enter the value of gravitational acceleration');              

% Convert launch angle to radians
theta = deg2rad(launch_angle);

% Time of flight, maximum height, and range calculations
time_of_flight = (2 * initial_velocity * sin(theta)) / g;
max_height = (initial_velocity^2 * (sin(theta))^2) / (2 * g);
range = (initial_velocity^2 * sin(2 * theta)) / g;

% Time vector for simulation
t = linspace(0, time_of_flight, 100);

% Equations of motion
x = initial_velocity * cos(theta) * t;           
y = initial_velocity * sin(theta) * t - 0.5 * g * t.^2; 

% Plotting the trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;

% Mark the maximum height and range
plot(range, 0, 'ro', 'MarkerFaceColor', 'r');    % Range
plot(range/2, max_height, 'go', 'MarkerFaceColor', 'g'); % Max height
xlabel('Range (m)');
ylabel('Height (m)');
title('Projectile Motion Trajectory');
legend('Trajectory', 'Range', 'Max Height');
grid on;

fprintf('Time of Flight: %.2f seconds\n', time_of_flight);
fprintf('Maximum Height: %.2f meters\n', max_height);
fprintf('Range: %.2f meters\n', range);
