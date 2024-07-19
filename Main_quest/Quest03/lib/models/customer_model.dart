// customer_model.dart
class Customer {
  final String name;
  final String job;
  final String companyName;
  final String homeAddress;
  final String workAddress;
  final String dayContact;
  final String nightContact;
  final String fax;
  final String phone;
  final String birthDate;
  final String email;
  final bool messageConsent;
  final String preferredCommunication;
  final Map<String, double> balanceGraph;

  Customer({
    required this.name,
    required this.job,
    required this.companyName,
    required this.homeAddress,
    required this.workAddress,
    required this.dayContact,
    required this.nightContact,
    required this.fax,
    required this.phone,
    required this.birthDate,
    required this.email,
    required this.messageConsent,
    required this.preferredCommunication,
    required this.balanceGraph,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'job': job,
      'companyName': companyName,
      'homeAddress': homeAddress,
      'workAddress': workAddress,
      'dayContact': dayContact,
      'nightContact': nightContact,
      'fax': fax,
      'phone': phone,
      'birthDate': birthDate,
      'email': email,
      'messageConsent': messageConsent,
      'preferredCommunication': preferredCommunication,
      'balanceGraph': balanceGraph,
    };
  }
}
