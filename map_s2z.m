function map_s2z(T)

    axes2 = 6;
    N = 50;

    for k=linspace(0, pi/2, N)
        real = exp(0*T);
        imag = exp(T*k*i);
        
        s = k*T*i;
        plot(s, '.','MarkerSize', 8, 'Color', 'red');
        z = real*imag + axes2;
        plot(z, '.','MarkerSize', 8, 'Color', 'red');
        pause(0.005);
    end
    pause();
    
    for k=linspace(pi/2, pi, N)
        real = exp(0*T);
        imag = exp(T*k*i);
        
        s = k*T*i;
        plot(s, '.','MarkerSize', 8, 'Color', 'blue');
        z = real*imag + axes2;
        plot(z, '.','MarkerSize', 8, 'Color', 'blue');
        pause(0.005);
    end
    pause();
    
    imag=exp(i*pi);
    for k=linspace(0, 3, N);
        real = exp(-k*T);
        z = real*imag + axes2;
        c = -k*T+pi*i;
        plot(c, '.','MarkerSize', 8, 'Color', 'green');
        plot(z, '.','MarkerSize', 8, 'Color', 'green');
    end
    pause();
    
    imag=exp(i*pi);
    for k=linspace(0, 3, N);
        k1 = 3 - k;
        real = exp(-k1*T);
        z = real*imag + axes2;
        c= -k1*T - pi*i;
        plot(c, '.','MarkerSize', 8, 'Color', 'yellow');
        plot(z, '.','MarkerSize', 8, 'Color', 'yellow');
    end
    pause();
    
    for k=linspace(-pi, -pi/2, N)
        real = exp(0*T);
        imag = exp(T*k*i);
        
        s = k*T*i;
        plot(s, '.','MarkerSize', 8, 'Color', 'cyan');
        z = real*imag + axes2;
        plot(z, '.','MarkerSize', 8, 'Color', 'cyan');
        pause(0.005);
    end
    pause();

    for k=linspace(-pi/2, 0, N)
        real = exp(0*T);
        imag = exp(T*k*i);
        
        s = k*T*i;
        plot(s, '.','MarkerSize', 8, 'Color', 'magenta');
        z = real*imag + axes2;
        plot(z, '.','MarkerSize', 8, 'Color', 'magenta');
        pause(0.005);
    end
    
end

