# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(nombre:"Mati",email:"example@example.com",password:"123456",apellido:"munoz")
User.create!(nombre:"Profesor", email:"profesor@profesor.com", password:"123456", apellido:"Profe")

############# TEMA 1 #############
Tema.create(materia_actual:"Ley de Gases Ideales")

#
AltQuestion.create!(tema_id:Tema.first().id,enunciado:"¿Qué tipo de información proporciona un diagrama de fases PvT?",
            alternativa1:"Información sobre la densidad de una sustancia.",
            alternativa2:"Información sobre la temperatura de fusión.",
            alternativa3:"Información sobre las fases en equilibrio de una sustancia.",
            alternativa4:"Información sobre la velocidad de evaporación.",
            tip1:"la densidad depende de la masa, no de la Presion ni Temperatura",
            tip2:"La temperatura de fusion no es una derivacion directa de un diagrama de fases PvT",
            tip3:"Correcto!",
            tip4:"la velocidad de vaporacion no es posible calcular mediante el conocimiento de los estados de un elemento a distintas temperaturas",
            respuesta:'c',
            dificultad:1)

AltQuestion.create!(tema_id:Tema.first().id,enunciado:"¿Cómo se llama el punto en el que las tres fases (sólido, líquido y vapor) coexisten en equilibrio?",
            alternativa1:"Punto límite.",
            alternativa2:"Punto crítico.",
            alternativa3:"Punto de coexistencia.",
            alternativa4:"Punto triple.",
            tip1:"Este concepto es muy general, especifica según el estado del componente.",
            tip2:"En este punto no se distinguen las tres fases.",
            tip3:"Este concepto es similar al correcto, pero no en un contexto técnico y científico.",
            tip4:"Correcto!",
            respuesta:'d',
            dificultad:1)

AltQuestion.create!(tema_id:Tema.first().id,enunciado:"En un diagrama de fases PvT, ¿qué representa la curva de coexistencia de fases?",
            alternativa1:"El punto crítico.",
            alternativa2:"La línea de saturación.",
            alternativa3:"La temperatura de fusión.",
            alternativa4:"La densidad máxima.",
            tip1:"El punto crítico es un punto específico en el diagrama, pero no es una representación de la curva en sí.",
            tip2:"Correcto!",
            tip3:"La temperatura de fusión se refiere al punto en el que un sólido se convierte en líquido a una presión constante y no está relacionada directamente con la curva de coexistencia de fases.",
            tip4:"La densidad máxima de una sustancia generalmente ocurre en condiciones de alta presión y baja temperatura, pero no está relacionada directamente con la curva de coexistencia de fases.",
            respuesta:'b',
            dificultad:1)

############# TEMA 2 #############
Tema.create(materia_actual:"Ley de Gases Ideales")

AltQuestion.create!(tema_id: Tema.last.id, enunciado:"¿Qué se entiende por 'calidad' en el contexto de las mezclas?",
            alternativa1:"La cantidad total de sustancias en la mezcla.",
            alternativa2:"La relación entre los diferentes componentes de la mezcla.",
            alternativa3:"La cantidad de energía requerida para mezclar sustancias.",
            alternativa4:" La proporción de un componente específico en la mezcla.",
            tip1:"No define a calidad de mezcla, piensa en su unidad de medida (ppb).",
            tip2:"Correcto!",
            tip3:"No es una medida directa de la calidad de mezcla.",
            tip4:"Estás cerca, pero debe ser más específico.",
            respuesta:'b',
            dificultad:1)

AltQuestion.create!(tema_id: Tema.last.id, enunciado:"En una mezcla bifásica líquido-vapor, ¿qué valor de calidad corresponde a un estado completamente líquido?",
            alternativa1:"0",
            alternativa2:"0.5",
            alternativa3:"1",
            alternativa4:"-1",
            tip1:"Correcto!",
            tip2:"La mezcla está en un estado de equilibrio 50-50 entre líquido y vapor, no completamente líquido.",
            tip3:"La mezcla está en un estado completamente vapor, no en un estado completamente líquido.",
            tip4:"Un valor negativo no tiene sentido en el contexto de la calidad en una mezcla bifásica líquido-vapor.",
            respuesta:'a',
            dificultad:1)

AltQuestion.create!(tema_id: Tema.last.id, enunciado:"¿Cuál es la gama típica de valores de calidad en una mezcla bifásica líquido-vapor?",
            alternativa1:"0 a 1",
            alternativa2:"-1 a 1",
            alternativa3:"0 a 100",
            alternativa4:"-100 a 100",
            tip1:"Correcto!",
            tip2:"No se utilizan valores negativos en la calidad en este contexto.",
            tip3:"La calidad no se expresa como un porcentaje en este contexto.",
            tip4:"No se utilizan valores negativos en la calidad en este contexto.",
            respuesta:'a',
            dificultad:1)

AltQuestion.create!(tema_id: Tema.last.id, enunciado:"Si se tiene una mezcla en la que todos los componentes son idénticos, ¿cómo afecta esto a la calidad de la mezcla?",
            alternativa1:"La calidad no se ve afectada por los componentes.",
            alternativa2:"La calidad siempre será 1.",
            alternativa3:"La calidad siempre será 0.",
            alternativa4:"La calidad es imposible de determinar en este caso.",
            tip1:" La calidad de una mezcla bifásica líquido-vapor depende de la proporción de líquido y vapor en la mezcla, por lo que puede variar según la composición de los componentes.",
            tip2:"Correcto!",
            tip3:"No es cierto en el caso de una mezcla de componentes idénticos",
            tip4:"En el caso de componentes idénticos en estado de vapor, la calidad es perfectamente determinable y siempre será un valor determinado.",
            respuesta:'b',
            dificultad:1)

############# TEMA 3 #############
Tema.create(materia_actual:"Entalpía y Entropía")

############# TEMA 4 #############
Tema.create(materia_actual:"Calor Latente")

############# TEMA 5 #############
Tema.create(materia_actual:"Tablas de Saturación")
