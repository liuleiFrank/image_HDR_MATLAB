%startup
% ����ͼ���ԣ���file�޸ĳ�����ͼ���·�������޸��ļ�����׺�����У����ɵõ���ǿ��������������ͼƬͬһ·����
tic;
addpath ours;
file = 'D:\MATLAB\HDR\OpenCE\RGB_Light\ZZX';%�޸�����ͼƬ��·��
I = imread( [file,'.jpg'] );%�޸�����ͼƬ�ĺ�׺
%J = BIMEF(I); 
%{
A = Ying_2017_CAIP(I,0.5);
imwrite(A, [file,'_out_A.jpg'] );
B = 1-I;
imwrite(B, [file,'_out_B.jpg'] );
C = Ying_2017_CAIP(B,0.5);
imwrite(C, [file,'_out_C.jpg'] );
D = 1-C;
%J = test_diff(I);
imwrite(D, [file,'_out_D.jpg'] );
%}
J = Ying_2017_CAIP(I,0.5);
imwrite(J, [file,'_out.jpg'] );

toc;

subplot 121; imshow(I); title('ԭʼͼ');
subplot 122; imshow(J); title('������'); 