% nodemaker

prefix = 'AAL90+NAcc';

nodes = importdata([prefix,'_points.txt']);
nodelabels = importdata([prefix,'_labels.txt']);

T = table;
T.Var1 = nodes(:,1);
T.Var2 = nodes(:,2);
T.Var3 = nodes(:,3);
T.Var4 = ones(size(nodes,1),1);   % categories
T.Var5 = ones(size(nodes,1),1);   % node size
T.Var6 = nodelabels;

writetable(T, [prefix,'.node'], ...
        'WriteVariableNames', false, 'FileType', 'text', 'Delimiter', '\t');
      
      