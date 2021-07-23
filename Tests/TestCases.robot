*** Settings ***
Documentation   Test De Pruebas Para Desafio de Automatización
Resource        ../Resources/CommonFuncSitioDesafio.robot
Resource        ../Resources/POM/HomePage.robot
Resource        ../Resources/POM/HeaderPage.robot
Resource        ../Resources/POM/ProductPage.robot
Resource        ../Resources/POM/SummaryPage.robot
Resource        ../Resources/POM/SignInPage.robot
Resource        ../Resources/POM/AddressPage.robot
Resource        ../Resources/POM/ShippingPage.robot
Resource        ../Resources/POM/PaymentPage.robot


# Configuraciones De Entorno
Test Setup      CommonFuncSitioDesafio.Comenzar Test De Prueba
Test Teardown   CommonFuncSitioDesafio.Finalizar Test De Prueba

*** Variables ***
${email}        prueba14@prueba14.com
${Fname}        Elmer
${Lname}        M. Cornelius
${pass}         335353
${day}          18
${month}        7
${year}         1991
${company}      The Original Hous Of Pies
${address1}     Hickory Hills, 60457
${address2}     3124 Star Route
${city}         IL
${state}        2
${postcode}     20555
${country}      21
${other}        Prueba11
${phone}        56265123614
${phoneM}       56912345678
${alias}        Apartament

*** Test Cases ***
Validar Funcionalidad Ingresar a Vista "Home Page"
    [Documentation]     Este caso de prueba valida la vista "Home Page"
    [Tags]              Funcional

    HomePage.Validar Logo De Home Page

Validar Funcionalidad Seleccionar Talla y Color Producto "Blusa"
    [Documentation]     Este caso de prueba valida la funcionalidad seleccionar talla y color del producto "Blusa"
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa

Validar Funcionalidad Continuar Compra
    [Documentation]     Este caso de prueba valida la funcionalidad continuar con la compra
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

Validar Funcionalidad Seleccionar Talla y Color Producto "Vestido"
    [Documentation]     Este caso de prueba valida la funcionalidad seleccionar talla y color del producto "Vestido"
    [Tags]              Funcional

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido

Validar Funcionalidad Carrito de Compra
    [Documentation]     Este caso de prueba valida la funcionalidad ir a carrito de compra
    [Tags]              Funcional

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

Validar Funcionalidad Resumen de Carrito
    [Documentation]     Este caso de prueba valida la funcionalidad resumen de productos a comprar
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

Validar Funcionalidad Crear Cuenta
    [Documentation]     Este caso de prueba valida la funcionalidad crear cuenta
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Acceder a Crear Cuenta                                       ${email}
    SignInPage.Validar e Ingresar Información Formulario Crear Cuenta       ${Fname}  ${Lname}  ${pass}  ${day}  ${month}  ${year}  ${company}  ${address1}  ${address2}  ${city}  ${state}  ${postcode}  ${country}  ${other}  ${phone}  ${phoneM}  ${alias}
    SignInPage.Validar Boton Agregar Cuenta

Validar Vista Direcciones
    [Documentation]     Este caso de prueba valida la vista Direcciones
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Ingresar Credenciales y Acceder Con Usuario Creado    ${email}    ${pass}

    AddressPage.Validar Vista Addresses
    AddressPage.Validar Boton ProceedToCheckout

Validar Vista Shipping
    [Documentation]     Este caso de prueba valida la vista Shipping
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Ingresar Credenciales y Acceder Con Usuario Creado    ${email}    ${pass}

    AddressPage.Validar Vista Addresses
    AddressPage.Validar Boton ProceedToCheckout

    ShippingPage.Validar Vista Shipping
    ShippingPage.Validar Check IAgree
    ShippingPage.Validar Botón ProcedToCheckOut

