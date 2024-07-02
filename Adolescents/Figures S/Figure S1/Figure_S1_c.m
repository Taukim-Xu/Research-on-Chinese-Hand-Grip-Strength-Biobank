%% Source codes for Figure S1(c).
% We mark the geographical location of the six shcools or universities on
% the map of Chongqing city. We use the trial version of the Mapping Toolbox.
%
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
%% We mark the geographical location of the six shcools
figure;
hold on;
provinces=shaperead('bou1_4p.shp','UseGeoCoords',true);
ax = worldmap([28.5,30.5],[105,107.5]);
setm(ax,'mapprojection','mercator');
H = geoshow(provinces,'LineWidth',1.5,'FaceColor',[1 1 1],'DisplayType','polygon','SymbolSpec',[]);
set(gca,'FontName',My_FontName,'FontSize',My_fontSize)
%set(H,'FontName',My_FontName,'FontSize',My_fontSize)
P=shaperead('bou2_4p.shp','UseGeoCoords',true,...
  'Selector',{@(name) strcmp(name,'重庆市'),'NAME'});
patchm(P.Lat,P.Lon, [123 188 232]/255)
set(findall(gca, 'type', 'text'),'FontName',My_FontName,'FontSize',My_fontSize)
% Chongqing University of Posts and Telecommunications (CQUPT)
My_Lon = 106.614391;
My_Lat = 29.537571;
geoshow(My_Lat,My_Lon,'DisplayType','point','Marker','p',...
    'MarkerEdgeColor',[.8,0,0],'MarkerFaceColor',[.8,0,0])
textm(My_Lat-0.1,My_Lon,'A1', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
% Chongqing College of International Business and Economics
My_Lon = 106.253848;
My_Lat = 30.00281;
geoshow(My_Lat,My_Lon,'DisplayType','point','Marker','p',...
    'MarkerEdgeColor',[.8,0,0],'MarkerFaceColor',[.8,0,0])
textm(My_Lat-0.1,My_Lon,'A2', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
% Sankou Junior High School in Jiangjin District of Chongqing
My_Lon = 106.104604;
My_Lat = 29.066367;
geoshow(My_Lat,My_Lon,'DisplayType','point','Marker','p',...
    'MarkerEdgeColor',[.8,0,0],'MarkerFaceColor',[.8,0,0])
textm(My_Lat-0.1,My_Lon,'A3', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
% Chongqing University of Arts and Science
My_Lon = 105.944504;
My_Lat = 29.357066;
geoshow(My_Lat,My_Lon,'DisplayType','point','Marker','p',...
    'MarkerEdgeColor',[.8,0,0],'MarkerFaceColor',[.8,0,0])
textm(My_Lat-0.1,My_Lon,'A4', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
% Yucai Primary School in Tongnan District of Chongqing
% Tongnan No.1 Middle School in Tongnan District of Chongqing
My_Lon = 105.850366;
My_Lat = 30.181392;
geoshow(My_Lat,My_Lon,'DisplayType','point','Marker','p',...
    'MarkerEdgeColor',[.8,0,0],'MarkerFaceColor',[.8,0,0])
textm(My_Lat-0.1,My_Lon,'A5 and A6', ...
   'HorizontalAlignment','center','FontSize',12,'color','k')
