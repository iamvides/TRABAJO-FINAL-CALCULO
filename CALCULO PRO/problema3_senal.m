function [usuarios_totales, fig] = problema5_usuarios()
    % Guía para el usuario
    disp('Problema: Modelado del Crecimiento de Usuarios en un Sistema Informático');
    disp('Por favor, ingrese los siguientes valores:');
    
    % Solicitar el tiempo de inicio
    t_inicio = input('Ingrese el tiempo de inicio de la simulación (por ejemplo, 0): ');
    
    % Solicitar el tiempo final
    t_fin = input('Ingrese el tiempo final de la simulación (por ejemplo, 100): ');
    
    % Solicitar la capacidad máxima de usuarios
    K = input('Ingrese la capacidad máxima de usuarios del sistema (por ejemplo, 1000): ');
    
    % Solicitar la tasa de crecimiento
    r = input('Ingrese la tasa de crecimiento de usuarios (por ejemplo, 0.1): ');
    
    % Solicitar el tiempo de inflexión
    t_0 = input('Ingrese el tiempo de inflexión (por ejemplo, 50): ');
    
    % Definir la función logística
    f = @(t) K ./ (1 + exp(-r * (t - t_0)));  % Función logística
    
    % Calcular el número total de usuarios
    usuarios_totales = integral(f, t_inicio, t_fin);
    
    % Mostrar el resultado al usuario
    disp(['El número total de usuarios durante el periodo es: ', num2str(usuarios_totales)]);
    
    % Graficar el crecimiento de usuarios con puntos marcados
    t = linspace(t_inicio, t_fin, 100);  % Tiempo para graficar
    y = f(t);  % Datos de usuarios
    fig = figure;
    plot(t, y, 'LineWidth', 2, 'Color', [0.1 0.7 0.2], 'Marker', 'o', 'MarkerFaceColor', [0.8 0.2 0.2]);  % Líneas con puntos
    title('Crecimiento de Usuarios');
    xlabel('Tiempo (s)', 'FontWeight', 'bold');
    ylabel('Número de Usuarios', 'FontWeight', 'bold');
    grid on;
    set(gca, 'FontSize', 12);
    legend('Crecimiento de Usuarios', 'Location', 'Best');
end
