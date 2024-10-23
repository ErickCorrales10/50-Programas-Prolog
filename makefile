
# Define el objetivo por defecto
all: run

# Regla para ejecutar los programas
run:
	@clear

	@echo "Ejecutando numero_lista.pl..."
	@swipl -s numero_lista.pl -g "my_last(X, [a, b, c, d]), write('X = '), write(X), nl, halt." || echo "El predicado no existe en numero_lista.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando penultimo.pl..."
	@swipl -s penultimo.pl -g "penultimate(X, [a, b, c, d]), write('X = '), write(X), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

	@echo "Ejecutando k_esimo.pl..."
	@swipl -s k_esimo.pl -g "element_at(X, [a, b, c, d], 2), write('X = '), write(X), nl, halt." || echo "El predicado no existe en penultimo.pl."
	@read -p "Presiona Enter para continuar..." dummy; clear

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"
