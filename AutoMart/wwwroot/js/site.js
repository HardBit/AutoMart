// Write your JavaScript code.
if (!localStorage.productos) {
    localStorage.productos = "";
}

window.ManejarProductos = (function () {
    var productos = [];

    this.agregar = function (product) {
        var indice = productos.findIndex(function (p) {
            return p.id === product.id;
        });

        if (indice !== -1) {
            productos.push(product);
        } else {
            //productos[indice].cantidad = product.cantidad;
        }
        localStorage.productos = JSON.stringify(productos);
    }

    this.eliminar = function (key) {
        var indice = productos.findIndex(function (p) {
            return p.id === key;
        });

        productos.splice(indice, 1);
        localStorage.productos = JSON.stringify(productos);
    }

    this.obtenerProductosDelCarrito = function (callback) {
        $.getJSON("/Home/ObtenerProductosPorId?ids=" + IdCategoria, function (data) {
        });
    }

    return this;
})();