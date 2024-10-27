
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
	@swipl -s co_primos.pl -g "(coprime(6, 9) -> write('6 es coprimo de 9: true') ; write('6 es coprimo de 9: false')), nl, halt." || echo "El predicado no existe en co_primos.pl."	
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

	@echo "Ejecutando totiente_mejorada.pl..."
	@swipl -s totiente_mejorada.pl -g "totient_improved(10, Phi), write('totient_improved(10).'), nl, write('Phi = '), write(Phi), nl, halt." || echo "El predicado no existe en totiente_mejorada.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando comparar_totientes.pl..."
	@swipl -s comparar_totientes.pl -g "write('compare_totient(10).'), nl, compare_totient(10), nl, halt." || echo "El predicado no existe en comparar_totientes.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando primos_rango.pl..."
	@swipl -s primos_rango.pl -g "prime_list(10, 30, Primes), write('prime_list(10, 30).'), nl, write('Primes = '), write(Primes), nl, halt." || echo "El predicado no existe en primos_rango.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando goldbach.pl..."
	@swipl -s goldbach.pl -g "goldbach(28, [P1, P2]), format('goldbach(28) = [P1: ~w, P2: ~w]~n', [P1, P2]), halt." || echo "El predicado no existe en goldbach.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando composiciones_goldbach.pl..."
	@swipl -s composiciones_goldbach.pl -g "write('goldbach_list(4, 20)'), nl, goldbach_list(4, 20), nl, halt." || echo "El predicado no existe en composiciones_goldbach.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando tabla_verdad.pl..."
	@swipl -s tabla_verdad.pl -g "write('generate_truth_table'), nl, generate_truth_table, nl, halt." || echo "El predicado no existe en tabla_verdad.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando tabla_verdad_operadores.pl..."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(and)'), nl, generate_truth_table(and), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(or)'), nl, generate_truth_table(or), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(nand)'), nl, generate_truth_table(nand), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(nor)'), nl, generate_truth_table(nor), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(xor)'), nl, generate_truth_table(xor), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(impl)'), nl, generate_truth_table(impl), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@swipl -s tabla_verdad_operadores.pl -g "write('generate_truth_table(equ)'), nl, generate_truth_table(equ), nl, halt." || echo "El predicado no existe en tabla_verdad_operadores.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando gray.pl..."
	@swipl -s gray.pl -g "gray(3, C), write('gray(3)'), nl, write('C = '), write(C), nl, halt." || echo "El predicado no existe en gray.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando huffman.pl..."
	@swipl -s huffman.pl -g "ejecutar, nl, halt." || echo "El predicado no existe en huffman.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando es_arbol.pl..."
	@swipl -s co_primos.pl -g "(coprime(14, 15) -> write('14 es coprimo de 15: true') ; write('14 es coprimo de 15: false')), nl, halt." || echo "El predicado no existe en primo.pl."	
	@swipl -s es_arbol.pl -g "(istree(t(n, t(k, t(c, t(a, nil, nil), t(e, t(d, nil, nil), t(g, nil, nil))), t(m, nil, nil)), t(u, t(p, nil, t(q, nil, nil)), nil))) -> write('istree(t(n, t(k, t(c, t(a, nil, nil), t(e, t(d, nil, nil), t(g, nil, nil)))) = true') ; write('istree(t(n, t(k,t(c, t(a, nil, nil), t(e, t(d, nil, nil), t(g, nil, nil)))) = false')), nl, halt." || echo "El predicado no existe en es_arbol.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando construir_arbol.pl..."
	@swipl -s construir_arbol.pl -g "cbal_tree(3, Tree), write('cbal_tree(3)'), nl, write('Tree = '), write(Tree), nl, halt." || echo "El predicado no existe en construir_arbol.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando arboles_simetricos.pl..."
	@swipl -s arboles_simetricos.pl -g "symmetric(t(a, t(b, t(c, nil, nil), t(d, nil, nil)), t(b, t(d, nil, nil), t(c, nil, nil)))) -> write('symmetric(t(a, t(b, t(c, nil, nil), t(d, nil, nil)), t(b, t(d, nil, nil), t(c, nil, nil)))) = true') ; write('symmetric(t(a, t(b, t(c, nil, nil), t(d, nil, nil)), t(b, t(d, nil, nil), t(c, nil, nil)))) = false'), nl, halt." || echo "El predicado no existe en arboles_simetricos.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando arbol_busqueda.pl..."
	@swipl -s arbol_busqueda.pl -g "construct([5, 3, 8, 1, 4, 7, 9], Tree), write('construct([5, 3, 8, 1, 4, 7, 9])'), nl, write('Tree = '), write(Tree), nl, halt." || echo "El predicado no existe en arbol_busqueda.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando paradigma_arbol.pl..."
	@swipl -s paradigma_arbol.pl -g "show_symmetric_trees(5), nl, halt." || echo "El predicado no existe en paradigma_arbol.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando arbol_altura.pl..."
	@swipl -s arbol_altura.pl -g "hbal_tree(3, Tree), write('hbal_tree(3)'), nl, write('Tree = '), write(Tree), nl, halt." || echo "El predicado no existe en arbol_altura.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"


