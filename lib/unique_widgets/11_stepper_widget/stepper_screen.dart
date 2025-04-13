import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;
  final _formKey = GlobalKey<FormState>();
  String? _name, _email, _phone;

  void _continue() {
    if (_currentStep < 2) {
      setState(() => _currentStep += 1);
    } else {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Completed!'),
            content: Text('Name: $_name\nEmail: $_email\nPhone: $_phone'),
          ),
        );
      }
    }
  }

  void _cancel() {
    if (_currentStep > 0) {
      setState(() => _currentStep -= 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stepper Widget"), backgroundColor: Colors.indigo.shade900,),
      body: Form(
        key: _formKey,
        child: Stepper(
          currentStep: _currentStep,
          onStepContinue: _continue,
          onStepCancel: _cancel,
          stepIconBuilder: (stepIndex, stepState) {
            return Icon(Icons.edit_note_rounded, color: Colors.white);
          },
          steps: [
            Step(
              title: const Text("Personal Info"),
              isActive: _currentStep >= 0,
              state: _currentStep > 0 ? StepState.complete : StepState.indexed,
              content: TextFormField(
                decoration: const InputDecoration(labelText: 'Enter your name'),
                validator: (val) =>
                val == null || val.isEmpty ? "Required" : null,
                onSaved: (val) => _name = val,
              ),
            ),
            Step(
              title: const Text("Contact Info"),
              isActive: _currentStep >= 1,
              state: _currentStep > 1 ? StepState.complete : StepState.indexed,
              content: Column(
                children: [
                  TextFormField(
                    decoration:
                    const InputDecoration(labelText: 'Enter your email'),
                    validator: (val) => val!.contains('@') ? null : 'Invalid',
                    onSaved: (val) => _email = val,
                  ),
                  TextFormField(
                    decoration:
                    const InputDecoration(labelText: 'Enter your phone'),
                    keyboardType: TextInputType.phone,
                    validator: (val) => val!.length >= 10
                        ? null
                        : 'Enter at least 10 digits',
                    onSaved: (val) => _phone = val,
                  ),
                ],
              ),
            ),
            Step(
              title: const Text("Complete"),
              isActive: _currentStep >= 2,
              state: StepState.indexed,
              content: const Text(
                'Click Continue to finish and view summary.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
