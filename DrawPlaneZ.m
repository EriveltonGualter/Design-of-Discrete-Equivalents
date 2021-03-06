function DrawPlaneZ(w)
%DrawPlaneS Resposible to draw the 's' plane

    axes1 = 0;
    axes2 = 6;

    global rec1_handle circHandle X1axes_handle X2axes_handle ...
        Y1axes_handle Y2axes_handle seta1 seta2 seta3 seta4;

    if isempty(rec1_handle)
        rec1_handle = rectangle(...
            'Position',[axes1-3, -w/2, 3, w],...
            'Curvature',[0, 0],...   
            'LineWidth',1,...
            'FaceColor',0.8*[1,1,1],...
            'EdgeColor',0.8*[1,1,1]);  %Darker version of color
    else
        set(rec1_handle,...
            'Position',[axes1-3, -w/2, 3, w]);
    end
    
    if isempty(circHandle)
        circHandle = rectangle(...
            'Position',[axes2-1, -1, 2, 2],...
            'Curvature',[1, 1],...   
            'LineWidth',1,...
            'FaceColor',0.8*[1,1,1],...
            'EdgeColor',[0,0,0]);  %Darker version of color
    else
        set(circHandle,...
            'Position',[axes2-1, -1, 2, 2]);
    end
       
    if isempty(X1axes_handle)
        X1axes_handle = plot([axes1-3 , axes1+2], [0, 0],...
            'LineWidth',1,...
            'Color',[0,0,0]);
    else
        set(X1axes_handle,...
            'xData',[axes1-3 , axes1+2],...
            'yData',[0, 0]);
    end
    
    if isempty(X2axes_handle)
        X2axes_handle = plot([axes2-3 , axes2+2], [0, 0],...
            'LineWidth',1,...
            'Color',[0,0,0]);
    else
        set(X2axes_handle,...
            'xData',[axes2-3 , axes2+2],...
            'yData',[0, 0]);
    end
    
    if isempty(Y1axes_handle)
        Y1axes_handle = plot([ axes1, axes1], [-w/2, w/2],...
            'LineWidth',1,...
            'Color',[0,0,0]);
    else
        set(Y1axes_handle,...
            'xData',[ axes1, axes1],...
            'yData',[-w/2, w/2]);
    end
    
    if isempty(Y2axes_handle)
        Y2axes_handle = plot([ axes2, axes2], [-w/2, w/2],...
            'LineWidth',1,...
            'Color',[0,0,0]);
    else
        set(Y2axes_handle,...
            'xData',[ axes2, axes2],...
            'yData',[-w/2, w/2]);
    end
    
    s1x = [-0.05 0 0.05];
    s1y = [0 0.2 0];
    if isempty(seta1)
        seta1 = patch(...
            axes1 + s1x,...
            w/2 + s1y,...
            [0,0,0]);
    else
        set(seta1,...
            'XData', axes1 + s1x,...
            'YData', w/2 + s1y);
    end
    
    s2x = [0 0.2 0];
    s2y = [0.05 0 -0.05];
    if isempty(seta2)
        seta2 = patch(...
            w/2 + s2x,...
            s2y,...
            [0,0,0]);
    else
        set(seta2,...
            'XData', w/2 + s2x,...
            'YData', s2y);
    end
    
    s3x = [-0.05 0 0.05];
    s3y = [0 0.2 0];
    if isempty(seta3)
        seta3 = patch(...
            axes2 + s3x,...
            w/2 + s3y,...
            [0,0,0]);
    else
        set(seta3,...
            'XData', axes2 + s3x,...
            'YData', w/2 + s3y);
    end
    
    s4x = [0 0.2 0];
    s4y = [0.05 0 -0.05];
    if isempty(seta4)
        seta4 = patch(...
            axes2+w/2 + s4x,...
            s4y,...
            [0,0,0]);
    else
        set(seta4,...
            'XData', axes2+w/2 + s4x,...
            'YData', s4y);
    end
    
    txt1 = 'Im'; txt2 = 'Re'; txt3 = '-1'; txt4 = '1'; 
    txt5 = 'Plano s'; txt6 = 'Plano z'; 
    text(axes1+0.1, w/2+0.2, txt1, 'Color','black','FontAngle','italic','FontSize',12,'FontName','Times New Roman')
    text(axes2+0.1, w/2+0.2, txt1, 'Color','black','FontAngle','italic','FontSize',12,'FontName','Times New Roman')
    text(axes1+2.2, 0.2, txt2, 'Color','black','FontAngle','italic','FontSize',12,'FontName','Times New Roman')
    text(axes2+2.2, 0.2, txt2, 'Color','black','FontAngle','italic','FontSize',12,'FontName','Times New Roman')
    text(axes2-1-0.4, -0.2, txt3, 'Color','black','FontAngle','italic','FontSize',12)
    text(axes2+1, -0.2, txt4, 'Color','black','FontAngle','italic','FontSize',12)
    text(axes1-0.8, -(w/2+0.2), txt5, 'Color','black','FontAngle','italic','FontSize',12,'FontName','Times New Roman')
    text(axes2-0.8, -(w/2+0.2), txt6, 'Color','black','FontAngle','italic','FontSize',12,'FontName','Times New Roman')
    
    axis equal; axis([axes1-3 axes2+2.2 -(w/2+0.2) (w/2+0.5)]); axis off;
    drawnow;
end

