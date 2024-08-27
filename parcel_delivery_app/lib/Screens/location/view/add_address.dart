import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/common_widgets.dart';
import '../../instruction_for_parcel/instruction_main.dart';

class AddAddressManually extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Add Address',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _addressInfoSection(),
                        const SizedBox(height: 20),
                        _locationDetail(),
                        const SizedBox(height: 20),
                        _userNameInput(),
                        const SizedBox(height: 8),
                        _userPhoneInput(),
                        const SizedBox(height: 8),
                        _userDirectionInput(),
                        const SizedBox(height: 8),
                        _userTrademarkInput(),
                        const SizedBox(height: 8),
                        _saveAddressAs(),
                        const SizedBox(height: 8),
                        _threeButton(),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RectangularButton(
              onPressed: () {
                Get.off(()=>InstructionScreen());
              },
              title: 'Save Address'),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _addressInfoSection() {
    return SizedBox(
      height: 42,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Color(0x80D8D8D8),
          ),
          Text(
            'Enter the address where you want your order to be delivered to',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: Color(0xFF546B8D),
            ),
          ),
        ],
      ),
    );
  }

  Widget _locationDetail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 18),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 35,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
              child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Waghavadi Palace',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 1),
                Text('Bhavnagar,Gujarat, India'),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _userNameInput() {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: 'Person Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userPhoneInput() {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: 'Person Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userDirectionInput() {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: 'Person Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userTrademarkInput() {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: 'Person Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _saveAddressAs() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Save address as*',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _threeButton() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              minimumSize: Size(70, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              'Home',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Spacer(flex: 32),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.black;
                }
                return Colors.grey;
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.white;
                }
                return Colors.black;
              }),
              minimumSize: WidgetStateProperty.all<Size>(Size(70, 40)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            child: Text(
              'Office',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Spacer(flex: 32),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.black;
                }
                return Colors.grey;
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.white;
                }
                return Colors.black;
              }),
              minimumSize: WidgetStateProperty.all<Size>(Size(70, 40)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            child: Text(
              'Other',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
