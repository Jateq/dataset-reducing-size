
clear fittedData residual 

data = data;  

polyDegree = 3;

x = 1:length(data);  % x-values for fitting
p = polyfit(x, data, polyDegree);
fittedData = polyval(p, x);
residual = data - fittedData;
figure;
subplot(3,1,1);
plot(x, data);
title('Original Data');

subplot(3,1,2);
plot(x, fittedData);
title('Polynomial Fit');

subplot(3,1,3);
plot(x, residual);
title('Residual (Noise)');

% Optional: Save the results or further process
% save('fittedData.mat', 'fittedData');
% save('residual.mat', 'residual');
