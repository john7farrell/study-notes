clc;clear;
year = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013];
year = year - 2000;
price = [2.000, 2.500, 2.900, 3.147, 4.515, 4.903, 5.365, 5.704, 6.853, 7.971, 8.561, 10.000, 11.280, 12.900];
X = [ones(length(year), 1), year'];
y = price';
theta = [1 1]';
alpha = 0.01;
num_iters = 200;
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters); 
predictions = X * theta;
scatter(year, price);
hold on
plot(year, predictions);
xlabel('year+2000');ylabel('price/RMB');