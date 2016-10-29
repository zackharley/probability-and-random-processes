function [ cdf ] = calculateCDF( pmf )

pmfSize = size(pmf);
cdf = zeros(1, pmfSize(2));
sum = 0;

for i = 1:pmfSize(2)
   sum = sum + (pmf(i) * i); 
   cdf(i) = sum;
end

end

