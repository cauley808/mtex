function h = contour(sF,varargin)
%
% Syntax
%
% Input
%
% Output
%
% Options
%
% See also
%

% plot the function values
h = plot(sF,'contour',varargin{:});

% remove output if not required
if nargout == 0, clear h; end

end
