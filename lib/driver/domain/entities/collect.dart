import 'package:freezed_annotation/freezed_annotation.dart';

part 'collect.freezed.dart';
part 'collect.g.dart';

@freezed

/// Representation of aCollect
sealed class Collect with _$Collect {
  const Collect._();

  factory Collect({
    @Default('') String codigo,
    @Default('') String destinoColheita,
    @Default('') String observacoes,
    @Default('') String descricao,
    @Default('') String variedade,
    @Default('') String quantidadeColetada,
    @Default('') String unidade,
    @Default('') String nomeMotorista,
    @Default('') String cpfMotorista,
    @Default('') String placaCaminhao,
    @Default('') String nomeTransportadora,
  }) = _Collect;

  factory Collect.fromJson(Map<String, dynamic> json) =>
      _$CollectFromJson(json);
}
