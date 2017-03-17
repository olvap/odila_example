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
            <button onclick={goto('genero')}>Siguiente</button>
          </div>
        </fieldset>

        <fieldset show={state === 'genero'}>
          <legend>
            2. Género
          </legend>
          <input type="radio" name="genero" value=0> Masculino
          <input type="radio" name="genero" value=1> Femenino
          <div>
            <button onclick={goto('delito')}>Siguiente</button>
          </div>
        </fieldset>

        <fieldset show={state === 'delito'}>
          <legend>
            3. La víctima de un delito informático ha sido...
          </legend>
          <input type="radio" name="delito" value=0> Persona física
          <input type="radio" name="delito" value=1> Empresa pequeña o mediana (PyME)
          <input type="radio" name="delito" value=2> Gran empresa (más de 100 empleados)
          <input type="radio" name="delito" value=3> Organismo gubernamental
          <div>
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
