import 'package:ssen_user/Models/company_profile-model.dart';

abstract class FirebaseAnnouncementAbstract {
  Future<String> create(CompanyProfileModel companyProfileModel);
  Future<String> delete(String id);
  Future<String> update(CompanyProfileModel companyProfileModel);
  Future<CompanyProfileModel> read(String id);
}
