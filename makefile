# Define los nombres de los programas
PROGRAMS = numero_lista.pl penultimo.pl

# Define el objetivo por defecto
all: run

# Regla para ejecutar los programas
run:
	@echo "Ejecutando numero_lista.pl..."
	@swipl -s numero_lista.pl -g "my_last(X, [a, b, c, d]), write('X = '), write(X), nl, halt." || echo "El predicado no existe en numero_lista.pl."
	
	@echo "Ejecutando penultimo.pl..."
	@swipl -s penultimo.pl -g "penultimate(X, [a, b, c, d]), write('X = '), write(X), nl, halt." || echo "El predicado no existe en penultimo.pl."

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"
