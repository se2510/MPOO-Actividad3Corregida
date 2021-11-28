import 'package:flutter/material.dart';
import 'package:actividad_3/second_page.dart';

void main() => runApp(pantalla_principal());

class pantalla_principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 3',
      color: const Color.fromRGBO(1, 0, 0, 1),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Actividad 3 :D"),
            backgroundColor: const Color.fromRGBO(146, 1, 1, 1),
          ),
          body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return myCards(context, index);
            },
          )),
    );
  }

  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.black),
    ],
  );

  Widget myCards(BuildContext context, int index) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            myListTile(index),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                stars,
                TextButton(
                    onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                            return second_page(index);
                          })),
                        },
                    child: const Text("Comprar")),
              ],
            ),
          ],
        ));
  }
} // End of class

Widget myListTile(int index) {
  Widget a = const ListTile();
  if (index == 0) {
    a = ListTile(
        contentPadding: const EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: const Text("Hamburguesa"),
        subtitle: const Text(
            "Hamburguesa con 300 gr. de carne de res con lechuga, jitomate, cebolla y queso manchego. Precio: 80 pesos"),
        leading:
            Image.asset("assets/images/hamburguesaClasica.jpeg", scale: 1.0),
        trailing: const Icon(Icons.plus_one));
  }
  if (index == 1) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Boneless"),
        subtitle: Text(
            "300 gr de boneless (trozos de pechuga empanizado) aderezado con salsa búfalo. Acompañado de 25 ml de aderezo Ranch. Precio: 195 pesos"),
        leading: Image.asset("assets/images/boneless.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 2) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("French fries"),
        subtitle: Text(
            "250g de papas fritas condimentadas con sal y pimienta. Precio: 45 pesos"),
        leading: Image.asset("assets/images/papasalafrancesa.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 3) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Sandwich"),
        subtitle: Text(
            "Emparedado a la parrilla de jamón de pavo con queso manchego y Chihuahua.Precio: 70 pesos"),
        leading: Image.asset("assets/images/sandwich.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 4) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Heladito"),
        subtitle: Text(
            "250 ml de helado vainilla acompañado de jarabe de chocolate. Precio: 35 pesos"),
        leading: Image.asset("assets/images/helado.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 5) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Pizza"),
        subtitle: Text(
            "Pizza de pepperoni de 30 cm con queso mozzarella y orilla rellena de queso. Precio: 249 pesos"),
        leading: Image.asset("assets/images/pizza.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }

  if (index == 6) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Dedos de quesito"),
        subtitle: Text(
            "300 g de dedos de queso empanizados acompañados de crema ácida y salsa de tomate. Precio: 52 pesos"),
        leading: Image.asset("assets/images/dedosdeQueso.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 7) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Aros de cebolla"),
        subtitle: Text(
            "100 g de aros de cebolla empanizados acompañados de aderezo mil Islas. Precio: 25 pesos"),
        leading: Image.asset("assets/images/arosdeCebolla.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 8) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Hot dog"),
        subtitle: Text(
            " Hot dog con salchicha de pavo y tocino acompañado de pico de gallo. Precio: 60 pesos"),
        leading: Image.asset("assets/images/hotDog.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 9) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Milkshake"),
        subtitle: Text(
            "250ml de malteada de chocolate con crema batida y chispas. Precio: 38 pesos"),
        leading: Image.asset("assets/images/milkShake.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 10) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Smoothie"),
        subtitle: Text(
            "Bebida sabor a mango a base de hielo con chamoy y gomitas enchilosas. Precio: 38 pesos"),
        leading: Image.asset("assets/images/smoothie.jpg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 11) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Pastel"),
        subtitle: Text(
            "150 gr de pastel de chocolate relleno de mermelada de frutos rojos. Precio: 58 pesos"),
        leading: Image.asset("assets/images/pastel.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 12) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text("Cheve"),
        subtitle: Text(
            "250 ml de cerveza artesanal, obscura de origen mexicano. Precio: 80 pesos"),
        leading: Image.asset("assets/images/cerveza.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 13) {
    a = ListTile(
        contentPadding: const EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: const Text("Pasta"),
        subtitle: Text(
            "380 gr  de spaghetti alla bolognesa acompañado de pan de ajo. Precio: 240 pesos"),
        leading: Image.asset("assets/images/pasta.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  if (index == 14) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: const Text("Cookies"),
        subtitle: const Text(
            "100 gr de galleta artesanal con chispas de chocolate y relleno sorpresa. Precio: 28 pesos"),
        leading: Image.asset("assets/images/galletas.jpeg", scale: 1.0),
        trailing: Icon(Icons.plus_one));
  }
  return a;
} 

/*
Comida hamburguesa = new Comida(
    "assets/images/hamburguesaClasica.jpeg",
    "Hamburguesa",
    80,
    "Hamburguesa con 300 gr. de carne de res con lechuga, jitomate, cebolla y queso manchego.");
Comida arosdeCebolla = new Comida(
    "assets/images/arosdeCebolla.jpeg",
    "Aros de Cebolla",
    25,
    "100 g de aros de cebolla empanizados acompañados de aderezo mil Islas.");
Comida boneless = new Comida("assets/images/boneless.jpeg", "Boneless", 195,
    "300 gr de boneless (trozos de pechuga empanizado) aderezado con salsa búfalo. Acompañado de 25 ml de aderezo Ranch.");
Comida cerveza = new Comida("assets/images/cerveza.jpeg", "Cerveza", 80,
    "250 ml de cerveza artesanal, obscura de origen mexicano. ");
Comida dedosQueso = new Comida(
    "assets/images/dedosdeQueso.jpeg",
    "Dedos de quesito",
    52,
    "300 g de dedos de queso empanizados acompañados de crema ácida y salsa de tomate.");
Comida galletas = new Comida("assets/images/galletas.jpeg", "Galletas", 28,
    "100 gr de galleta artesanal con chispas de chocolate y relleno sorpresa.");
Comida helado = new Comida("assets/images/helado.jpeg", "Helado", 35,
    "250 ml de helado vainilla acompañado de jarabe de chocolate.");
Comida hotDogs = new Comida("assets/images/hotDog.jpeg", "Hot Dogs", 60,
    "Hot dog con salchicha de pavo y tocino acompañado de pico de gallo.");
Comida milkShake = new Comida("assets/images/milkShake.jpeg", "Milk Shake", 38,
    "250ml de malteada de chocolate con crema batida y chispas. ");
Comida papas = new Comida(
    "assets/images/papasalafrancesa.jpeg",
    "Papitas a la francesa",
    45,
    "250g de papas fritas condimentadas con sal y pimienta. ");
Comida pasta = new Comida("assets/images/pasta.jpeg", "Pasta", 240,
    "380 gr  de spaghetti alla bolognesa acompañado de pan de ajo.");
Comida pastel = new Comida("assets/images/pastel.jpeg", "Pastel", 58,
    "150 gr de pastel de chocolate relleno de mermelada de frutos rojos. ");
Comida pizza = new Comida("assets/images/pizza.jpeg", "Pizza", 249,
    "Pizza de pepperoni de 30 cm con queso mozzarella y orilla rellena de queso.");
Comida sandwich = new Comida(
    "assets/images/sandwich.jpeg",
    "Sandwich bien rikolino",
    70,
    "Emparedado a la parrilla de jamón de pavo con queso manchego y Chihuahua.");
Comida smoothie = new Comida("assets/images/smoothie.jpeg", "Smoothie", 38,
    "250ml de malteada de chocolate con crema batida y chispas."); */