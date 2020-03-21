function data=trim(data,outval)
%data=trim(data,outval)
% ��������ݣ�����NaN, Inf, ���쳣��С����
% data: ��״���ݣ�ÿ������һ������,���ؾ����������
% outval: ϵ�����ӣ����ֵ����outval����׼���Ϊ�쳣��С��Ĭ��Ϊ4

% L.J.HU 8-17-1999

if nargin<2,outval=4;end
outliers=(isnan(data)|abs(data)==inf);
[n,m]=size(data);mu=mean(data);sigma=std(data);
outliers=outliers+(abs(data-ones(n,1)*mu)>outval*ones(n,1)*sigma);
if m>1,
   data(any(outliers'),:)=[];
else
  data(find(outliers'),:)=[];
end
