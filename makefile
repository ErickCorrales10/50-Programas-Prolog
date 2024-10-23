# Define el nombre del programa
PROGRAM = numero_lista.pl

# Define el objetivo por defecto
all: run

# Regla para ejecutar el programa
run:
	@echo "Ejecutando $(PROGRAM)..."
	@swipl -s $(PROGRAM) -g "my_last(X, [a, b, c, d]), write(X), nl, halt." 2>/dev/null || echo "El predicado no existe en $(PROGRAM)."

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"