Validar Vista, Tabla y Metodo de Pago
    [Documentation]     Este caso de prueba valida la Vista, Tabla y Metodo de Pago
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Ingresar Credenciales y Acceder Con Usuario Creado    ${email}    ${pass}

    AddressPage.Validar Vista Addresses
    AddressPage.Validar Boton ProceedToCheckout

    ShippingPage.Validar Vista Shipping
    ShippingPage.Validar Check IAgree
    ShippingPage.Validar Botón ProcedToCheckOut
# Vista
    PaymentPage.Validar Vista Pago
# Tabla
    PaymentPage.Validar Datos Tabla
# M. Pago
    PaymentPage.Validar Botón Pago Tarjeta Bancaria

Validar Vista Resumen de Orden y Confirmar Orden
    [Documentation]     Este caso de prueba valida la vista Resumen de Orden y confirma la Orden
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Ingresar Credenciales y Acceder Con Usuario Creado    ${email}    ${pass}

    AddressPage.Validar Vista Addresses
    AddressPage.Validar Boton ProceedToCheckout

    ShippingPage.Validar Vista Shipping
    ShippingPage.Validar Check IAgree
    ShippingPage.Validar Botón ProcedToCheckOut
# Vista
    PaymentPage.Validar Vista Pago
# Tabla
    PaymentPage.Validar Datos Tabla
# M. Pago
    PaymentPage.Validar Botón Pago Tarjeta Bancaria

    PaymentPage.Validar Vista Resumen de Orden
    PaymentPage.Validar Botón Confirmar Orden

Validar Vista Confirmación de Orden
    [Documentation]     Este caso de prueba valida la vista Confirmación de Orden
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Ingresar Credenciales y Acceder Con Usuario Creado    ${email}    ${pass}

    AddressPage.Validar Vista Addresses
    AddressPage.Validar Boton ProceedToCheckout

    ShippingPage.Validar Vista Shipping
    ShippingPage.Validar Check IAgree
    ShippingPage.Validar Botón ProcedToCheckOut
# Vista
    PaymentPage.Validar Vista Pago
# Tabla
    PaymentPage.Validar Datos Tabla
# M. Pago
    PaymentPage.Validar Botón Pago Tarjeta Bancaria

    PaymentPage.Validar Vista Resumen de Orden
    PaymentPage.Validar Botón Confirmar Orden

    PaymentPage.Validar Vista Confirmación de Orden
    CommonFuncSitioDesafio.Volver a Vista Home

Validar Funcionalidad Historial de Pedidos
    [Documentation]     Este caso de prueba valida la funcionalidad Historial de Pedidos
    [Tags]              Funcional

    HomePage.Seleccionar Producto Blusa Negra
    ProductPage.Seleccionar Talla y Color Blusa
    ProductPage.Continuar Con La Compra
    HomePage.Validar Logo De Home Page

    HomePage.Seleccionar Producto Vestido
    ProductPage.Seleccionar Talla y Color Vestido
    ProductPage.Ir a Carrito de Compras

    SummaryPage.Validar Productos
    SummaryPage.Validar Datos Footer
    SummaryPage.Validar Boton Checkout

    SignInPage.Validar Vista Autenticación
    SignInPage.Ingresar Credenciales y Acceder Con Usuario Creado    ${email}    ${pass}

    AddressPage.Validar Vista Addresses
    AddressPage.Validar Boton ProceedToCheckout

    ShippingPage.Validar Vista Shipping
    ShippingPage.Validar Check IAgree
    ShippingPage.Validar Botón ProcedToCheckOut
# Vista
    PaymentPage.Validar Vista Pago
# Tabla
    PaymentPage.Validar Datos Tabla
# M. Pago
    PaymentPage.Validar Botón Pago Tarjeta Bancaria

    PaymentPage.Validar Vista Resumen de Orden
    PaymentPage.Validar Botón Confirmar Orden

    PaymentPage.Validar Vista Confirmación de Orden
    CommonFuncSitioDesafio.Volver a Vista Home

    HomePage.Seleccionar Cuenta de Usuario y Acceder a Historial de Pedidos

*** Keywords ***
