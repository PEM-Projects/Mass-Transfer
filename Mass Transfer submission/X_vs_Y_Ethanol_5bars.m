function [fitresult, gof] = X_vs_Y_Ethanol_5bars(xEthanol5, yEthanol5)
%CREATEFIT(XETHANOL5,YETHANOL5)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : xEthanol5
%      Y Output: yEthanol5
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 19-Jul-2020 03:19:31


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( xEthanol5, yEthanol5 );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = 1;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
%h = plot( fitresult, xData, yData );


