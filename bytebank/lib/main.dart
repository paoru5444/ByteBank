import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: ListaTransferencias(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    )));

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
        ItemTransferencia(Transferencia('100', '1000')),
        ItemTransferencia(Transferencia('200', '1000')),
        ItemTransferencia(Transferencia('300', '1000')),
      ],);
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia

  ItemTransferencia( _transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text( _transferencia.valor),
        subtitle: Text( _transferencia.numeroConta),
      )
    );
  }
}

class Transferencia {
  final String valor;
  final String numeroConta;

  Transferencia(this.valor, this.numeroConta)
}