function [pmf] = threeDicePMF ()

numberOfDice = 3;
maxDieValue = 6;
yValues = [0 0 1 3 6 10 15 21 25 27 27 25 21 15 10 6 3 1];
pmf = zeros(1, numberOfDice * maxDieValue);
possibleRolls = maxDieValue ^ numberOfDice;

for i = 1:(numberOfDice * maxDieValue)
    pmf(i) = yValues(i) / possibleRolls;
end

end

