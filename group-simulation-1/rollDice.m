function [x1, x2, x3, y] = rollDice(numberOfRolls)

x1 = zeros(1, numberOfRolls);
x2 = zeros(1, numberOfRolls);
x3 = zeros(1, numberOfRolls);
y = zeros(1, numberOfRolls);

rng(0,'twister'); % initialize random number generator

rolls = randi([1 6], 1, numberOfRolls * 3);

r_range = [min(rolls) max(rolls)];

for i = 1:numberOfRolls
   x1(i) = rolls(i);
   x2(1) = rolls(numberOfRolls + i);
   x3(i) = rolls((numberOfRolls * 2) + i);
   y(i) = x1(i) + x2(i) + x3(i);
end

end