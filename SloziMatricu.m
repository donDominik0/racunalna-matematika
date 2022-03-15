function out = SloziMatricu(varargin)


out[];
    for i = 1:nargin
        ulaz_i = varargin{i};
        if i == 1
            [br_redaka,br_stupaca] = size(ulaz_i);
        else
            if size(ulaz_i,1) ~= br_redaka || size(ulaz_i,2) ~= br_stupaca
                fprintf('\n\nDimenzije svih ulaznih vektora moraju biti jednake\n dimenziji prvog ulaznog vektora\n\n');
                clear out
                return
            end
        end
        if br_redaka == 1
            out = [out;ulaz_i];
        elseif br_stupaca == 1
            out = [out;ulaz_i];
        else
            fprintf('\n\nUlaz ne smije biti matrica, nego vektor-redak ili vektor-stupac!\n\n');
            clear out
            return
        end
    end
end 
end

