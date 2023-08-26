import 'package:meu_app/class/pessoa_abstract.dart';
import 'package:meu_app/enum/tipo_numeracao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf,
      "TipoNotificacao": getTipoNotificacao()
    }.toString();
  }
}
