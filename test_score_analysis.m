% Ensure the statistics package is loaded
pkg load statistics;

% Sample dataset: Test scores out of 100
test_scores = [88, 92, 79, 94, 87, 85, 91, 82, 76, 95];

% Basic statistical analysis
mean_score = mean(test_scores);
median_score = median(test_scores);
std_deviation = std(test_scores);

fprintf('Mean Score: %f\n', mean_score);
fprintf('Median Score: %f\n', median_score);
fprintf('Standard Deviation: %f\n', std_deviation);

% Visualize the data with a histogram
hist(test_scores, 10); % 10 bins for scores 70-100
xlabel('Score');
ylabel('Frequency');
title('Distribution of Test Scores');

% Hypothesis testing: Is the average score significantly different from 85?
[h, p_value] = ttest(test_scores, 85);
if h == 0
    fprintf('The average test score is not significantly different from 85 (p-value = %f).\n', p_value);
else
    fprintf('The average test score is significantly different from 85 (p-value = %f).\n', p_value);
endif

