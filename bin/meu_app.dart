import 'package:meu_app/class/pessoa_fisica.dart';
import 'package:meu_app/class/pessoa_juridica.dart';
import 'package:meu_app/enum/tipo_numeracao.dart';
import 'package:meu_app/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("Danilo", "Rua 1", "2222222222",
      tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Empresa 1", "Rua 2", "5645454456454",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
