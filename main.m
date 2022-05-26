% Rey Rico Alzaga
% BSCS - 4B


% polynomial initialization as vector
poly = [1, -3, -16, 48];


% interval values
a = 3;
b = -1;

% p of values
p_of = 7;
p_counter = 0;

% getting the degree of the polynomial
eval_func(poly);
polydegree = max(size(poly)); 

% getting the value substitution for functions
function1 = subs_func(poly, polydegree, a);
function1
f1 = sum(function1)
function2 = subs_func(poly, polydegree, b);
function2
f2 = sum(function2)

% check the function a and b to see if it is greater than zero or not
a_greater_zero = check(f1);
a_greater_zero 
b_greater_zero = check(f2);
b_greater_zero 

% for loop until p value
for i = 1: p_of
  fprintf("(Iteration %d)\n", i);
  a
  b
  t = (a+b)/2  % get the t value

  p = subs_func(poly, polydegree, t); % substitute polynomial variables with t value
  ft =  sum(p) % applies summation on the polynomial values

  p_greater_zero = check(ft); % check the value ft if it is greater than zero or not
  p_greater_zero % 1 if true, 0 if false
  
  
  function1 = subs_func(poly, polydegree, a); % substitute polynomial variables with a value
  f1 = sum(function1)
  function2 = subs_func(poly, polydegree, b); % substitute polynomial variables with b value
  f2 = sum(function2)
  

  if (p_greater_zero == a_greater_zero) % if statement substituting values if met conditions
    a = t;
  else
    b = t;
  endif
  
  fprintf("\n");
endfor

% presents the final value of p and the iterations count
P_value = t;
P_value
p_of




