function dgm = mkSprinklerDgm()
%% Make the sprinkler dgm
%    C
%   / \
%  v  v
%  S  R
%   \/
%   v
%   W
%%
C = 1; S = 2; R = 3; W = 4;

G = zeros(4,4);
G(C,[S R]) = 1;
G(S, W)=1;
G(R, W)=1;


CPTs{C} = reshape([0.5 0.5], 2, 1);
CPTs{S} = reshape([0.5 0.9 0.5 0.1], 2, 2);
CPTs{R} = reshape([0.8 0.2 0.2 0.8], 2, 2);
CPTs{W} = reshape([1 0.1 0.1 0.01 0 0.9 0.9 0.99], 2, 2, 2);

dgm = dgmCreate(G, CPTs); 

end