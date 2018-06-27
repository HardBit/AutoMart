// Write your JavaScript code.
'use strict';

if (!localStorage.productos) {
    localStorage.productos = "";
}

window.ManejarProductos = (function () {
    var self = {};

    var productos = [];

    if (localStorage.productos !== '') {
        productos = JSON.parse(localStorage.productos);
    }

    $('#count-badge').text(productos.length);

    self.agregar = function (product) {
        var indice = productos.findIndex(function (p) {
            return p.id === product.id;
        });

        if (indice !== -1) {
            productos[indice].cantidad += parseInt(product.cantidad);
        } else {
            productos.push(product);
        }

        $('#count-badge').text(productos.length);
        localStorage.productos = JSON.stringify(productos);
    }

    self.eliminar = function (key) {
        var indice = productos.findIndex(function (p) {
            return p.id === key;
        });

        productos.splice(indice, 1);

        $('#count-badge').text(productos.length);
        localStorage.productos = JSON.stringify(productos);
    }

    self.obtenerProductosDelCarrito = function (callback) {
        var productosAlmacenados = JSON.parse(localStorage.productos);
        if (productosAlmacenados.length > 0) {
            callback(productosAlmacenados);
        }
    }

    return self;
})();


$(document).ready(function () {
    $('#iniciar-sesion').on('click', function () {
        window.location.href = '/Home/Login';
    });
});