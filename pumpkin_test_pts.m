      d = 0.80; r = 3.343; rn1 = 2*pi/96; r0 = 4*pi/96; r1 = 6*pi/96; r2 = 10*pi/96; r3 = 14*pi/96; r4 = 18*pi/98; r5 = 20*pi/96; r6 = 22*pi/96; r7 = 24*pi/96; i = 1/2; verts = [ 0 0 3; % Start
            0 0 3;
            0 0 3;
            0 0 3; % End
            d*cos(r1) d*sin(r1) 4; % Start
            cos(r2) sin(r2) 4;
            cos(r3) sin(r3) 4;
            d*cos(r4) d*sin(r4) 4; % End
            d*r*cos(r1) d*r*sin(r1) 3.5; % Start
            r*cos(r2) r*sin(r2) 3.5;
            r*cos(r3) r*sin(r3) 3.5;
            d*r*cos(r4) d*r*sin(r4) 3.5; % End
            d*r*cos(r1) d*r*sin(r1) 2; % Start
            r*cos(r2) r*sin(r2) 2;
            r*cos(r3) r*sin(r3) 2;
            d*r*cos(r4) d*r*sin(r4) 2; % End
            d*r*cos(r1) d*r*sin(r1) 0.5; % Start
            r*cos(r2) r*sin(r2) 0.5;
            r*cos(r3) r*sin(r3) 0.5;
            d*r*cos(r4) d*r*sin(r4) 0.5; % End
            d*cos(r1) d*sin(r1) 0; % Start
            cos(r2) sin(r2) 0;
            cos(r3) sin(r3) 0;
            d*cos(r4) d*sin(r4) 0; % 
            0 0 1;
            0 0 1;
            0 0 1;
            0 0 1; %
            d*cos(r0) d*sin(r0) 4; %%%%%%%%%%%%%% 
            cos(rn1) sin(rn1) 4;
            cos(0) sin(0) 4;  % 1
            d*r*cos(r0) d*r*sin(r0) 3.5;
            r*cos(rn1) r*sin(rn1) 3.5;
            r*cos(0) r*sin(0) 3.5; % 2
            d*r*cos(r0) d*r*sin(r0) 2;
            r*cos(rn1) r*sin(rn1) 2;
            r*cos(0) r*sin(0) 2; % 3 
            d*r*cos(r0) d*r*sin(r0) 0.5;
            r*cos(rn1) r*sin(rn1) 0.5
            r*cos(0) r*sin(0) 0.5; % 4
            d*cos(r0) d*sin(r0) 0;
            cos(rn1) sin(rn1) 0;
            cos(0) sin(0) 0; %%%%%%%%%%
            d*cos(r5) d*sin(r5) 4;
            cos(r6) sin(r6) 4;
            cos(r7) sin(r7) 4;  % 1
            d*r*cos(r5) d*r*sin(r5) 3.5;
            r*cos(r6) r*sin(r6) 3.5;
            r*cos(r7) r*sin(r7) 3.5; % 2
            d*r*cos(r5) d*r*sin(r5) 2;
            r*cos(r6) r*sin(r6) 2;
            r*cos(r7) r*sin(r7) 2; % 3 
            d*r*cos(r5) d*r*sin(r5) 0.5;
            r*cos(r6) r*sin(r6) 0.5
            r*cos(r7) r*sin(r7) 0.5; % 4
            d*cos(r5) d*sin(r5) 0;
            cos(r6) sin(r6) 0;
            cos(r7) sin(r7) 0;
            ]; %
%         quad_body = cat(3,[
%                    % body                      
%                       1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16] , [
%                       13 14 15 16; 17 18 19 20;21 22 23 24;25 26 27 28]);
