%% Nathan Flynn - ME 535 - Project 1
surface = 49;
for  theta = 0:pi/4:(2*pi-pi/4)
    N = 10; % number of intervals in u and v direction
    scale = 0.75; 
    offset = 0.2;
    pumpkin_test_pts;

    quad_body = cat(3,[
                       % body                      
                          1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16] , [
                          13 14 15 16; 17 18 19 20;21 22 23 24;25 26 27 28] , [
                          1 2 3 4; 5 29 30 31; 9 32 33 34; 13 35 36 37] , [ 
                          13 35 36 37; 17 38 39 40; 21 41 42 43; 25 26 27 28] , [ 
                          1 2 3 4; 8 44 45 46; 12 47 48 49; 16 50 51 52] , [ 
                          16 50 51 52; 20 53 54 55; 24 56 57 58; 25 26 27 28]);

    DisplayCP = false;

    quads = quad_body;  % tube - %Part 2               

    % quads = quad_lid; %Part 6
    CtrlPt=zeros(4,4,3); % CP for one bicubic patch
    xyz=zeros((4+1),(4+1),3);
    bu=zeros(1, N);
    bv=zeros(1, N);
    figure(1)
   hold on;
    axis equal;
    % axis off;
    ylabel('y');
    zlabel('z');
    xlabel('x');
    for k=1:size(quads,3)
            % get k-th patch's control points
            for i=1:4
                for j=1:4
                    for l=1:3
                        CtrlPt(i,j,l)=verts(quads(i,j,k),l);
                    end
                end
            end

            % compute (N+1)*(N+1) surface points
            for i=1:N+1
                for j=1:N+1
                    u= 0.0 + (i-1)*1.0/N;
                    v= 0.0 + (j-1)*1.0/N;
        %    v = 0;

                    u_ = 1.0 - u;
                    u2=u*u;

                    % cubic Bernstein polynomials in u

                    bu(1)=u*u2;
                    bu(2)=3.0*u2*u_;
                    bu(3)=3.0*u*u_*u_;
                    bu(4)=u_*u_*u_;


                    % cubic Bernstein polynomials in u

                    v_ = 1.0 - v;
                    v2=v*v;
                    bv(1)=v*v2; 
                    bv(2)=3.0*v2*v_; 
                    bv(3)=3.0*v*v_*v_; 
                    bv(4)=v_*v_*v_;

                    % patch evaluation for x, y, and z
                    for kk=1:3
                        tmp = 0.0;
                        % add 4*4 control points' contribution
                        for ii = 1:4
                            for jj = 1:4
                                if kk == 1
                                    pt = (CtrlPt(ii,jj,1)*cos(theta)- CtrlPt(ii,jj,2)*sin(theta))*scale;
                                    tmp = (tmp + bu(ii) * bv(jj) * pt);
                                elseif  kk == 2
                                    pt = (CtrlPt(ii,jj,1)*sin(theta) + CtrlPt(ii,jj,2)*cos(theta))*scale;
                                    tmp = (tmp + bu(ii) * bv(jj) * pt);
                                else
                                    pt = CtrlPt(ii,jj,kk)*scale + abs(CtrlPt(ii,jj,kk)*scale -CtrlPt(ii,jj,kk))/2 +offset;  
                                    tmp =( tmp + bu(ii) * bv(jj) * pt);
                                end    
                            end
                        end
                        xyz(i,j,kk) = tmp;
                    end
                end
            end

            % plot the patch
            p = surf(xyz(:,:,1),xyz(:,:,2),xyz(:,:,3));
            filename = sprintf('surf%d.stl',surface);
            surf2stl(filename,xyz(:,:,1),xyz(:,:,2),xyz(:,:,3));
            surface = surface + 1;
            p.EdgeColor=k*[1,0,0]/32; %'green'; %0.5*[1 1 1 ]
            p.FaceAlpha=1; %0.75;
            p.FaceColor = [0.5 0.5 0.75];
            if DisplayCP == true
                for i=1:4
                 plot3(CtrlPt(i,:,1),CtrlPt(i,:,2), CtrlPt(i,:,3),'-ro', 'linewidth',2,'MarkerFaceColor', 'r', 'MarkerSize',8);
                end
                for i=1:4
                 plot3(CtrlPt(:,i,1),CtrlPt(:,i,2), CtrlPt(:,i,3),'-b', 'linewidth',2);
                end
            end
    end
end