#!/usr/bin/perl 
#Primera linea. Path o ruta a la ubicación del interprete de Perl.


#--------------------------------------------------------------Autor Clara I. Bermúdez------------------------------------------------------
#		Curso Programación y algortimos en bioinformática
#		Escriba al Departamento de quejas y reclamos a cibermudezs@unal.edu.co. 
#--------------------------------------------------------------------------------------------------------------------------------------------  


#-----------------------------INTRODUCCIÒN A PERL: Autor Larry Wall 1987-----------------------------------------------------  
#"Practical Extraction and Report Language" "There is more than one way to do it": 
# Tiene características del lenguaje C, del  bourne shell (sh), AWK, sed, entre otros.
# Tiene un sistema de gestiòn automática de memoria.
# Famoso para la construcciòn de soluciones de WEB por la versatilidad que tiene para el uso
# Common Gateway Interface, abreviado CGI 

# Esta implementado como un interprete de C  y se compone de muchos modulos escritos en C y Perl. 

# Main pages http://www.perl.com/
#            http://perldoc.perl.org/perlintro.html 
#            Comprehensive Perl Archive Networt: Repositorio de librerias 
#            CPAN http://www.cpan.org/, igualmente existe para R CRAN y Latex CTAN
# 
# Documentacion
# Escriba perldoc -f <funcion>; ejemplo print: información sobre funciones definidas en Perl
# Escriba perldoc -q <palabras claves>; FAQ para este tipo de expresión por ejemplo
# Escriba perldoc -q reverse; FAQ para la función reverse. CAAAG pasa a GAAAC
# Escriba perldoc -h para desplegar el menu de opciones
# 
# Instalaciòn: Utilice su manejador de paquetes favorito  apt-get install perl-doc or sudo aptitude install perl-doc 
#
#  


#-----------------RECOMENDACIONES PARA DEPURAR SUS CÓDIGOS -----------------------

#0.1.1 ---------  No olvide: EDITE, REVISE y CORRA

#0.1.2 ---------  Debemos familiarizarnos con la sintaxis del lenguaje de programaciòn PERL
# La sintaxis es el conjunto de reglas que se debe seguir para que el compilador 
# sea capaz de reconocer a nuestro programa como un código válido de PERL. 

#0.1.3 ---------  Lo que ve comentado en # # siempre son comentarios de lineas

#0.1.4 ---------  Para finalizar las sentencias del código en PERL se utiliza el símbolo ;

#0.1.5 ---------  Las palabras o cadenas literales siempre van entre comillas.

#0.1.6 ---------  Existen diferentes tipos de keywords o palabras reservadas del lenguaje Perl; 
# por ejemplo print, exit, reverse, abs. Son  funciones estandar y en palabras muy sencillas 
# funcionan como los verbos en nuestro idioma

#0.1.7 ---------  Es importante utilizar por cada sentencia una linea de código diferente para hacer fàcil la lectura al ser humano

# Habra un editor de texto, escriba el código siguiente y almacenelo con la extension .pl. Asi:
# ej01.pl 
#---------------------------Ej 01---------------------------------------------
#!/usr/bin/perl 
print "Hola\n ----------End 01\n";
exit;
#-------------------------------------------------


#----------------Ej02 -Introducción a las variables en PERL y estructuras de control  ----

#Variable: Definición de forma genérica: 

#Una variable es un contenedor de memoria que almacena información la cual  podrá variar durante la ejecución de un programa.En perl las variables son declaradas con el signo $ para  asignar su característica de ser variable escalar, @ si son arreglos y % si son hashes. Utilize nombres con sentido cuando declara las variable. Se pueden declarar en cualquier parte del código pero es buena práctica declarar al principio como en el lenguaje C.
 


# Estructuras de control: permiten controlar y modificar el flujo de ejecución de las instrucciones de un programa.
# Algunos ejemplos los tratamos en shell: 
# Tenemos estructuras de control secuencial como 

# leer a
# leer b
# c <- a + b

# Estructuras de control Alternativa Simple
#if (expresión lógica) then
#    acciones
# end if


# Estructuras de control de Alternativa doble
# if (expresión lógica) then
# acciones
# else
# acciones
# end if 


# Estructuras de Control. Alternativa múltiple
#select case (expresión)
# case (valor 1)
# acción 1
# case (valor 2)
# acción 2
#...
# case (valor n)
# acción n
# case default
# acción
# end select

# EJEMPLO
# segun mes
# caso 1,3,5,7,8,10,12:
# escribir ‘31’

# caso 4,6,9,11:
# escribir ‘30’

# caso 2:
# escribir ‘28’

# otro caso:
# escribir ‘Mes incorrecto’
# fin según


# Estructuras de control desde - hasta 

#desde indice < -inicio  ... hasta fin [con paso valor, i++] 
# hacer
# acción
# fin desde

# Estructuras de control mientras
# do while (expresión lógica)
# acción
# end do



# NOTA
#\t tab \n new line \a bell \b backscape son utilizados como "escapes".
#-------------------------------------------

#------------------ Ej 02 ------------------
$x;
$x=0;
if ($x==0){
print "Hola, es mi primera asignacion y es asignarle a la variable x el valor $x\n"
}

print "----------End 02\n";
exit;


#-----------------Ej03

$y;
$y=1;
if ($y==0){  # Estructuras de control de tipo selección 
print "Hola, es mi primera asignación: asigna a la variable y $y\n";
}
else{ # De lo contrario
print "Hola, es el uso del condicional alterno a if y por ello imprimo, no se satisface la condición $y\n"

}

print "----------End 03\n";
exit;

#----------------Ejercicio ------------------------------------
#Escriba una programa en el cual realize las siguientes operaciones: 
#suma de dos variables operador (+)
#Imprima el resultado en pantalla

