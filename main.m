clear, clc, close all;

fprintf('====================================================\n');
fprintf('Result of g({2,3,4}) is %.4g\n', g([2,3,4]));
fprintf('====================================================\n');

for i = 1:5
    comb = nchoosek(1:5,i);
    for j = 1:size(comb,1)
        fprintf('g({');
        fprintf('%d,', comb(j,:));
        fprintf('})\t:\t %.4f\n', g(comb(j,:)));
    end
end

fprintf('====================================================\n');