import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FormularioTransferencia(),
    ));
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                  labelText: 'Numero da conta',
                  hintText: '0000',
                ),
                keyboardType: TextInputType.number,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00',
                ),
                keyboardType: TextInputType.number,
              ),
          ),
          RaisedButton(
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transferências"),
        ),
        body: Column(
          children: <Widget>[
            ItemTransferencia(Transferencia('100', '1000')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  Transferencia _transferencia;

  ItemTransferencia(_transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferencia.valor),
      subtitle: Text(_transferencia.numeroConta),
    ));
  }
}

class Transferencia {
  final String valor;
  final String numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
