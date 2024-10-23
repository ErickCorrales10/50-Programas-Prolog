# Define el nombre de los programas y sus respectivos predicados
PROGRAMS = numero_lista.pl penultimo.pl

# Define los predicados asociados a cada programa
PREDICATES = my_last(X, [a, b, c, d]) penultimo(X, [a, b, c, d])

# Define el objetivo por defecto
all: run

# Regla para ejecutar todos los programas con sus predicados específicos
run:
	@i=0; \
	for prog in $(PROGRAMS); do \
		pred=$$(echo $(PREDICATES) | cut -d' ' -f$$i); \
		echo "Ejecutando $$prog..."; \
		swipl -s $$prog -g "$$pred, halt." || echo "El predicado no existe en $$prog."; \
		echo ""; \
		i=$$((i + 1)); \
	done

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"

