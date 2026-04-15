# Ejemplo XMLPort BC

Ejercicio de Business Central desarrollado en AL.

## Descripción
XMLPort para exportar toda la información de clientes 
en formato XML desde la página Lista de clientes.

## Archivos
- **CustomerXml.XmlPort.al** - XMLPort para exportar clientes a XML
- **CustomerList.PageExt.al** - Extensión de la página Lista de clientes con la acción de exportar
- **Customers.xml** - Ejemplo de exportación generado

## Cambios respecto al enunciado
- La acción addafter("&Customer") del enunciado no me funcionaba en BC por lo que he sustituido por addlast(processing) para que aparezca en el menú Acciones.

## Configuración
- Runtime: 16.1
- Application: 27.0.0.0

## Repositorio
https://github.com/JavierCM990/EjemploXMLPortBC