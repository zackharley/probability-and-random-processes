function plotPMF(pmf, graphTitle, graphXLabel, graphYLabel)

sizeOfPMF = size(pmf);

figure;

hold on;

plot(1:sizeOfPMF(2), pmf .* 100, '.');

for i = 1:sizeOfPMF(2)
    x = [i i];
    y = [0 pmf(i) * 100];
    plot(x, y, '-');
end

title(graphTitle);
xlabel(graphXLabel);
ylabel(graphYLabel);

hold off;

end

