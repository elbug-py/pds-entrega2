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

DevQuestion.create!(tema_id: Tema.first.id,
                    enunciado:"¿Qué es un diagrama de fases PvT?",
                    dificultad:1,
                    tip:"Utiliza la densisad para calcular los volúmenes del líquido y gas.")