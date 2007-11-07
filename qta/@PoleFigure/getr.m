function r = getr(pf)
% get specimen directions
%
%% Input
% pf - @PoleFigure
%
%% Output
%  r - @vector3d specimen directions
%
%% See also 
% PoleFigure/getMiller PoleFigure/geth PoleFigure/getdata PoleFigure/getbg

r = [];
for i = 1:length(pf)
    r = [r;reshape(pf(i).r,[],1)];
end
