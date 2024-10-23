# Define el nombre de los programas
PROGRAMS = numero_lista.pl penultimo.pl k_esimo.pl elemento_lista.pl \
		   invertir_lista palindromo.pl aplanar.pl eliminar_duplicados.pl \
		   agrupar_dulpicados.pl run_length.pl modificar_runLength.pl \
		   decodificar_runLength.pl codificacion_directa.pl duplicar_elementos.pl \
		   duplicar_nVeces.pl eliminar_NEsimo.pl dividir_lista.pl extraer_lista.pl \
		   rotar_lista.pl eliminar_KEsimo.pl insertar_elemento.pl crear_lista_enteros.pl \
		   extraer_aleatorio.pl loteria.pl permutacion.pl

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