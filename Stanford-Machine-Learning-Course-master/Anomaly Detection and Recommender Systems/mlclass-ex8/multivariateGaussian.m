function p = multivariateGaussian(X, mu, Sigma2)
%MULTIVARIATEGAUSSIAN Computes the probability density function of the
%multivariate gaussian distribution. �����Ԫ��˹�ֲ��ĸ����ܶȺ�����
%    p = MULTIVARIATEGAUSSIAN(X, mu, Sigma2) Computes the probability 
%    density function of the examples X under the multivariate gaussian 
%    distribution with parameters mu and Sigma2. If Sigma2 is a matrix, it is
%    treated as the covariance matrix. If Sigma2 is a vector, it is treated
%    as the \sigma^2 values of the variances in each dimension (a diagonal
%    covariance matrix)
%    MULTIVARIATEGAUSSIAN�������mu��Sigma2�Ķ�Ԫ��˹�ֲ���ʾ��X�ĸ����ܶȺ����� 
%    ���Sigma2�Ǿ���������ΪЭ������� 
%    ���Sigma2��������������Ϊÿ��ά���з����\ sigma ^ 2ֵ���Խ�Э�������

k = length(mu);

if (size(Sigma2, 2) == 1) || (size(Sigma2, 1) == 1) %sigma������
    Sigma2 = diag(Sigma2);  %����Խ�Ԫ�ص���ȡ�������Խ���
end

X = bsxfun(@minus, X, mu(:)');   % @minusʵ�ֳ�������
p = (2 * pi) ^ (- k / 2) * det(Sigma2) ^ (-0.5) * ...
    exp(-0.5 * sum(bsxfun(@times, X * pinv(Sigma2), X), 2));

end