function [energia_senal, fig] = problema3_senal()
    % Guía para el usuario
    disp('Problema: Análisis de Señales en Sistemas de Comunicación');
    disp('Por favor, ingrese los siguientes valores:');
    
    % Solicitar el tiempo de inicio
    t_inicio = input('Ingrese el tiempo de inicio de la simulación (por ejemplo, 0): ');
    
    % Solicitar el tiempo final
    t_fin = input('Ingrese el tiempo final de la simulación (por ejemplo, 10): ');
    
    % Solicitar la amplitud máxima de la señal
    amplitud = input('Ingrese la amplitud máxima de la señal (por ejemplo, 1): ');
    
    % Definir la señal (función de onda sinusoidal)
    f = @(t) amplitud * sin(2 * pi * 10 * t);  % Señal sinusoidal
    
    % Calcular la energía de la señal (integral del cuadrado de la señal)
    energia_senal = integral(@(t) f(t).^2, t_inicio, t_fin);
    
    % Mostrar el resultado al usuario
    disp(['La energía total de la señal es: ', num2str(energia_senal), ' J (Joules)']);
    
    % Graficar la señal con dispersión
    t = linspace(t_inicio, t_fin, 100);  % Tiempo para graficar
    y = f(t);  % Datos de la señal
    fig = figure;
    scatter(t, y, 50, 'filled', 'MarkerFaceColor', [1 0.6 0.2]);  % Gráfico de dispersión
    title('Análisis de Señal');
    xlabel('Tiempo (s)', 'FontWeight', 'bold');
    ylabel('Amplitud', 'FontWeight', 'bold');
    grid on;
    set(gca, 'FontSize', 12);
    legend('Señal de Comunicación', 'Location', 'Best');
end
