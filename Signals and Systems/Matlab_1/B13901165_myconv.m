clear all;
clc;
%%
%%part(a)
n_1 = 1:29;
n_2 = 1:10;
x_1 = (n_1).*(1 <= n_1).*(n_1 <=20) + (60-2*n_1).*(n_1 >= 21).*(n_1 <= 29);
x_2 = (n_2 >= 2) - (n_2 >= 8) + (n_2 == 10);

figure;
stem(n_1, x_1, "filled", "LineWidth", 2);
title('Stem Plot of x_1(part(a))');
xlabel('n'); ylabel('x_1');
grid on;

figure; 
stem(n_2, x_2, "filled", "LineWidth", 2);
title('Stem Plot of x_2(part(a))');
xlabel('n'); ylabel('x_2');
grid on;

%%
%%part(b)
y = conv(x_1, x_2);
n_y = 2:length(y)+1;
figure;
stem(n_y, y, "filled", "LineWidth", 2);
title('Stem Plot of y using conv(Part(b))');
xlabel('n'); ylabel('y');
grid on;

%%
%%part(c)
N1 = length(x_1);
N2 = length(x_2);

col = [x_1, zeros(1, N2-1)];
row = [x_1(1), zeros(1, N2-1)];
matrix = toeplitz(col, row);
y_c = matrix * x_2';

if isequal(round(y_c, 5), round(y', 5))
    disp('The result is the same');
end

figure;
stem(n_y, y_c, "filled", "LineWidth", 2);
title('Stem Plot of y_c using matrix(Part(c))');
xlabel('n'); ylabel('y_c');
grid on;

%%
%%part(d)
n_1 = 1:5;
n_2 = 1:5;
x_1 = [3,9,27,9,3];
x_2 = [2,4,8,16,32];

figure;
stem(n_1, x_1, "filled", "LineWidth", 2);
title('Stem Plot of x_1(part(d))');
xlabel('n'); ylabel('x_1');
grid on;

figure; 
stem(n_2, x_2, "filled", "LineWidth", 2);
title('Stem Plot of x_2(part(d))');
xlabel('n'); ylabel('x_2');
grid on;

y = conv(x_1, x_2);
n_y = 2:length(y)+1;
figure;
stem(n_y, y, "filled", "LineWidth", 2);
title('Stem Plot of y using conv(part(d))');
xlabel('n'); ylabel('y');
grid on;

N1 = length(x_1);
N2 = length(x_2);

col = [x_1, zeros(1, N2-1)];
row = [x_1(1), zeros(1, N2-1)];
matrix = toeplitz(col, row);
y_c = matrix * x_2';

if isequal(round(y_c, 5), round(y', 5))
    disp('The result is the same');
end

figure;
stem(n_y, y_c, "filled", "LineWidth", 2);
title('Stem Plot of y_c using matrix(part(d))');
xlabel('n'); ylabel('y_c');
grid on;
