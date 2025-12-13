function [NoEm,gap]=Gap_Vd(data)
[N,L]=size(data);
data_res=reshape(data,(N),L);
d_avg=mean(data_res,1);                             % Calculate mean                                
d_avg_rep=repmat(d_avg,(N),1);                  % 
x_corr=corr(data_res);
norm_data=data_res-d_avg_rep;                       % Need to convert the matrix d_avg(1*L) into (sub_len*sub_wid)*L matrix
data_cv=cov(norm_data);                             % Calculate covariance(L*L) of data_res; store diagonals in data_cv:L*1
[e_vec,e_val]=eig(data_cv);                         % Calculate Eigen Value of Covariance Matrix
[e_val_srt,idx]=sort(diag(e_val),'descend');        % Sort the diagonal elements of e_val in descending order
for i=1:L-1
eval_diff(i,1)=e_val_srt(i,1)-e_val_srt(i+1,1);
i=i+1;
end
for i=1:L-2
    num(i,1)=pow2(std(eval_diff(i+1:L-1,1)),2);
    den(i,1)=pow2(std(eval_diff(i:L-1,1)),2);
    gap(i,1)=num(i,1)/den(i,1);
    i=i+1;
end
[MinVal,NoEm]=min(gap(1:L-3,1));
NoEm=NoEm+1;