
# Define el objetivo por defecto
all: run

# Regla para ejecutar los programas
run:
	@clear

	@echo "Ejecutando numero_lista.pl..."
	@swipl -s numero_lista.pl -g "my_last(X, [a, b, c, d]), write('my_last(X, [a, b, c, d])'), nl, write('X = '), write(X), nl, halt." || echo "El predicado no existe en numero_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando penultimo.pl..."
	@swipl -s penultimo.pl -g "penultimate(X, [a, b, c, d]), write('penultimate(X, [a, b, c, d])'), nl, write('X = '), write(X), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando k_esimo.pl..."
	@swipl -s k_esimo.pl -g "element_at(X, [a, b, c, d], 3), write('element_at(X, [a, b, c, d], 3)'), nl, write('X = '), write(X), nl, halt." || echo "El predicado no existe en k_esimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando elemento_lista.pl..."
	@swipl -s elemento_lista.pl -g "list_length([a, b, c, d], N), write('list_length([a, b, c, d])'), nl, write('N = '), write(N), nl, halt." || echo "El predicado no existe en elemento_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando invertir_lista.pl..."
	@swipl -s invertir_lista.pl -g "reverse_list([a, b, c, d], R), write('reverse_list([a, b, c, d]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en invertir_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando palindromo.pl..."
	@swipl -s palindromo.pl -g "(palindrome([a, b, a]) -> write('La lista [a, b, a] es palindromo: true') ; write('La lista [a, b, a] es palindromo: false')), nl, halt." || echo "El predicado no existe en palindromo.pl."
	@swipl -s palindromo.pl -g "(palindrome([a, b, a, c]) -> write('La lista [a, b, a, c] es palindromo: true') ; write('La lista [a, b, a, c] es palindromo: false')), nl, halt." || echo "El predicado no existe en palindromo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando aplanar.pl..."
	@swipl -s aplanar.pl -g "my_flatten([1, [2, [3, 4], 5], 6], Flat), write('Flat[1, [2, [3, 4], 5], 6]] = '), write(Flat), nl, halt." || echo "El predicado no existe en aplanar.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando eliminar_duplicados.pl..."
	@swipl -s eliminar_duplicados.pl -g "compress([a, a, b, b, c, a, a], R), write('compress([a, a, b, b, c, a, a]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en eliminar_duplicados.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando agrupar_duplicados.pl..."
	@swipl -s agrupar_duplicados.pl -g "pack([a, a, b, b, c, a, a], R), write('pack([a, a, b, b, c, a, a]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en agrupar_duplicados.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando run_length.pl..."
	@swipl -s run_length.pl -g "encode([a, a, a, b, b, c, c, c, c, d], R), write('encode([a, a, a, b, b, c, c, c, c, d]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en run_length.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando modificar_runLength.pl..."
	@swipl -s modificar_runLength.pl -g "encode_modified([a, a, a, b, c, c, a, a, d, e, e, e], R), write('encode_modified([a, a, a, b, c, c, a, a, d, e, e, e])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en modificar_runLength.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando decodificar_runLength.pl..."
	@swipl -s decodificar_runLength.pl -g "decode([[3,a],[1,b],[2,c]], R), write('decode([[3,a],[1,b],[2,c]])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en decodificar_runLength.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando codificacion_directa.pl..."
	@swipl -s codificacion_directa.pl -g "encode_direct([a, a, a, b, c, c, a, a, d, e, e, e], R), write('encode_direct([a, a, a, b, c, c, a, a, d, e, e, e])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en codificacion_directa.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando duplicar_elementos.pl..."
	@swipl -s duplicar_elementos.pl -g "dupli([a, b, c], R), write('dupli([a, b, c])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en duplicar_elementos.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando duplicar_nVeces.pl..."
	@swipl -s duplicar_nVeces.pl -g "dupli([a, b, c], 3, R), write('dupli([a, b, c], 3)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en duplicar_nVeces.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando eliminar_nesimo.pl..."
	@swipl -s eliminar_nesimo.pl -g "drop([a, b, c, d, e, f, g, h, i], 3, R), write('drop([a, b, c, d, e, f, g, h, i], 3)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en eliminar_nesimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando dividir_lista.pl..."
	@swipl -s dividir_lista.pl -g "split([a, b, c, d, e], 3, L1, L2), write('split([a, b, c, d, e], 3, L1, L2)'), nl, write('L1 = '), write(L1), nl, write('L2 = '), write(L2), nl, halt." || echo "El predicado no existe en dividir_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando extraer_lista.pl..."
	@swipl -s extraer_lista.pl -g "slice([a, b, c, d, e, f], 3, 5, R), write('slice([a, b, c, d, e, f], 3, 5)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en extraer_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando rotar_lista.pl..."
	@swipl -s rotar_lista.pl -g "rotate([1, 2, 3, 4, 5], 2, R), write('rotate([1, 2, 3, 4, 5], 2)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en rotar_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando eliminar_kesimo.pl..."
	@swipl -s eliminar_kesimo.pl -g "remove_at(X, [a, b, c, d], 1, R), write('remove_at(X, [a, b, c, d], 1)'), nl, write('X = '), write(X), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en eliminar_kesimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando insertar_elemento.pl..."
	@swipl -s insertar_elemento.pl -g "insert_at(a, [b, c], 1, R), write('insert_at(a, [b, c], 1'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en insertar_elemento.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando crear_lista_enteros.pl..."
	@swipl -s crear_lista_enteros.pl -g "range(1, 5, R), write('range(1, 5)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en crear_lista_enteros.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando extraer_aleatorio.pl..."
	@swipl -s extraer_aleatorio.pl -g "rnd_select([a, b, c, d, e], 2, R), write('rnd_select([a, b, c, d, e], 2)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en extraer_aleatorio.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando loteria.pl..."
	@swipl -s loteria.pl -g "lotto(3, 50, L), write('lotto(3, 50)'), nl, write('L = '), write(L), nl, halt." || echo "El predicado no existe en loteria.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando permutacion.pl..."
	@swipl -s permutacion.pl -g "rnd_permu([a, b, c, d], P), write('rnd_permu([a, b, c, d])'), nl, write('P = '), write(P), nl, halt." || echo "El predicado no existe en permutacion.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando combinaciones.pl...\ncombination(2, [a, b, c])"
	@swipl -s combinaciones.pl -g "combination(2, [a, b, c], Comb), write('Comb = '), write(Comb), nl, fail; true, halt." || echo "El predicado no existe en combinaciones.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando agrupar.pl...\ngroup([2, 2, 2], [1, 2, 3, 4, 5, 6])"
	@swipl -s agrupar.pl -g "group([2, 2, 2], [1, 2, 3, 4, 5, 6], Gs), write('Gs = '), write(Gs), nl, fail; true, halt." || echo "El predicado no existe en agrupar.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando ordenar_lista_listas.pl..."
	@swipl -s ordenar_lista_listas.pl -g "lsort([[a, b], [c], [d, e, f]], Sorted), write('lsort([[a, b], [c], [d, e, f]])'), nl, write('Sorted = '), write(Sorted), nl, halt." || echo "El predicado no existe en ordenar_lista_listas.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando ordena_frecuencia.pl..."
	@swipl -s ordena_frecuencia.pl -g "length_frequency([[a,b],[c],[d,e,f],[g]],F), write('length_frequency([[a,b],[c],[d,e,f],[g]])'), nl, write('F = '), write(F), nl, halt." || echo "El predicado no existe en ordenar_frecuencia.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando primo.pl..."
	@swipl -s primo.pl -g "(is_prime(5) -> write('5 es primo: true') ; write('5 es primo: false')), nl, halt." || echo "El predicado no existe en primo.pl."	
	@swipl -s primo.pl -g "(is_prime(15) -> write('15 es primo: true') ; write('15 es primo: false')), nl, halt." || echo "El predicado no existe en primo.pl."	
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando mcd.pl..."
	@swipl -s mcd.pl -g "gcd(48, 18, G), write('gcd(48, 18)'), nl, write('G = '), write(G), nl, halt." || echo "El predicado no existe en mcd.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando co_primos.pl..."
	@swipl -s co_primos.pl -g "(coprime(14, 15) -> write('14 es coprimo de 15: true') ; write('14 es coprimo de 15: false')), nl, halt." || echo "El predicado no existe en primo.pl."	
	@swipl -s co_primos.pl -g "(coprime(7, 50) -> write('7 es coprimo de 50: true') ; write('7 es coprimo de 50: false')), nl, halt." || echo "El predicado no existe en co_primos.pl."	
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando totiente.pl..."
	@swipl -s totiente.pl -g "totient(10, Phi), write('totient(10)'), nl, write('Phi = '), write(Phi), nl, halt." || echo "El predicado no existe en totiente.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando factores_primos.pl..."
	@swipl -s factores_primos.pl -g "prime_factors(28, L), write('prime_factors(28)'), nl, write('L = '), write(L), nl, halt." || echo "El predicado no existe en factores_primos.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando factores_multiplicidad.pl..."
	@swipl -s factores_multiplicidad.pl -g "prime_factors_mult(28, L), write('prime_factors_mult(28)'), nl, write('L = '), write(L), nl, halt." || echo "El predicado no existe en factores_multiplicidad.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"


