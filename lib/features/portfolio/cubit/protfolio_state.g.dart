// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protfolio_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioStateImpl _$$PortfolioStateImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioStateImpl(
      portfolioList: (json['portfolioList'] as List<dynamic>?)
              ?.map((e) => PortfolioModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PortfolioModel>[],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$PortfolioStateImplToJson(
        _$PortfolioStateImpl instance) =>
    <String, dynamic>{
      'portfolioList': instance.portfolioList,
      'isLoading': instance.isLoading,
    };
