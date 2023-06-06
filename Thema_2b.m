f = @(x) x*x*x-2*x-5;

a=2;
b=3;

c = (a+b)/2;

err=abs(a-b);
max_error=0.000001;

while err>max_error

	if f(a)*f(b)<0
		b=c;
	else
		a=c;
	end

	c=(a+b)/2;
	err=abs(c-b);
	root=c;

end
root = round(root);
fprintf('Riza: %.7f\n',root);
