# Define los nombres de los programas
PROGRAMS = numero_lista.pl penultimo.pl

# Define el objetivo por defecto
all: run

# Regla para ejecutar los programas
run:
	@for prog in $(PROGRAMS); do \
		echo "Ejecutando $$prog..."; \
		@swipl -s $$prog -g "my_last(X, [a, b, c, d]), write('X = '), write(X), nl, halt." 2>/dev/null || \
		@swipl -s $$prog -g "penultimate(X, [a, b, c, d]), write('X = '), write(X), nl, halt." 2>/dev/null || echo "El predicado no existe en $$prog."; \
	done

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"
