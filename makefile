# Define el nombre de los programas
PROGRAMS = numero_lista.pl penultimo.pl k_esimo.pl elemento_lista.pl \
		   invertir_lista palindromo.pl aplanar.pl eliminar_duplicados.pl \
		   agrupar_duplicados.pl run_length.pl modificar_runLength.pl \
		   decodificar_runLength.pl codificacion_directa.pl duplicar_elementos.pl \
		   duplicar_nVeces.pl eliminar_NEsimo.pl dividir_lista.pl extraer_lista.pl \
		   rotar_lista.pl eliminar_kesimo.pl insertar_elemento.pl crear_lista_enteros.pl \
		   extraer_aleatorio.pl loteria.pl permutacion.pl combinaciones.pl agrupar.pl \
		   ordenar_lista_listas.pl ordena_frecuencia.pl primo.pl

# Define el objetivo por defecto
all: $(PROGRAMS)

# Regla para ejecutar los programas
%.pl:
	@echo "Ejecutando $<..."
	swipl -s $< -t halt
	@read -p "Presiona Enter para continuar..." dummy

# Regla para limpiar (opcional)
clean:
	@echo "Limpieza completa"