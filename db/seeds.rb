# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(nombre:"Mati",email:"example@example.com",password:"123456",apellido:"munoz")
Tema.create(materia_actual:"Ley de Gases Ideales")
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



# ¿Qué tipo de información proporciona un diagrama de fases PvT?
# a) Información sobre la densidad de una sustancia.
# b) Información sobre la temperatura de fusión.
# c) Información sobre las fases en equilibrio de una sustancia.
# d) Información sobre la velocidad de evaporación.

# ¿Cómo se llama el punto en el que las tres fases (sólido, líquido y vapor) coexisten en equilibrio?
# a) Punto límite.
# b) Punto crítico.
# c) Punto de coexistencia.
# d) Punto triple.

# En un diagrama de fases PvT, ¿qué representa la curva de coexistencia de fases?
# a) El punto crítico.
# b) La línea de saturación.
# c) La temperatura de fusión.
# d) La densidad máxima.