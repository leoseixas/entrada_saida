import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;
  String _escolhaUsuario;
  bool _escolhaNoti = false;
  double valor = 5;
  String label = "Valor Selecionado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida basileira"),
              activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (bool valor){
                setState(() {
                  _comidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("A melhor comida basileira"),
              activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (bool valor){
                setState(() {
                  _comidaMexicana = valor;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text("Masculino"),
                Radio(
                    value: "m",
                    groupValue: _escolhaUsuario,
                    onChanged: (String escolha) {
                      setState(() {
                        _escolhaUsuario = escolha;
                      });
                    }
                ),
                Text("Feminino"),
                Radio(
                    value: "f",
                    groupValue: _escolhaUsuario,
                    onChanged: (String escolha) {
                      setState(() {
                        _escolhaUsuario = escolha;
                      });
                    }
                ),
              ],
            ),
            
            RadioListTile(
              title: Text("Masculino"),
                value: "m", 
                groupValue: _escolhaUsuario, 
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
              title: Text("Feminino"),
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            
            Switch(
                value: _escolhaNoti,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaNoti = valor;
                  });
                }
            ),
            Text("Reseber notificações?"),

            SwitchListTile(
              title: Text("Receber notificações?"),
                value: _escolhaNoti,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaNoti = valor;
                  });
                }
            ),

            Slider(
                value: valor,
                min: 0,
                max: 10,
                label: label,
                divisions: 5,
                onChanged: (double novoValor){
                  setState(() {
                    valor = novoValor;
                    label = "Valor selecionado " + novoValor.toString();
                  });
                  print("novo valor: " + novoValor.toString());
                }
            ),

            RaisedButton(
                child: Text(
                    "Salvar",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                onPressed: (){
                  print(
                    "Comida Brasileira" + _comidaBrasileira.toString() +
                      "Comida Mexicana" + _comidaMexicana.toString() +
                      "resultado: " + _escolhaUsuario
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
