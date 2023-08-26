import 'package:meu_app/class/pessoa_abstract.dart';
import 'package:meu_app/enum/tipo_numeracao.dart';
import 'package:meu_app/service/NotificacaoInterface.dart';
import 'package:meu_app/service/impl/NotificacaoEmail.dart';
import 'package:meu_app/service/impl/NotificacaoPushNotification.dart';
import 'package:meu_app/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
