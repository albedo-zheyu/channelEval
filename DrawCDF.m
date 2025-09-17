function DrawCDF(data)
% DRAWCDF Plot empirical cumulative distribution function (CDF).
%
%   DrawCDF(DATA) plots the empirical cumulative distribution function of 
%   the input vector DATA.
%   Author: Albedo Zheyu Wang
%   Date: 05.06.2025
%
%   INPUT:
%       DATA - A numeric vector representing sample values.
%   FUNCTION:
%       The function sorts the input data and computes the empirical CDF, 
%       then plots it.
%
%   用法说明：
%       DrawCDF(DATA) 会绘制输入向量 DATA 的经验累积分布函数（CDF）。
%   参数：
%       DATA - 一个数值向量，表示样本数据。
%   功能说明：
%       本函数对输入数据进行排序，并计算经验CDF，随后绘图展示。

    % 输入检查
    if nargin < 1
        error('Input vector is required. | 请输入一个数据向量。');
    end

    if ~isvector(data)
        error('Input must be a vector. | 输入必须是一个向量。');
    end

    % 第一步：排序数据 | Step 1: Sort the data
    sorted_data = sort(data);

    % 第二步：计算经验CDF | Step 2: Compute empirical CDF
    n = length(data);
    empirical_cdf = (1:n) / n;

    % Additional Function: Controls whether the plot appears inline 
    % or in a pop-up window
    if nargin < 2
        showInWindow = true;
    end

    if showInWindow
        figure;
    end

    % 第三步：绘制图像 | Step 3: Plot the empirical CDF
    plot(sorted_data, empirical_cdf, 'LineWidth', 2);
    xlabel('x');
    ylabel('Empirical CDF');
    title('Empirical CDF');
    grid on;

end
