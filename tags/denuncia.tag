<denuncia>
  <div class="row">
    <div id="zonaForm"
      <form id="Fencuesta" class="form-horizontal">

        <fieldset show={state === 'residencia'}>
          <legend>
            1. Cual es su país de residencia
          </legend>
          <select>
            <option value="23">Argentina</option>
            <option value="24">Uruguay</option>
          </select>
          <div>
            <button onclick={goto('delito')}>Siguiente</button>
          </div>
        </fieldset>

        <fieldset show={state === 'delito'}>
          <legend>
            2. La víctima de un delito informático ha sido...
          </legend>
          <input type="radio" name="delito" value=0> Persona física <br>
          <input type="radio" name="delito" value=1> Empresa pequeña o mediana (PyME)<br>
          <input type="radio" name="delito" value=2> Gran empresa (más de 100 empleados)<br>
          <input type="radio" name="delito" value=3> Organismo gubernamental<br>
          <div>
            <button onclick={goto('residencia')}>Anterior</button>
            <button onclick={goto('incidente')}>Siguiente</button>
          </div>
        </fieldset>


        <fieldset show={state === 'incidente'}>
          <legend>
            3- ¿Qué tipo de incidente ha sufrido?
          </legend>
          <input type="radio" name="incidente" value=0> Hacking: alguien accedió sin mi consentimiento a mis cuentas o sistemas<br>
          <input type="radio" name="incidente" value=1> Cracking: alguien ha modificado, alterado o eliminado todo o parte de mis datos o sistemas informáticos<br>
          <input type="radio" name="incidente" value=2> Fraude o Estafa Informática: alguien ha realizado alguna manipulación que me ocasionó un perjuicio económico<br>
          <input type="radio" name="incidente" value=3> Phishing: alguien a través de un engaño me ha solicitado información confidencial -Nº de tarjetas de crédito, contraseñas, PIN, etc.<br>
          <input type="radio" name="incidente" value=4> Suplantación de identidad digital: alguien se hace pasar por mi a través de un medio electrónico (mails, redes sociales, etc.). Se lo conoce como "Robo de identidad"<br>
          <input type="radio" name="incidente" value=5> Denegación de Servicio: alguien ha realizado un ataque que me ha dejado sin poder acceder o prestar mi servicio informático o electrónico de forma normal<br>
          <input type="radio" name="incidente" value=6> Grooming: un menor ha sido acosado y/o extorsionado con fines sexuales a través de algún medio informático<br>
          <input type="radio" name="incidente" value=7> Calumnias o Injurias: alguien lo está calumniando o injuriando a través de medios electrónicos -redes sociales, correos electrónicos, celulares, etc.<br>
          <input type="radio" name="incidente" value=8> Amenazas: alguien lo está amenazando o intimando a través de medios electrónicos -redes sociales, correos electrónicos, celulares, etc.<br>
          <input type="radio" name="incidente" value=9> Pornografía Infantil: alguien está difundiendo, comercializando o facilitando pornografía infantil a través de medios electrónicos<br>
          <input type="radio" name="incidente" value=10> Violación de Datos Personales: alguien está ofreciendo, comercializando, interceptando o modificando datos personales sin autorización<br>
          <input type="radio" name="incidente" value=11> Difusión de Malware: alguien está produciendo, distribuyendo, vendiendo o propagando malware o software malicioso<br>
          <div>
            <button onclick={goto('delito')}>Anterior</button>
            <button onclick={goto('cuando')}>Siguiente</button>
          </div>
        </fieldset>
        
        <fieldset show={state === 'cuando'}>
          <legend>
            4- ¿Cuándo ha ocurrido el incidente?
          </legend>
          <p>Fecha: <input type="text" id="datepicker"></p>
          <div>
            <button onclick={goto('incidente')}>Anterior</button>
            <button onclick={goto('previa')}>Siguiente</button>
          </div>
        </fieldset>
        <fieldset show={state === 'previa'}>
          <legend>
            5- ¿Ha denunciado el delito ante los organismos competentes en su país?
          </legend>
          <input type="radio" name="previa" value=0> Sí, ya denuncié y la investigación está en curso<br>
          <input type="radio" name="previa" value=1> Sí, ya denuncié pero la investigación no avanzó<br>
          <input type="radio" name="previa" value=2> Sí, ya denuncié y ya se ha condenado al o los culpables.<br>
          <input type="radio" name="previa" value=3> <b>No, no denuncié porque...</b><br>
          <div>
            <button onclick={goto('cuando')}>Anterior</button>
            <button onclick={goto('causa')}>Siguiente</button>
          </div>
        </fieldset>

        <fieldset show={state === 'causa'}>
          <legend>
            6- ¿En el caso que NO haya realizado la denuncia, ¿Se debe a alguna de las siguientes causas?
          </legend>
          <input type="radio" name="causa" value=0> Ya denuncié<br>
          <input type="radio" name="causa" value=1> No creo en la Policía ni en la Justicia Penal<br>
          <input type="radio" name="causa" value=2> No me considero víctima de un delito<br>
          <input type="radio" name="causa" value=3> No quiero difundir públicamente el incidente (pérdida de confidencialidad)<br>
          <input type="radio" name="causa" value=4> Tengo temor de futuras represalias de parte del autor<br>
          <input type="radio" name="causa" value=5> No creo que la investigación tenga éxito<br>
          <input type="radio" name="causa" value=6> No estoy seguro de haber sido víctima de un delito penal<br>
          <input type="radio" name="causa" value=7> En parte me siento culpable por el incidente<br>
          <input type="radio" name="causa" value=8> No creo que la denuncia sea útil, porque el sistema penal no es apto para combatir el cibercrimen<br>
          <input type="radio" name="causa" value=8> Otros<br>
          <div>
            <button onclick={goto('previa')}>Anterior</button>
            <button onclick={goto('edad')}>Siguiente</button>
          </div>
        </fieldset>

        <fieldset show={state === 'edad'}>
          <legend>
            7- Edad
          </legend>
          <input type="radio" name="edad" value=0> Menor a 21 años<br>
          <input type="radio" name="edad" value=1> Entre 22 y 35 años<br>
          <input type="radio" name="edad" value=2> Entre 36 y 45 años<br>
          <input type="radio" name="edad" value=3> Mayor a 45 años<br>
          <div>
            <button onclick={goto('causa')}>Anterior</button>
            <button onclick={goto('genero')}>Siguiente</button>
          </div>
        </fieldset>


        <fieldset show={state === 'genero'}>
          <legend>
            8. Género
          </legend>
          <input type="radio" name="genero" value=0> Masculino
          <input type="radio" name="genero" value=1> Femenino
          <div>
            <button onclick={goto('edad')}>Anterior</button>
            <button onclick={goto('nivel')}>Siguiente</button>
          </div>
        </fieldset>

          <fieldset show={state === 'nivel'}>
          <legend>
            9. Nivel de Instrucción
          </legend>
          <input type="radio" name="nivel" value=0> Sin instrucción
          <input type="radio" name="nivel" value=1> Primaria completa
          <input type="radio" name="nivel" value=2> Secundaria completa
          <input type="radio" name="nivel" value=3> Universitaria o Terciaria completa
          <div>
            <button onclick={goto('genero')}>Anterior</button>
            <button onclick={goto('email')}>Siguiente</button>
          </div>
        </fieldset>
         
          <fieldset show={state === 'email'}>
          <legend>
            10. Correo electrónico
          </legend>
          <p>En el caso que usted quiera (es opcional), puede recibir una respuesta al presente formulario donde se le indicará 
            si el incidente que usted ha reportado, configura un delito penal en su país de residencia. 
            En el caso que lo sea y que usted aún no haya denunciado formalmente ante las autoridades de su país, 
            se le brindará información de contacto para que usted pueda proceder a realizarla. 
            En el caso que decida utilizar esta opción, se le informa que sus datos personales serán tratados de acuerdo 
            a los principios de acuerdo a la Ley 25.326 de Protección de Datos Personales de Argentina. 
            Ante cualquier duda, puede ponerse en contacto.</p>
          <input type="radio" name="email" value=1> ok
          <div>
            <button onclick={goto('nivel')}>Anterior</button>
            <button onclick={goto('residencia')}>Siguiente</button>
          </div>
        </fieldset>

      </form>
    </div>
  </div>

  <script>
    this.state = 'residencia'

    goto(state){
      return function(e){
        this.state = state
      }
    }
  </script>
</denuncia>
