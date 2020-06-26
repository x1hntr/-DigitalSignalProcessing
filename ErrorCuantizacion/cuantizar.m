function xc=cuantizar(x, L)
% FUNCION PARA DETERMINAR: Un vector a un valor cuantizado por niveles
% x vector a cuatificar
% L numero de niveles
M=linspace(-1, 1, L);
save=1;
for j=1:length(x)
    n=abs(M(1)-x(j));
    for i=1:length(M)
        if abs(M(i)-x(j))<=n
            save=i;
            n=abs(M(i)-x(j));
        end
        xc(j)=M(save);
    end
end
end