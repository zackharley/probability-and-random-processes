function plotCDF(cdf, graphTitle, graphXLabel, graphYLabel)

sizeOfCDF = size(cdf);

figure; 

hold on;

plot(1:sizeOfCDF(2), cdf, '*');

for i = 1:sizeOfCDF(2)
    horizontalX = [(i - 1) i];
    if i == 1
        horizontalY = [0 0];
    else
        horizontalY = [cdf(i - 1) cdf(i - 1)];
    end
    plot(horizontalX, horizontalY, '-');
    
    verticalX = [i i];
    if i == 1
        verticalY = [0 cdf(i)];
    else
        verticalY = [cdf(i - 1) cdf(i)];
    end

    title(graphTitle);
    xlabel(graphXLabel);
    ylabel(graphYLabel);
    
    plot(verticalX, verticalY, '-');
end

hold off;

end

