% ===============================================
% Autor: Erick Corrales
% Fecha: 22 de octubre de 2024
% Descripción: Programa en Prolog que extrae un numero dado de elementos
%              seleccionados aleatoriamente de una lista
% ===============================================

% -------- Código en Python (comentado) ------------
% import random

% def rnd_select(lista, n):
%     % Caso base: si N es 0, devuelve una lista vacía
%     if n == 0:
%         return []
%     
%     % Si la lista está vacía y se solicita un número mayor a 0, retorna una lista vacía
%     if not lista:
%         return []
%     
%     % Seleccionar un índice aleatorio
%     index = random.randint(0, len(lista) - 1)
%     selected_element = lista[index]
%     
%     % Crear una nueva lista sin el elemento seleccionado
%     nueva_lista = lista[:index] + lista[index + 1:]
%     
%     % Llamada recursiva para seleccionar los elementos restantes
%     return [selected_element] + rnd_select(nueva_lista, n - 1)
%
% lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
% n = 3  % Número de elementos a seleccionar
% selected_elements = rnd_select(lista, n)
% -----------------------------------------

% -------- Código en Prolog --------------------

% Predicado rnd_select(L, N, [X|R]) que extrae un numero dado de elementos aleatorios de una lista

% Extrae un número dado de elementos aleatorios de una lista.
% Utiliza un generador de números aleatorios y elimina los elementos seleccionados.
rnd_select(_, 0, []).
rnd_select(L, N, [X|R]) :- 
    length(L, Len),
    random(1, Len, I),
    element_at(X, L, I),
    delete(L, X, L1),
    N1 is N - 1,
    rnd_select(L1, N1, R).

% Extrae el elemento en la posición I de la lista L.
element_at(X, [X|_], 1). % Caso base: el primer elemento.
element_at(X, [_|T], I) :- 
    I > 1, 
    I1 is I - 1, 
    element_at(X, T, I1). % Llama recursivamente para obtener el siguiente elemento.
% -----------------------------------------------------------------
% Ejemplos de uso
% ?- rnd_select([a, b, c, d, e], 2, R).
% Output:
% R = [X, Y]. % X y Y son elementos aleatorios de la lista original.
% -----------------------------------------------------------------
