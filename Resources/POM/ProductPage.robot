*** Settings ***
Library     SeleniumLibrary
Variables   ../WebElements.py

*** Variables ***

*** Keywords ***
Seleccionar Talla y Color Blusa
    Sleep                                   2
    Wait Until Page Contains Element        ${ProductPageFrame}
    Select Frame                            ${ProductPageFrame}
    Click Element                           ${ProductPageElementBlusaColor1}
    Click Element                           ${ProductPageElementBlusaColor2}
    Click Element                           ${ProductPageElementBlusa}
    Capture Page Screenshot                 ${ProductPageScreenshotProducto1}
    Click Element                           ${ProductPageElementCarrito}
    Unselect Frame

Seleccionar Talla y Color Vestido
    Sleep                                   2
    Wait Until Page Contains Element        ${ProductPageFrame}
    Select Frame                            ${ProductPageFrame}
    Click Element                           ${ProductPageElementVestidoColor1}
    Click Element                           ${ProductPageElementVestidoColor2}
    Click Element                           ${ProductPageElementVestidoColor3}
    Click Element                           ${ProductPageElementVestidoColor4}
    Click Element                           ${ProductPageElementVestido}
    Capture Page Screenshot                 ${ProductPageScreenshotProducto2}
    Click Element                           ${ProductPageElementCarrito}
    Unselect Frame

Continuar Con La Compra
    Wait Until Page Contains Element        ${ProductPageElementFrameCompra}
    Sleep                                   3
    Click Element                           ${ProductPageButtonContinuarCompra}

Ir a Carrito de Compras
    Wait Until Page Contains Element        ${ProductPageElementFrameCompra}
    Sleep                                   3
    Click Element                           ${ProductPageButtonCarritoCompra}

    




    