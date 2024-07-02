%% Source codes for Figure S1(b).
% We mark the geographical location of the city of Chongqing on
% the world map. We use the trial version of the Mapping Toolbox.
%
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
%% We mark the geographical location of the Chongqing city
figure;
hold on;
provinces=shaperead('bou1_4p.shp','UseGeoCoords',true);
ax = worldmap([20,50],[90,130]);
setm(ax,'mapprojection','mercator');
H = geoshow(provinces,'LineWidth',1.5,'FaceColor',[1 1 1],'DisplayType','polygon','SymbolSpec',[]);
set(gca,'FontName',My_FontName,'FontSize',My_fontSize)
%set(H,'FontName',My_FontName,'FontSize',My_fontSize)
P=shaperead('bou2_4p.shp','UseGeoCoords',true,...
  'Selector',{@(name) strcmp(name,'重庆市'),'NAME'});
patchm(P.Lat,P.Lon, [123 188 232]/255)
textm(mean(P.Lat(1:end-1))-2,mean(P.Lon(1:end-1)),'Chongqing', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
P=shaperead('bou2_4p.shp','UseGeoCoords',true,...
  'Selector',{@(name) strcmp(name,'北京市'),'NAME'});
patchm(P.Lat,P.Lon, [0.9 0.9 0.9])
textm(mean(P.Lat(1:end-1))-1,mean(P.Lon(1:end-1)),'Beijing', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
northarrow('latitude',50,'longitude',80,'scaleratio',.08,'FaceColor',[.4,.4,.4])
set(findall(gca, 'type', 'text'),'FontName',My_FontName,'FontSize',My_fontSize)
