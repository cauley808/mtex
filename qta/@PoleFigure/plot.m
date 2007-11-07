function plot(pf,varargin)
% plot pole figure
%
% plots the Diffraction intensities as distinct colord dots on the sphere
%
%% Input
%  pf - @PoleFigure
%
%% Options
%  BACKGROUND   - plot background data
%
%% See also
% S2Grid/plot savefigure

if check_option(varargin,'BACKGROUND')
  pfunc = @(i) pf(i).bgdata;
else
  pfunc = @(i) pf(i).data;
end

multiplot(@(i) pf(i).r,pfunc,length(pf),...
  'DISP',@(i,Z) [' pf h=',char(pf(i).h),' Max: ',num2str(max(Z(:))),...
  ' Min: ',num2str(min(Z(:)))],...
  'ANOTATION',@(i) char(pf(i).h,'LATEX'),...
  'MINMAX',...
  varargin{:});

set(gcf,'Name',['Pole Figures of Specimen ',inputname(1)]);
figure(gcf);
