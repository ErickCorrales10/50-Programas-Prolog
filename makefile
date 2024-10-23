# Define el nombre de los programas
PROGRAMS = numero_lista.pl penultimo.pl

# Define el objetivo por defecto
all: run

# Regla para ejecutar todos los programas con sus predicados específicos
run:
	@echo "Ejecutando numero_lista.pl..."
	swipl -s numero_lista.pl -g "my_last(X, [a, b, c, d]), halt." || echo "El predicado no existe en numero_lista.pl."
	echo ""
	
	@echo "Ejecutando penultimo.pl..."
	swipl -s penultimo.pl -g "penultimate(X, [a, b, c, d]), halt." || echo "El predicado no existe en penultimo.pl."
	echo ""

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"
