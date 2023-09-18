def generar_preguntas_alternativa(tema, dificultad_pregunta, enunciados, alternativas, consejos, respuestas)
    5.times do |index|
        AltQuestion.create!(
          tema_id: tema,
          enunciado: enunciados[index],
          alternativa1: alternativas[index][0],
          alternativa2: alternativas[index][1],
          alternativa3: alternativas[index][2],
          alternativa4: alternativas[index][3],
          tip1: consejos[index][0],
          tip2: consejos[index][1],
          tip3: consejos[index][2],
          tip4: consejos[index][3],
          respuesta: respuestas[index],
          dificultad: dificultad_pregunta
        )
      end
end

############# USERS #############
User.create!(nombre:"Mati",email:"example@example.com",password:"123456",apellido:"munoz")
User.create!(nombre:"Profesor", email:"profesor@profesor.com", password:"123456", apellido:"Profe")

############# TEMAS #############
tema1 = Tema.create(materia_actual:"Ley de Gases Ideales")
tema2 = Tema.create(materia_actual:"Calidad de mezclas")
tema3 = Tema.create(materia_actual:"Entalpía y Entropía")
tema4 = Tema.create(materia_actual:"Calor Latente")
tema5 = Tema.create(materia_actual:"Tablas de Saturación")
temas = [tema1, tema2, tema3, tema4, tema5]

############# PREG TEMA 1 #############
### Fácil ###
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

AltQuestion.create!(tema_id: Tema.first().id, enunciado:"¿Cuál es la principal variable representada en un diagrama de fases vT (volumen específico vs. temperatura)?", 
            alternativa1:"Presión", 
            alternativa2:"Densidad", 
            alternativa3:"Volumen", 
            alternativa4:"Temperatura",
            tip1:"Este tipo de diagrama se centra en cómo cambian las fases en función de la temperatura a presión constante.",
            tip2:"Este tipo de diagrama se centra en cómo cambian las fases en función de la temperatura a presión constante.",
            tip3:"Este tipo de diagrama se centra en cómo cambian las fases en función de la temperatura a presión constante.",
            tip4:"Correcto!",
            respuesta:"d",
            dificultad:1)

AltQuestion.create!(tema_id:Tema.first.id, enunciado:"¿Qué información se puede obtener de un diagrama de fases PT (presión vs. temperatura)?", 
            alternativa1:"Volumen específico", 
            alternativa2:"Estados de la materia", 
            alternativa3:"Energía interna", 
            alternativa4:"Densidad de masa",
            tip1:"Se centra principalmente en las transiciones de fase entre sólido, líquido y gas en función de la presión y la temperatura.",
            tip2:"Correcto!",
            tip3:"La energía interna suele estar relacionada con propiedades termodinámicas que no se representan en un diagrama de fases PT.",
            tip4:"Un diagrama de fases PT no proporciona información directa sobre la densidad de masa.",
            respuesta:"b",
            dificultad:1)

### Media ###
enunciados_tema1_media = [
    "En un diagrama de fases PT para una sustancia, ¿qué representa el punto crítico?",
    "Se tiene un sistema que consiste en una mezcla de vapor de agua y agua líquida en equilibrio en un recipiente cerrado. ¿En qué parte del diagrama de fases PvT se encuentra este sistema?",
    "En un diagrama de fases vT, ¿cómo se llama la curva que marca el límite entre la región de vapor saturado y la región de vapor sobrecalentado?",
    "Para una sustancia en un diagrama de fases PT, ¿qué se puede decir sobre un punto que se encuentra por debajo de la curva de coexistencia sólido-líquido?",
    "En un diagrama de fases Pv, ¿cómo se denomina el proceso de transición directa entre los estados sólido y gaseoso, omitiendo el estado líquido?"
]

alternativas_tema1_media = [
    ["El punto en el que todas las fases coexisten en equilibrio.", "El punto de congelación de la sustancia.", "El punto en el que las fases sólida y líquida son indistinguibles.",  "El punto de máxima densidad de la sustancia."], 
    ["Por encima de la curva de saturación.", "En la curva de coexistencia de fases.", "En la región de vapor saturado.", "En la región de líquido comprimido."],
    ["Línea crítica.", "Línea de sublimación.", "Línea de saturación.", "Línea de transición."],
    ["Está en la región de vapor saturado.", "Está en la región de vapor sobrecalentado.", "Está en la región de líquido comprimido.", "Está en un estado metaestable."],
    ["Evaporación.", "Sublimación.", "Condensación.", "Fusión."]
]

tips_tema1_media = [
    ["Correcto!","En este punto, no hay distinción clara entre las fases, y las propiedades de la sustancia se vuelven únicas.","En este punto, no hay distinción clara entre las fases, y las propiedades de la sustancia se vuelven únicas.","En este punto, no hay distinción clara entre las fases, y las propiedades de la sustancia se vuelven únicas."],
    ["En esta región, tanto el vapor como el líquido coexisten y están en equilibrio.","En esta región, tanto el vapor como el líquido coexisten y están en equilibrio.","Correcto!","En esta región, tanto el vapor como el líquido coexisten y están en equilibrio."],
    ["Este concepto es muy general para lo que se pide.","Intenta descifrar lo que es sublimación.","Correcto!","Este concepto es muy general para lo que se pide."],
    ["Podría estar en una fase diferente de lo que se esperaría en equilibrio en esas condiciones específicas.","Piensa en el estado de todos los componentes.","Piensa en el estado presente debajo de la curva.","Correcto!"],
    ["Vuelve a leer el enunciado, hay una palabra clave que te ayudará.","Correcto!","Realmente se está omitiendo el estado líquido?","Realmente se está omitiendo el estado líquido?"]
]

