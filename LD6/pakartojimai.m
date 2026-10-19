function naujas = pakartojimai(masyvas, zemyn, desinen)
% Pakartojimai atkartoja masyva zemyn ir i desine.
%
% Naudojimas:
% naujas = pakartojimai(masyvas, zemyn, desinen)
%
% Ivestys:
% masyvas - pradinis masyvas
% zemyn   - pakartojimu skaicius zemyn
% desinen - pakartojimu skaicius i desine
%
% Isvestis:
% naujas - atkartotas masyvas

naujas = [];

for i = 1:zemyn
    eilute = [];

    for j = 1:desinen
        eilute = [eilute masyvas];
    end

    naujas = [naujas; eilute];
end

end