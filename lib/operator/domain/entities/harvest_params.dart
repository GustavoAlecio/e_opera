import 'package:freezed_annotation/freezed_annotation.dart';

part 'harvest_params.freezed.dart';
part 'harvest_params.g.dart';

@freezed

/// Representation of HarvestParamsa
sealed class HarvestParams with _$HarvestParams {
  const HarvestParams._();

  factory HarvestParams({
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
  }) = _HarvestParams;

  factory HarvestParams.fromJson(Map<String, dynamic> json) =>
      _$HarvestParamsFromJson(json);
}
