/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Local
 Source Server Type    : PostgreSQL
 Source Server Version : 100004
 Source Host           : 127.0.0.1:5432
 Source Catalog        : AutoMart
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100004
 File Encoding         : 65001

 Date: 15/06/2018 01:33:49
*/


-- ----------------------------
-- Sequence structure for Categoria_IDCategoria_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Categoria_IDCategoria_seq";
CREATE SEQUENCE "public"."Categoria_IDCategoria_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Clientes_IDCliente_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Clientes_IDCliente_seq";
CREATE SEQUENCE "public"."Clientes_IDCliente_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Entrada_IDEntrada_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Entrada_IDEntrada_seq";
CREATE SEQUENCE "public"."Entrada_IDEntrada_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Marca_IDMarca_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Marca_IDMarca_seq";
CREATE SEQUENCE "public"."Marca_IDMarca_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Modelo_IDModelo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Modelo_IDModelo_seq";
CREATE SEQUENCE "public"."Modelo_IDModelo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for NumerosSerie_IDNumeroSerie_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."NumerosSerie_IDNumeroSerie_seq";
CREATE SEQUENCE "public"."NumerosSerie_IDNumeroSerie_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Producto_IDProducto_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Producto_IDProducto_seq";
CREATE SEQUENCE "public"."Producto_IDProducto_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Salida_IDSalida_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Salida_IDSalida_seq";
CREATE SEQUENCE "public"."Salida_IDSalida_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Tienda_IDTienda_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Tienda_IDTienda_seq";
CREATE SEQUENCE "public"."Tienda_IDTienda_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Transaccion_IDTransaccion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Transaccion_IDTransaccion_seq";
CREATE SEQUENCE "public"."Transaccion_IDTransaccion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for Categoria
-- ----------------------------
DROP TABLE IF EXISTS "public"."Categoria";
CREATE TABLE "public"."Categoria" (
  "IDCategoria" int4 NOT NULL DEFAULT nextval('"Categoria_IDCategoria_seq"'::regclass),
  "Descripcion" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of Categoria
-- ----------------------------
INSERT INTO "public"."Categoria" VALUES (1, 'Sistema hidraulico');
INSERT INTO "public"."Categoria" VALUES (2, 'Eléctrico');
INSERT INTO "public"."Categoria" VALUES (3, 'Mecánico');
INSERT INTO "public"."Categoria" VALUES (4, 'Otros');

-- ----------------------------
-- Table structure for Cliente
-- ----------------------------
DROP TABLE IF EXISTS "public"."Cliente";
CREATE TABLE "public"."Cliente" (
  "IDCliente" int4 NOT NULL DEFAULT nextval('"Clientes_IDCliente_seq"'::regclass),
  "FisicaMoral" int4 NOT NULL,
  "NombreRazonSocial" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL,
  "ApellidoPaterno" varchar(2500) COLLATE "pg_catalog"."default",
  "ApellidoMaterno" varchar(2500) COLLATE "pg_catalog"."default",
  "Direccion" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL,
  "Municipio" varchar(2500) COLLATE "pg_catalog"."default",
  "Telefono" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "CorreoElectronico" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "IDEstado" int4 NOT NULL,
  "Contraseña" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for Entrada
-- ----------------------------
DROP TABLE IF EXISTS "public"."Entrada";
CREATE TABLE "public"."Entrada" (
  "IDEntrada" int4 NOT NULL DEFAULT nextval('"Entrada_IDEntrada_seq"'::regclass),
  "IDProducto" int4 NOT NULL,
  "IDTienda" int4 NOT NULL,
  "Cantidad" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for Inventario
-- ----------------------------
DROP TABLE IF EXISTS "public"."Inventario";
CREATE TABLE "public"."Inventario" (
  "Existencias" int4 NOT NULL,
  "IDProducto" int4 NOT NULL,
  "IDTienda" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for Marca
-- ----------------------------
DROP TABLE IF EXISTS "public"."Marca";
CREATE TABLE "public"."Marca" (
  "IDMarca" int4 NOT NULL DEFAULT nextval('"Marca_IDMarca_seq"'::regclass),
  "Descripcion" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for Modelo
-- ----------------------------
DROP TABLE IF EXISTS "public"."Modelo";
CREATE TABLE "public"."Modelo" (
  "IDModelo" int4 NOT NULL DEFAULT nextval('"Modelo_IDModelo_seq"'::regclass),
  "Descripcion" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for NumerosSerie
-- ----------------------------
DROP TABLE IF EXISTS "public"."NumerosSerie";
CREATE TABLE "public"."NumerosSerie" (
  "IDNumeroSerie" int4 NOT NULL DEFAULT nextval('"NumerosSerie_IDNumeroSerie_seq"'::regclass),
  "NumeroSerie" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "IDProducto" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for Producto
-- ----------------------------
DROP TABLE IF EXISTS "public"."Producto";
CREATE TABLE "public"."Producto" (
  "Nombre" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL,
  "Descripcion" varchar(5000) COLLATE "pg_catalog"."default" NOT NULL,
  "Precio" float8 NOT NULL,
  "IDMarca" int4 NOT NULL,
  "IDModelo" int4 NOT NULL,
  "IDCategoria" int4 NOT NULL,
  "Año" int4 NOT NULL,
  "IDProducto" int4 NOT NULL DEFAULT nextval('"Producto_IDProducto_seq"'::regclass)
)
;

-- ----------------------------
-- Table structure for ProductosTransaccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ProductosTransaccion";
CREATE TABLE "public"."ProductosTransaccion" (
  "IDTransaccion" int4 NOT NULL,
  "IDProducto" int4 NOT NULL,
  "IDNumeroSerie" int4 NOT NULL,
  "Cantidad" int4
)
;

-- ----------------------------
-- Table structure for Salida
-- ----------------------------
DROP TABLE IF EXISTS "public"."Salida";
CREATE TABLE "public"."Salida" (
  "IDSalida" int4 NOT NULL DEFAULT nextval('"Salida_IDSalida_seq"'::regclass),
  "IDProducto" int4 NOT NULL,
  "IDTienda" int4 NOT NULL,
  "Cantidad" int4 NOT NULL,
  "IDTransaccion" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for Tienda
-- ----------------------------
DROP TABLE IF EXISTS "public"."Tienda";
CREATE TABLE "public"."Tienda" (
  "IDTienda" int4 NOT NULL DEFAULT nextval('"Tienda_IDTienda_seq"'::regclass),
  "Descripción" varchar(2500) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for Transaccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."Transaccion";
CREATE TABLE "public"."Transaccion" (
  "IDTransaccion" int4 NOT NULL DEFAULT nextval('"Transaccion_IDTransaccion_seq"'::regclass),
  "IDCliente" int4 NOT NULL,
  "TotalOperacion" float8 NOT NULL
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Categoria_IDCategoria_seq"
OWNED BY "public"."Categoria"."IDCategoria";
SELECT setval('"public"."Categoria_IDCategoria_seq"', 8, true);
ALTER SEQUENCE "public"."Clientes_IDCliente_seq"
OWNED BY "public"."Cliente"."IDCliente";
SELECT setval('"public"."Clientes_IDCliente_seq"', 2, false);
ALTER SEQUENCE "public"."Entrada_IDEntrada_seq"
OWNED BY "public"."Entrada"."IDEntrada";
SELECT setval('"public"."Entrada_IDEntrada_seq"', 2, false);
ALTER SEQUENCE "public"."Marca_IDMarca_seq"
OWNED BY "public"."Marca"."IDMarca";
SELECT setval('"public"."Marca_IDMarca_seq"', 2, false);
ALTER SEQUENCE "public"."Modelo_IDModelo_seq"
OWNED BY "public"."Modelo"."IDModelo";
SELECT setval('"public"."Modelo_IDModelo_seq"', 2, false);
ALTER SEQUENCE "public"."NumerosSerie_IDNumeroSerie_seq"
OWNED BY "public"."NumerosSerie"."IDNumeroSerie";
SELECT setval('"public"."NumerosSerie_IDNumeroSerie_seq"', 2, false);
ALTER SEQUENCE "public"."Producto_IDProducto_seq"
OWNED BY "public"."Producto"."IDProducto";
SELECT setval('"public"."Producto_IDProducto_seq"', 2, true);
ALTER SEQUENCE "public"."Salida_IDSalida_seq"
OWNED BY "public"."Salida"."IDSalida";
SELECT setval('"public"."Salida_IDSalida_seq"', 2, false);
ALTER SEQUENCE "public"."Tienda_IDTienda_seq"
OWNED BY "public"."Tienda"."IDTienda";
SELECT setval('"public"."Tienda_IDTienda_seq"', 2, false);
ALTER SEQUENCE "public"."Transaccion_IDTransaccion_seq"
OWNED BY "public"."Transaccion"."IDTransaccion";
SELECT setval('"public"."Transaccion_IDTransaccion_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table Categoria
-- ----------------------------
ALTER TABLE "public"."Categoria" ADD CONSTRAINT "IDCategoria" PRIMARY KEY ("IDCategoria");

-- ----------------------------
-- Primary Key structure for table Cliente
-- ----------------------------
ALTER TABLE "public"."Cliente" ADD CONSTRAINT "IDCliente" PRIMARY KEY ("IDCliente");

-- ----------------------------
-- Primary Key structure for table Entrada
-- ----------------------------
ALTER TABLE "public"."Entrada" ADD CONSTRAINT "IDEntrada" PRIMARY KEY ("IDEntrada");

-- ----------------------------
-- Primary Key structure for table Marca
-- ----------------------------
ALTER TABLE "public"."Marca" ADD CONSTRAINT "IDMarca" PRIMARY KEY ("IDMarca");

-- ----------------------------
-- Primary Key structure for table Modelo
-- ----------------------------
ALTER TABLE "public"."Modelo" ADD CONSTRAINT "IDModelo" PRIMARY KEY ("IDModelo");

-- ----------------------------
-- Primary Key structure for table NumerosSerie
-- ----------------------------
ALTER TABLE "public"."NumerosSerie" ADD CONSTRAINT "IDNumeroSerie" PRIMARY KEY ("IDNumeroSerie");

-- ----------------------------
-- Indexes structure for table Producto
-- ----------------------------
CREATE INDEX "fki_IDCategoria" ON "public"."Producto" USING btree (
  "IDCategoria" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "fki_IDMarca" ON "public"."Producto" USING btree (
  "IDMarca" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table Producto
-- ----------------------------
ALTER TABLE "public"."Producto" ADD CONSTRAINT "IDProducto" PRIMARY KEY ("IDProducto");

-- ----------------------------
-- Indexes structure for table ProductosTransaccion
-- ----------------------------
CREATE INDEX "fki_IDNumeroSerie" ON "public"."ProductosTransaccion" USING btree (
  "IDNumeroSerie" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "fki_IDProducto" ON "public"."ProductosTransaccion" USING btree (
  "IDProducto" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "fki_IDTransaccion" ON "public"."ProductosTransaccion" USING btree (
  "IDTransaccion" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table Salida
-- ----------------------------
ALTER TABLE "public"."Salida" ADD CONSTRAINT "Salida_pkey" PRIMARY KEY ("IDSalida");

-- ----------------------------
-- Primary Key structure for table Tienda
-- ----------------------------
ALTER TABLE "public"."Tienda" ADD CONSTRAINT "IDTienda" PRIMARY KEY ("IDTienda");

-- ----------------------------
-- Primary Key structure for table Transaccion
-- ----------------------------
ALTER TABLE "public"."Transaccion" ADD CONSTRAINT "IDTransaccion" PRIMARY KEY ("IDTransaccion");

-- ----------------------------
-- Foreign Keys structure for table Entrada
-- ----------------------------
ALTER TABLE "public"."Entrada" ADD CONSTRAINT "IDProducto" FOREIGN KEY ("IDProducto") REFERENCES "public"."Producto" ("IDProducto") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Entrada" ADD CONSTRAINT "IDTienda" FOREIGN KEY ("IDTienda") REFERENCES "public"."Tienda" ("IDTienda") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Inventario
-- ----------------------------
ALTER TABLE "public"."Inventario" ADD CONSTRAINT "IDProducto" FOREIGN KEY ("IDProducto") REFERENCES "public"."Producto" ("IDProducto") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Inventario" ADD CONSTRAINT "IDTienda" FOREIGN KEY ("IDTienda") REFERENCES "public"."Tienda" ("IDTienda") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table NumerosSerie
-- ----------------------------
ALTER TABLE "public"."NumerosSerie" ADD CONSTRAINT "IDProducto" FOREIGN KEY ("IDProducto") REFERENCES "public"."Producto" ("IDProducto") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Producto
-- ----------------------------
ALTER TABLE "public"."Producto" ADD CONSTRAINT "IDCategoria" FOREIGN KEY ("IDCategoria") REFERENCES "public"."Categoria" ("IDCategoria") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Producto" ADD CONSTRAINT "IDMarca" FOREIGN KEY ("IDMarca") REFERENCES "public"."Marca" ("IDMarca") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Producto" ADD CONSTRAINT "IDModelo" FOREIGN KEY ("IDModelo") REFERENCES "public"."Modelo" ("IDModelo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ProductosTransaccion
-- ----------------------------
ALTER TABLE "public"."ProductosTransaccion" ADD CONSTRAINT "IDNumeroSerie" FOREIGN KEY ("IDNumeroSerie") REFERENCES "public"."NumerosSerie" ("IDNumeroSerie") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."ProductosTransaccion" ADD CONSTRAINT "IDProducto" FOREIGN KEY ("IDProducto") REFERENCES "public"."Producto" ("IDProducto") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."ProductosTransaccion" ADD CONSTRAINT "IDTransaccion" FOREIGN KEY ("IDTransaccion") REFERENCES "public"."Transaccion" ("IDTransaccion") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Salida
-- ----------------------------
ALTER TABLE "public"."Salida" ADD CONSTRAINT "IDProducto" FOREIGN KEY ("IDProducto") REFERENCES "public"."Producto" ("IDProducto") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Salida" ADD CONSTRAINT "IDTienda" FOREIGN KEY ("IDTienda") REFERENCES "public"."Tienda" ("IDTienda") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Salida" ADD CONSTRAINT "IDTransaccion" FOREIGN KEY ("IDTransaccion") REFERENCES "public"."Transaccion" ("IDTransaccion") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Transaccion
-- ----------------------------
ALTER TABLE "public"."Transaccion" ADD CONSTRAINT "IDCliente" FOREIGN KEY ("IDCliente") REFERENCES "public"."Cliente" ("IDCliente") ON DELETE NO ACTION ON UPDATE NO ACTION;
