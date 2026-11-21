# language: es
# Trazabilidad: HU-01 ← RF01, RNF02 | Épica E5 Cuentas y fidelización | Must – WSJF 10.50
Característica: HU-01 Registro e inicio de sesión del cliente
  Como cliente
  quiero registrarme e iniciar sesión con mi correo o número de celular
  para hacer pedidos sin volver a escribir mis datos cada vez

  Esquema del escenario: Registro con correo o celular
    Dado que el cliente está en la pantalla de registro
    Cuando ingresa su nombre, el identificador "<identificador>" y una contraseña de 8 caracteres o más
    Y confirma el registro
    Entonces el sistema crea su cuenta y lo deja con la sesión iniciada
    Y la contraseña se guarda cifrada

    Ejemplos:
      | identificador        |
      | maria.rojas@mail.com |
      | 976123456            |

  Escenario: Identificador ya registrado
    Dado que ya existe una cuenta con el celular "976123456"
    Cuando otra persona intenta registrarse con el celular "976123456"
    Entonces el sistema no crea la cuenta
    Y muestra el mensaje "Este celular ya está registrado. ¿Deseas iniciar sesión?"

  Escenario: Credenciales incorrectas
    Dado que existe la cuenta "maria.rojas@mail.com"
    Cuando el cliente ingresa una contraseña incorrecta
    Entonces el sistema muestra "Correo/celular o contraseña incorrectos" sin indicar cuál de los dos falló
