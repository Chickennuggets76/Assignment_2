% Author Name: Justice Adels
% Email: adelsj89@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: October 18, 2024
%_____________________________________________________________________
%Setup

%listing planet distances from the Sun in astronomic units
planet_distances = [0.44681 0.72754 0.99811 1.5256 5.0540 9.6480 19.558 29.889];
%listin planet radii in Earth radii
planet_radii = [0.3829 0.9499 1.000 0.5320 10.97 9.140 3.981 3.865];

%creating scalar multiple
vector_50 = [50 50 50 50 50 50 50 50];
%exagerating planet radii with scalar multiple
%used for point sizes in scatter plot
Plan_Rad50 = times(planet_radii,vector_50);
%establishing colors for each point representing a planet
planet_color = [0.5 0.5 0.5; 1 1 0; 0 1 0; 1 0 0; 1 0.5 0; 0.8 0.6 0.5; 1 0 1; 0 1 1];

%collecting dimentional values and storing in "planet_dimensions"
planet_dimensions = [planet_distances; planet_radii; Plan_Rad50; planet_color'];

%establising argument values for scatter plot
x = planet_dimensions(1,1:end);
y = planet_dimensions(2,1:end);
sz = planet_dimensions(3,1:end);
c = planet_dimensions(4:end,1:end)';
%_____________________________________________________________________
%Scatter Plot

%establishing subplot
subplot(2,1,1);
%displaying scatter plot
scatter(x,y,sz,c,"filled");

%establishing scale
set(gca,'xscale','log')
%expandind range in y-axis
ylim([0 13])

%labeling
xlabel('distance (AU)')
ylabel('Planet Radii (Earth Radii)')
title('Relation Between Radii & Distance from the Sun')

%assigning planet names to corresponding points
text(x,y,{'Mercury','Venus','Earth','Mars','Jupiter','Saturn','Uranus','Neptune'},'Vert','bottom','Horiz','left','FontSize',7)
%_____________________________________________________________________
%Bar Chart

%establishing second subplot
subplot(2,1,2);
%creating bar chart
bar(planet_distances)

%labeling distances with their corresponding planets
planet_names = {'Mercury','Venus','Earth','Mars','Jupiter','Saturn','Uranus','Neptune'};
%establishing scale
set(gca,'xticklabel',planet_names)
ylabel('distance (AU)')
%creating title
title('Planet Distances from the Sun')
