function [energia_total, fig] = problema2_senal()
    % Guía para el usuario
    disp('Problema: Análisis de Consumo Energético en Sistemas de Computación');
    disp('Por favor, ingrese los siguientes valores:');
    
    % Solicitar el tiempo de inicio
    t_inicio = input('Ingrese el tiempo de inicio de la simulación (por ejemplo, 0): ');
    
    % Solicitar el tiempo final
    t_fin = input('Ingrese el tiempo final de la simulación (por ejemplo, 10): ');
    
    % Solicitar la potencia máxima del sistema
    potencia_maxima = input('Ingrese la potencia máxima del sistema en W (por ejemplo, 50): ');
    
    % Definir la función de potencia (curva polinómica)
    f = @(t) potencia_maxima * (1 - exp(-0.05 * t));  % Función de potencia
    
    % Calcular la integral (energía total consumida)
    energia_total = integral(f, t_inicio, t_fin);
    
    % Mostrar el resultado al usuario
    disp(['La energía total consumida es: ', num2str(energia_total), ' J (Joules)']);
    
    % Graficar el consumo de energía con área
    t = linspace(t_inicio, t_fin, 100);  % Tiempo para graficar
    y = f(t);  % Datos de la curva
    fig = figure;
    area(t, y, 'FaceColor', [0.2 0.6 1], 'EdgeColor', 'none');  % Gráfico de área
    title('Consumo Energético del Sistema');
    xlabel('Tiempo (s)', 'FontWeight', 'bold');
    ylabel('Potencia (W)', 'FontWeight', 'bold');
    grid on;
    set(gca, 'FontSize', 12);
    legend('Consumo de Potencia', 'Location', 'Best');
end
