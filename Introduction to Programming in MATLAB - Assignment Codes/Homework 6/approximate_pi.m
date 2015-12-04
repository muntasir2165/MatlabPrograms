function [pi_approx, k] = approximate_pi(delta)

pi_approx  = 0;
k = 0;
while true
    pi_approx = pi_approx + sqrt(12) * (-3)^(-k) * (1/(2*k + 1));
    if (pi - delta <= pi_approx) && (pi_approx <= pi + delta)
        break
    end
    k = k+1;
end

end