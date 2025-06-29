function [area, fig] = problema1_red()
    % Guía para el usuario
    disp('Problema: Optimización de Ancho de Banda en Redes de Comunicación');
    disp('Por favor, ingrese los siguientes valores:');
    
    % Solicitar el tiempo de inicio
    t_inicio = input('Ingrese el tiempo de inicio de la simulación (por ejemplo, 0): ');
    
    % Solicitar el tiempo final
    t_fin = input('Ingrese el tiempo final de la simulación (por ejemplo, 10): ');
    
    % Solicitar el ancho máximo de banda
    ancho_maximo = input('Ingrese el ancho máximo de la red en Mbps (por ejemplo, 100): ');
    
    % Definir la función de tráfico (curva exponencial decaying)
    f = @(t) ancho_maximo * exp(-0.1 * t);  % Función de tráfico
    
    % Calcular la integral (área bajo la curva)
    area = integral(f, t_inicio, t_fin);
    
    % Mostrar el resultado al usuario
    disp(['El área bajo la curva (ancho de banda total utilizado) es: ', num2str(area), ' Mbps*s']);
    
    % Graficar el tráfico
    t = linspace(t_inicio, t_fin, 100);  % Tiempo para graficar
    y = f(t);  % Datos de la curva
    fig = figure;
    plot(t, y);
    title('Optimización de Ancho de Banda');
    xlabel('Tiempo (s)');
    ylabel('Ancho de Banda (Mbps)');
end
