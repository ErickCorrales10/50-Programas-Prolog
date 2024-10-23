# Define el nombre de los programas y sus respectivos predicados
PROGRAMS = numero_lista.pl penultimo.pl k_esimo.pl elemento_lista.pl \
           invertir_lista.pl palindromo.pl aplanar.pl eliminar_duplicados.pl \
           agrupar_duplicados.pl run_length.pl modificar_runLength.pl \
           decodificar_runLength.pl codificacion_directa.pl duplicar_elementos.pl \
           duplicar_nVeces.pl eliminar_nesimo.pl dividir_lista.pl extraer_lista.pl \
           rotar_lista.pl eliminar_kesimo.pl insertar_elemento.pl crear_lista_enteros.pl \
           extraer_aleatorio.pl loteria.pl permutacion.pl combinaciones.pl agrupar.pl \
           ordenar_lista_listas.pl ordena_frecuencia.pl primo.pl

# Define los predicados asociados a cada programa
PREDICATES = "my_last(X, [a, b, c, d])" \
             "penultimate(X, [a, b, c, d])".

# Define el objetivo por defecto
all: run

# Regla para ejecutar todos los programas con sus predicados específicos
run: $(PROGRAMS)
	@for i in $(shell seq 0 $(shell echo "$(PROGRAMS)" | wc -w | xargs -I {} echo "{} - 1")); do \
		prog=$$(echo $(PROGRAMS) | cut -d' ' -f$$i); \
		pred=$$(echo $(PREDICATES) | cut -d' ' -f$$i); \
		echo "Ejecutando $$prog..."; \
		swipl -s $$prog -g "$$pred, halt." || echo "El predicado no existe en $$prog."; \
		echo ""; \
	done

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"
