%% ME535 - Project 2
%Nathan Flynn
%Siddharth Natarajan

%Make sure to add the all the folders and subfolders in PROJECT_2_ME535 to
%the path!!!!

close all; clear; clc;
delete *.stl; %Deletes all previous stl files in the current location that your matlab is pointing to.
pumpkin; %Creates the surface of the pumpkin using beizer patches 
mouth; %Creates the mouth of the pumpkin using nurbs extrusion
nose; %Creates the nose of the pumpkin using nurbs extrusion 
lefteye; %Creates the left eye of the pumpkin using nurbs extrusion 
righteye; %Creates the right eye of the pumpkin using nurbs extrusion 
Pumpkin_Stem_Surface; %Creates the stem of the pumpkin