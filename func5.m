function y = func5(varargin)

n = length(varargin);
y = 0;    
i = 1;

while i <= n
    y = y + varargin{i};
    i = i + 1;
end