
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
	@swipl -s k_esimo.pl -g "element_at(X, [a, b, c, d], 3), write('element_at(X, [a, b, c, d], 3)'), nl, write('X = '), write(X), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando elemento_lista.pl..."
	@swipl -s elemento_lista.pl -g "list_length([a, b, c, d], N), write('list_length([a, b, c, d])'), nl, write('N = '), write(N), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando invertir_lista.pl..."
	@swipl -s invertir_lista.pl -g "reverse_list([a, b, c, d], R), write('reverse_list([a, b, c, d]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando palindromo.pl..."
	@swipl -s palindromo.pl -g "(palindrome([a, b, a]) -> write('La lista [a, b, a] es palindromo: true') ; write('La lista [a, b, a] es palindromo: false')), nl, halt." || echo "El predicado no existe en palindromo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando aplanar.pl..."
	@swipl -s aplanar.pl -g "my_flatten([1, [2, [3, 4], 5], 6], Flat), write('Flat[1, [2, [3, 4], 5], 6]] = '), write(Flat), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando eliminar_duplicados.pl..."
	@swipl -s eliminar_duplicados.pl -g "compress([a, a, b, b, c, a, a], R), write('compress([a, a, b, b, c, a, a]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando agrupar_duplicados.pl..."
	@swipl -s agrupar_duplicados.pl -g "pack([a, a, b, b, c, a, a], R), write('pack([a, a, b, b, c, a, a]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando run_length.pl..."
	@swipl -s run_length.pl -g "encode([a, a, a, b, b, c, c, c, c, d], R), write('encode([a, a, a, b, b, c, c, c, c, d]'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando modificar_runLength.pl..."
	@swipl -s modificar_runLength.pl -g "encode_modified([a, a, a, b, c, c, a, a, d, e, e, e], R), write('encode_modified([a, a, a, b, c, c, a, a, d, e, e, e])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en numero_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando decodificar_runLength.pl..."
	@swipl -s decodificar_runLength.pl -g "decode([[3,a],[1,b],[2,c]], R), write('decode([[3,a],[1,b],[2,c]])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando codificacion_directa.pl..."
	@swipl -s codificacion_directa.pl -g "encode_direct([a, a, a, b, c, c, a, a, d, e, e, e], R), write('encode_direct([a, a, a, b, c, c, a, a, d, e, e, e])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando duplicar_elementos.pl..."
	@swipl -s duplicar_elementos.pl -g "dupli([a, b, c], R), write('dupli([a, b, c])'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando duplicar_nVeces.pl..."
	@swipl -s duplicar_nVeces.pl -g "dupli([a, b, c], 3, R), write('dupli([a, b, c], 3)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando eliminar_nesimo.pl..."
	@swipl -s eliminar_nesimo.pl -g "(drop([a, b, c, d, e, f, g, h, i], 3, R), write('drop([a, b, c, d, e, f, g, h, i], 3)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en palindromo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando dividir_lista.pl..."
	@swipl -s dividir_lista.pl -g "split([a, b, c, d, e], 3, L1, L2), write('split([a, b, c, d, e], 3, L1, L2)'), write('L1 = '), write(L1), nl, write('L2 = '), write(L2), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando extraer_lista.pl..."
	@swipl -s extraer_lista.pl -g "slice([a, b, c, d, e, f], 3, 5, R), write('slice([a, b, c, d, e, f], 3, 5)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando rotar_lista.pl..."
	@swipl -s rotar_lista.pl -g "rotate([1, 2, 3, 4, 5], 2, R), write('rotate([1, 2, 3, 4, 5], 2)'), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando eliminar_kesimo.pl..."
	@swipl -s eliminar_kesimo.pl -g "remove_at(X, [a, b, c, d], 1, R), write('remove_at(X, [a, b, c, d], 1)'), nl, write('X = '), write(X), nl, write('R = '), write(R), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear



# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"


