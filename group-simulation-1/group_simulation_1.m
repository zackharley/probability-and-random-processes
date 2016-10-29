%% 1.I
% Write a MATLAB code to calculate the PMF of y. 
% Then, plot the PMF of x and y.

pmfOfX(1:6) = 1 / 6;
plotPMF(...
    pmfOfX, ...
    'PMF of Outcomes of One Die Roll', ...
    'Number on die face', ...
    'Probability of rolling the corresponding number' ...
);
pmfOfY = threeDicePMF();
plotPMF( ...
    pmfOfY, ...
    'PMF of Sum of Three Dice Rolls', ...
    'Sum of Dice', ...
    'Probability of rolling the corresponding sum (%)' ...
);

%% 1. II
% Write a MATLAB code to calculate the CDF of x and y and then plot them.

cdfOfX = calculateCDF(pmfOfX);
plotCDF(...
    cdfOfX, ...
    'CDF of RV X', ...
    'x', ...
    'F_X(x) = P[X \leq x]'...
);
cdfOfY = calculateCDF(pmfOfY);
plotCDF(...
    cdfOfY, ...
    'CDF of RV Y', ...
    'y', ...
    'F_Y(y) = P[Y \leq y]'...
);

%% 1. III
% Suppose that we repeat the experiment of rolling the dice for N times.
% Generate the outcomes for N = 100 trials of rolling these three dice in
% MATLAB and save the observed values in the vectors x1, x2 and x3. Then, 
% save the sum of the three dice in vector y.

numberOfRolls = 100;

[x1, x2, x3, y] = rollDice(numberOfRolls);
