function [s1, s2, sums] = sines(pts, amp, n1, n2)

%check whether the expected input arguments are provided. If not, assign a
%default value
if ~exist('pts', 'var')
    pts = 1000;
end
if ~exist('amp', 'var')
    amp = 1;
end
if ~exist('n1', 'var')
    n1 = 100;
end
if ~exist('n2', 'var')
    n2 = 1.05 * n1;
end

%the step size here is (end_point-start_point) / (number_of_points-1)
s1 = amp * sin(0:(2*pi*n1-0)/(pts-1):2*pi*n1);
s2 = amp * sin(0:(2*pi*n2-0)/(pts-1):2*pi*n2);

sums = s1 + s2;

end