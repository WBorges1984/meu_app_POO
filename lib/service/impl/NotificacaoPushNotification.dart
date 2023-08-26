import 'package:meu_app/service/NotificacaoInterface.dart';

import '../../class/pessoa_abstract.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push para: ${pessoa.getNome()}");
  }
}