respuestas_tema1_media = ["a","c","c","d","b"]

generar_preguntas_alternativa(1, 2, enunciados_tema1_media, alternativas_tema1_media, tips_tema1_media, respuestas_tema1_media)

### Alta ###
enunciados_tema1_alta = [
    "En un diagrama de fases PT, ¿cómo se comporta el punto crítico en relación con las propiedades termodinámicas de la sustancia?",
    "Supongamos que se tiene una mezcla líquida-vapor en un recipiente en un punto que se encuentra exactamente en la curva de coexistencia de fases en un diagrama PvT. ¿Cómo se vería esta mezcla y cuál sería su composición?",
    "En un diagrama de fases vT, ¿qué información proporciona la región de vapor sobrecalentado que va más allá de la línea de saturación?",
    "En un sistema cerrado que contiene una mezcla de sustancias, ¿cómo cambian las propiedades termodinámicas cuando el sistema se encuentra en el punto triple en un diagrama de fases?",
    "En el contexto de los diagramas de fases, ¿cómo se define el concepto de 'punto metaestable'?"
]

alternativas_tema1_alta = [
    ["Tiene la temperatura más baja del diagrama.", "Es el punto de mayor densidad de la sustancia.", "Las propiedades de la sustancia son continuas y no se pueden distinguir entre líquido y vapor.", "Representa el punto de máximo calor específico."],
    ["La mezcla estaría completamente en estado líquido, con composición 100% líquido.", "La mezcla estaría completamente en estado vapor, con composición 100% vapor.", "La mezcla estaría en equilibrio con una composición constante de líquido y vapor.", "La mezcla estaría en un estado inestable y no tendría una composición definida."],
    ["La temperatura de transición entre las fases sólida y líquida.", "La temperatura crítica de la sustancia.", "La temperatura a la que la sustancia se encuentra en equilibrio entre sus fases líquida y vapor.", "La relación entre la densidad y la temperatura en la fase gaseosa."],
    ["Las propiedades termodinámicas permanecen constantes.", "Las propiedades termodinámicas son discontinuas debido a los cambios de fase.", "Las propiedades termodinámicas experimentan fluctuaciones periódicas.", "Las propiedades termodinámicas son inestables y no pueden ser medidas con precisión."],
    ["Un punto en el que las tres fases coexisten en equilibrio.", "Un punto en el que la transición de fase ocurre a una velocidad extremadamente lenta.", "Un punto en el que una sustancia cambia directamente de sólido a gas a una temperatura específica.", "Un punto en el que la temperatura y la presión son tan altas que las fases líquida y gaseosa se vuelven indistinguibles."]
]
tips_tema1_alta = [
    ["El punto crítico generalmente tiene una temperatura más alta en comparación con otros puntos del diagrama de fases.","El punto crítico no es necesariamente el punto de mayor densidad de la sustancia; en realidad, la densidad es continua a través de la región cercana al punto crítico.","Correcto!","El punto crítico no está relacionado con el calor específico máximo; más bien, está relacionado con el comportamiento de las propiedades de la sustancia en condiciones extremas de temperatura y presión."],
    ["En ese punto tanto el estado líquido como el estado vapor coexisten en equilibrio.","En la curva de coexistencia, el estado líquido también está presente.","Correcto!","La mezcla está en un estado de equilibrio bien definido, y su composición está determinada por la posición en la curva de coexistencia."],
    ["La temperatura de transición entre las fases sólida y líquida no se encuentra en la región de vapor sobrecalentado, sino en la región de cambio de fase sólido-líquido.","La temperatura crítica de la sustancia no se encuentra en la región de vapor sobrecalentado, sino en otro punto del diagrama de fases.","La temperatura a la que la sustancia se encuentra en equilibrio entre sus fases líquida y vapor tampoco se encuentra en la región de vapor sobrecalentado, sino en la línea de saturación, donde coexisten líquido y vapor.","Correcto!"],
    ["Correcto!","Piensa que es un sistema cerrado y qué es el punto triple.","Piensa que es un sistema cerrado y qué es el punto triple.","Piensa que es un sistema cerrado y qué es el punto triple."],
    ["Esto se conoce como el 'punto triple', no como un punto metaestable.","Correcto!","Esto se refiere a un cambio de fase directo de sólido a gas, conocido como sublimación. No describe un punto metaestable.","Esto no describe un punto metaestable, sino condiciones extremas de alta temperatura y presión en las que las fases líquida y gaseosa pueden comportarse de manera similar, pero no es lo mismo que un punto metaestable."]
]
respuestas_tema1_alta = ["c","c","d","a","b"]

generar_preguntas_alternativa(1,2, enunciados_tema1_alta, alternativas_tema1_alta, tips_tema1_alta, respuestas_tema1_alta)

############# PREG TEMA 2 #############

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
