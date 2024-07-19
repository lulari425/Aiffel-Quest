import 'package:flutter/material.dart';
import 'package:all_in_coach/models/customer_model.dart';

class CoachingPreparationScreen extends StatefulWidget {
  final int customerId;

  CoachingPreparationScreen({required this.customerId});

  @override
  _CoachingPreparationScreenState createState() => _CoachingPreparationScreenState();
}

class _CoachingPreparationScreenState extends State<CoachingPreparationScreen> {
  final _formKey = GlobalKey<FormState>();

  // Customer info fields
  String name = '';
  String job = '';
  String companyName = '';
  String homeAddress = '';
  String workAddress = '';
  String dayContact = '';
  String nightContact = '';
  String fax = '';
  String phone = '';
  String birthDate = '';
  String email = '';
  bool messageConsent = false;
  String preferredCommunication = '';

  // Life balance graph fields
  Map<String, double> balanceGraph = {
    '신체적인 건강': 5,
    '정신/정서적 건강': 5,
    '직업/고용 만족도': 5,
    '부부/연인 관계': 5,
    '가정생활 (직계가족, 부모, 자녀 관계)': 5,
    '친구/사회생활': 5,
    '오락/여가': 5,
    '생활방식': 5,
    '개인적인 인생성취도': 5,
    '종교/신앙생활': 5,
    '육체적인 편안함': 5,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코칭 준비'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildSectionTitle('고객 기본 정보'),
              _buildTextField('이름', (value) => name = value),
              _buildTextField('직업', (value) => job = value),
              _buildTextField('직장명', (value) => companyName = value),
              _buildTextField('자택 주소', (value) => homeAddress = value),
              _buildTextField('직장 주소', (value) => workAddress = value),
              _buildTextField('낮 연락처', (value) => dayContact = value),
              _buildTextField('밤 연락처', (value) => nightContact = value),
              _buildTextField('팩스', (value) => fax = value),
              _buildTextField('핸드폰', (value) => phone = value),
              _buildTextField('생년월일', (value) => birthDate = value),
              _buildTextField('E-mail', (value) => email = value),
              SwitchListTile(
                title: Text('메세지 수신 여부'),
                value: messageConsent,
                onChanged: (bool value) {
                  setState(() {
                    messageConsent = value;
                  });
                },
              ),
              _buildTextField('선호하는 통신 수단', (value) => preferredCommunication = value),

              SizedBox(height: 20),
              _buildSectionTitle('내 삶의 균형 그래프'),
              for (String key in balanceGraph.keys)
                _buildBalanceGraphField(key, (value) {
                  setState(() {
                    balanceGraph[key] = value;
                  });
                }),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _saveCustomer();
                  }
                },
                child: Text('저장'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextField(String label, Function(String) onSaved) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '필수 입력 항목입니다.';
          }
          return null;
        },
        onSaved: (value) => onSaved(value!),
      ),
    );
  }

  Widget _buildBalanceGraphField(String label, Function(double) onChanged) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          Slider(
            value: balanceGraph[label]!,
            min: 1,
            max: 10,
            divisions: 9,
            label: balanceGraph[label]!.round().toString(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  void _saveCustomer() {
    Customer newCustomer = Customer(
      name: name,
      job: job,
      companyName: companyName,
      homeAddress: homeAddress,
      workAddress: workAddress,
      dayContact: dayContact,
      nightContact: nightContact,
      fax: fax,
      phone: phone,
      birthDate: birthDate,
      email: email,
      messageConsent: messageConsent,
      preferredCommunication: preferredCommunication,
      balanceGraph: balanceGraph,
    );

    // Here you would typically send the data to your backend or database
    // For this example, we'll just print it to the console
    print('새 고객 정보: ${newCustomer.toJson()}');

    // After saving the customer, you might want to navigate back or show a success message
    Navigator.pop(context);
  }
}
