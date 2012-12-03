Bases de datos - ILI239
Tarea #2 - "Tumblerito"
-------------------------------------------------------------

Integrantes:	Paul Boedeker
				Adan Morales
				Sebastian Velasquez 

Supuestos.

1. En cuanto al registro de usuarios no se especifica el campo nombre, como dato de ingreso,
por lo que si bien pudo haberse considerado, nos dimos cuenta ya tarde sobre este "desperfecto",
por lo tanto al usuario se le hace referencia por su dirección de correo electronico.
Se ha utilizado la gema "devise".

2. Respecto al perfil de usuario, el link para ver los posts se muestra como "Ver" y no como 
enlace desde el mismo título del post, junto a esto se muestran tambien los links, "Editar" 
y "Eliminar", que como se especifica, está con los permisos respectivos para el correcto
acceso a los datos.
Para el caso de la paginación se ha utilizado la gema "kaminari", sin inconvenientes.

3. La asociación del post con una categoría está realizada al momento de realizar el post, 
pero, no se muestra al momento de ver el post con los respectivos comentarios, ya que no se 
especifica en donde debería mostrarse esta categoria, ni tampoco si es que se debe mostrar
en alguna parte. Se puede corroborar que sí se estan haciendo las asociaciones de los
posts con las categorias mediante la consola de rails.
Se ha utilizado la gema "simple_form".

4. Referente a los comentarios se ha implementado lo solicitado.

5. Se pretendió realizar la puntuación de un comentario utilizando la gema "make_flaggeable",
en donde se creó el modelo y controlador, pero hubo dramas al realizar los Likes o Unlikes
desde la vista, ya que por alguna razón, se hacía referencia en el link al
id del post y no al id del comentario que era a donde se debía hacer el enlace, aunque se 
puede corroborar que el like si está funcionando correctamente, ingresando la ruta en el url
 del navegador, luego de localhost:'puerto', agregar comments/'id_comentario'/like (o unlike), 
y luego se puede corroborar en la consola de rails, que si se esta haciendo la puntuación 
correspondiente en el comentario respectivo.

6. Para la realización de este punto se ha utilizado la gema "gravtastic", sin inconvenientes.



En el directorio bd22-2012-2/app/

se encuentran los archivos propios de rails, y como es propio de este, los archivos del 
modelo, vista, controlador se encuentran en el directorio 'app/', lo referente
a la base de datos en 'db/' y la configuración a la base de datos entre otros en 'config/'.


