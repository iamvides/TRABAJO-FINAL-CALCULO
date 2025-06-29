function [error_compresion, fig] = problema4_compresion()
    % Guía para el usuario
    disp('Problema: Evaluación de la Eficiencia en Algoritmos de Compresión de Datos');
    disp('Por favor, ingrese los siguientes valores:');
    
    % Solicitar el tiempo de inicio
    t_inicio = input('Ingrese el tiempo de inicio de la simulación (por ejemplo, 0): ');
    
    % Solicitar el tiempo final
    t_fin = input('Ingrese el tiempo final de la simulación (por ejemplo, 10): ');
    
    % Definir las funciones de los datos originales y comprimidos
    f_original = @(t) exp(-0.1 * t);  % Datos originales
    f_comprimido = @(t) exp(-0.05 * t);  % Datos comprimidos
    
    % Calcular la integral del error entre ambas curvas
    error_compresion = integral(@(t) abs(f_original(t) - f_comprimido(t)), t_inicio, t_fin);
    
    % Mostrar el resultado al usuario
    disp(['El error de compresión total es: ', num2str(error_compresion), ' unidades']);
    
    % Graficar los valores originales vs comprimidos con barras
    t = linspace(t_inicio, t_fin, 10);  % Menos puntos para gráficos de barras
    y_original = f_original(t);  % Datos originales
    y_comprimido = f_comprimido(t);  % Datos comprimidos
    fig = figure;
    bar(t, [y_original' y_comprimido'], 'grouped');  % Gráfico de barras agrupadas
    title('Error de Compresión de Datos');
    xlabel('Tiempo (s)', 'FontWeight', 'bold');
    ylabel('Datos', 'FontWeight', 'bold');
    grid on;
    set(gca, 'FontSize', 12);
    legend('Original', 'Comprimido', 'Location', 'Best');
end
