import 'package:pratik_portfolio/features/portfolio/model/portfolio_model.dart';
import 'package:pratik_portfolio/features/portfolio/model/trusted_by_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRepository {
  final SupabaseClient _supabaseClient;

  SupabaseRepository(this._supabaseClient);

  Future<List<PortfolioModel>> getPortfolio() async {
    final response = await _supabaseClient.from('Portfolio').select('*');

    return List<PortfolioModel>.from(
        response.map((e) => PortfolioModel.fromJson(e)));
  }

  Future<List<TrustedByModel>> getTrustedClients() async {
    final response = await _supabaseClient.from('Trusted By').select('*');

    return List<TrustedByModel>.from(
        response.map((e) => TrustedByModel.fromJson(e)));
  }
}
