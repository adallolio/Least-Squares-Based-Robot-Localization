function [e,J]=errorAndJacobian(X,p,z)
   %z_hat=X(1:3,1:3)*p+X(1:3,4); %prediction
   z_hat = p;
   e=z_hat-z;
   J=zeros(3,6);
   J(1:3,1:3)=eye(3);
   J(1:3,4:6)=-skew(z_hat);

end