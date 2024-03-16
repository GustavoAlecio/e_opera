// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectImpl _$$CollectImplFromJson(Map<String, dynamic> json) =>
    _$CollectImpl(
      codigo: json['codigo'] as String? ?? '',
      destinoColheita: json['destinoColheita'] as String? ?? '',
      observacoes: json['observacoes'] as String? ?? '',
      descricao: json['descricao'] as String? ?? '',
      variedade: json['variedade'] as String? ?? '',
      quantidadeColetada: json['quantidadeColetada'] as String? ?? '',
      unidade: json['unidade'] as String? ?? '',
      nomeMotorista: json['nomeMotorista'] as String? ?? '',
      cpfMotorista: json['cpfMotorista'] as String? ?? '',
      placaCaminhao: json['placaCaminhao'] as String? ?? '',
      nomeTransportadora: json['nomeTransportadora'] as String? ?? '',
    );

Map<String, dynamic> _$$CollectImplToJson(_$CollectImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'destinoColheita': instance.destinoColheita,
      'observacoes': instance.observacoes,
      'descricao': instance.descricao,
      'variedade': instance.variedade,
      'quantidadeColetada': instance.quantidadeColetada,
      'unidade': instance.unidade,
      'nomeMotorista': instance.nomeMotorista,
      'cpfMotorista': instance.cpfMotorista,
      'placaCaminhao': instance.placaCaminhao,
      'nomeTransportadora': instance.nomeTransportadora,
    };
