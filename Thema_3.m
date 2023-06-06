% Thema 3

f=inline('sin(x)');

a=0;
b=pi;
n=16;				% Ypodiastimata

h=(b-a)/n;

s_odd=0.0;
s_even=0.0;

for i=1:2:n-1
    x=a+i*h;
    s_odd=s_odd+f(x);		% Athroisma perittwn orwn
end

for i=2:2:n-2
    x=a+i*h;
    s_even=s_even+f(x);		% Athroisma artiwn orwn
end

simpson=(h/3)*(f(a)+4*s_odd+2*s_even+f(b)); % Proseggistiki timi xrhsimopoiwntas ton tupo 1/3 tou Simpson

fun = @(x) sin(x);
real_value = integral(fun,0,pi);            % Pragmatiki timi tou oloklirwmatos

abs_error = abs(real_value-simpson);        % Apoluto sfalma = pragmatiki timi - proseggistiki timi
fprintf("Apoluto sfalma: x = %f - %f = %f\n", real_value, simpson, abs_error);