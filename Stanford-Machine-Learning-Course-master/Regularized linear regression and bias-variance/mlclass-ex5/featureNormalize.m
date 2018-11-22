function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. ��ֵΪ0����׼��Ϊ1
%   This is often a good preprocessing step to do when
%   working with learning algorithms.

mu = mean(X);
X_norm = bsxfun(@minus, X, mu);  %��X�е�ÿһ���ȥmu����ֵ��
% bsxfunǿ��ġ����ܵġ���ͬά���ľ�����չ�������,�Ӵ˸����������е�forѭ��
% ��,matlab��������funΪ��׺������ܺ���

sigma = std(X_norm);
X_norm = bsxfun(@rdivide, X_norm, sigma); % X_norm��ÿһ�� ./ sigma


% ============================================================

end