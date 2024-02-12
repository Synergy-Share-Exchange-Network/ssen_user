import 'package:ssen_user/Models/company_profile_model.dart';

abstract class FirebaseWhyInvestAbstract {
  Future<String> create(CompanyProfileModel companyProfileModel);
  Future<String> delete(String id);
  Future<String> update(CompanyProfileModel companyProfileModel);
  Future<CompanyProfileModel> read(String id);
}
