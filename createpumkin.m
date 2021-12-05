%Driver program to create all of the surfaces at once. 
close all; 
delete *.stl; %Deletes all previous stl files in the current location that your matlab is pointing to.
pumpkin; %Creates the surface of the pumpkin using beizer patches 
mouth; %Creates the mouth of the pumpkin using nurbs extrusion
nose; %Creates the nose of the pumpkin using nurbs extrusion 
lefteye; %Creates the left eye of the pumpkin using nurbs extrusion 
righteye; %Creates the right eye of the pumpkin using nurbs extrusion 
view(90,0);