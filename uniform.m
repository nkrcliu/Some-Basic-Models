%����һ��[0��1]�ֲ��������������������
%�������е�֪���в������Ϊ���ã�
%y�ĳ�ֵΪ1��w=7,ģM=10^10(α���������Ϊ5*10^7)
%y�ĳ�ֵΪ1��w=5^13,ģM=2^36(α���������Ϊ2^34,Լ2*10^10)
%y�ĳ�ֵΪ1��w=5^17,ģM=2^42(α���������Ϊ2^40,Լ10^12)
%--------------------------------------------------------
%function x=uniform(y,w,M,n)
%nΪҪ���������������
function x=uniform(y,w,M,n)
for i=1:n
    x(i)=y./M;
    y=rem(w*y,M);%rem()Ϊ���ຯ��
end