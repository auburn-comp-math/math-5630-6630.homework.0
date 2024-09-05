% Author: Hunter Straub / hcs0036@auburn.edu
% Date: 2024-09-01
% Assignment Name: hw00

classdef hw00 
    methods (Static)

        function a_m = p1(m)
            if m < 0
                error('The term index m must be non-negative.');
            end
            if m == 0
                a_m = 0;
                return;
            elseif m == 1 || m == 2
                a_m = 1;
                return;
            end
            a = zeros(1, m+1);
            a(1) = 0;
            a(2) = 1;
            a(3) = 1;
            for i = 4:m+1
                a(i) = a(i-1) + a(i-2) + a(i-3);
            end
    a_m = a(m+1);
        end
                function detA = p2(A)
                    [n, m] = size(A);
                    if n ~= m
                        error('Must be square lol');
                    end
                    if n == 1
                        detA = A(1,1);
                        return;
                    end
                    if n == 2
                        detA = A(1,1)*A(2,2) - A(1,2)*A(2,1);
                        return;
                    end
                    detA = 0;
                    for j = 1:n
                        subMatrix = A(2:end, [1:j-1, j+1:end]);
                        cofactor = (-1)^(1+j) * A(1,j) * p2(subMatrix);
                        detA = detA + cofactor;
                    end
            end
        

        function p3()
%             tic;
%             for i=1:2
%                 toc
                disp('runtime');
                java.lang.Thread.sleep(1000);
%             end
        end

    end

end
