function w = replace_me(v, a, b, c)

%check whether the expected input arguments are provided. If not, assign a
%default value
if ~exist('b', 'var')
    b = 0;
end
if ~exist('c', 'var')
    c = b;
end


w = 0;
for i=1:length(v)
    element = v(i);
    if element == a
        w = [w, b, c];
    else
        w = [w, element];
    end
end

w = w(2:end);
end