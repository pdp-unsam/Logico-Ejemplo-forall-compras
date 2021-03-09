compra(Persona,Producto,Cantidad,Vuelto):-
  dinero(Persona,Dinero),
  precio(Producto,Precio),
  Cantidad is Dinero // Precio,
  Dinero >= Precio,
  Vuelto is Dinero - Cantidad*Precio.

  
dinero(nicolas,200).
dinero(javier,1030).
dinero(ricardo,1000000).

precio(cafe,25 ).
precio(auriculares,250).
precio(mouse,400).
precio(teclado,1029).

compraCualquierCosa(Alguien):-
  dinero(Alguien,Dinero),
  forall(precio(Producto,Precio),Dinero >= Precio).


compraMasDeUnoDeCualquierCosa(Alguien):-
  dinero(Alguien,Dinero),
forall(precio(Producto,Precio),(compra(Alguien,Producto,Cantidad,Vuelto),Cantidad > 1)).


siempreQueCompraCompraVarios(Alguien):-
  dinero(Alguien,Dinero),
  forall((precio(Producto,Precio),compra(Alguien,Producto,Cantidad,Vuelto)),Cantidad > 1).