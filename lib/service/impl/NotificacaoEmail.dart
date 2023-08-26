import 'package:meu_app/class/pessoa_abstract.dart';
import 'package:meu_app/service/NotificacaoInterface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}
