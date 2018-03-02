    clear,close
    N=14
    Rule1 = 'FF';
    Rule2 = '--FXF++FXF++FXF--';
    X = 'FXF--FF--FF';
    teta = pi/3;
    alfa = 0;
    u=1; %ƒл€ передачи правил в массив
    i=1; %—четчик итераций
    j=1; %—четчик элементов аксиомы
    v=1; %—четчик элментов новой аксиомы
    while i<N+1
        len_X = length(X);
        while j<len_X+1
            if X(j) == 'F'
                while u<length(Rule1)+1
                    H(v) = Rule1(u);
                    u=u+1;
                    v=v+1;
                end
            elseif X(j)=='X'
                while u<length(Rule2)+1
                    H(v) = Rule2(u);
                    u=u+1;
                    v=v+1;
                end
            elseif X(j)=='-'
                H(v) = '-';
                v=v+1;
            elseif X(j) =='+'
                H(v) = '+';
                v=v+1;
            end 
            u=1;
            j=j+1;
        end
        i=i+1;
        X=H;
        j=1;
        v=1;
    end
    %line = animatedline;
    i=2;
    j=1;
    x(1)=0;
    y(1)=0;
    %addpoints(line,x(1),y(1));
    %drawnow
    while j<length(X)+1
        if X(j) == 'F'
                x(i) = x(i-1)+cos(alfa);
                y(i) = y(i-1)+sin(alfa);
                %addpoints(line,x(i),y(i));
                i=i+1;
                %drawnow
        elseif X(j)=='-'
                alfa = alfa-teta;
        elseif X(j) =='+'
                alfa = alfa+teta;
        end 
        j=j+1;
    end
    
