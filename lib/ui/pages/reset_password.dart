part of 'pages.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController emailText = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white10,elevation: 0,iconTheme: IconThemeData(color:Colors.black),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 58, fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                    'Enter the email associated with your account and we`ll send an email with instructions to reset your password',
                    style: TextStyle(
                      fontSize: 22,color: Colors.purple
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                TextField(
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)),
                  ),
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                          if (emailText.text == null) {
                            print('error');
                          } else {
                            AuthServices.resetPassword(emailText.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckEmail()));
                          }
                        },
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Send intructions",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}