part of 'pages.dart';

class CheckEmail extends StatefulWidget {
  @override
  _CheckEmailState createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white10,elevation: 0,iconTheme: IconThemeData(color:Colors.black),),
      body: Container(
        margin: EdgeInsets.only(top: size.height * .05),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * .5,
                    height: size.height * .5,
                     child: Image.asset('assets/images/message.png'),
                  ),
                  Text(
                    'Check your email',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'we have sent a password recover',
                    style: TextStyle(
                      fontSize: 22,color: Colors.purple
                    ),
                  ),
                  Text(
                    'instructions to your email',
                    style: TextStyle(
                      fontSize: 22,color: Colors.purple
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {DeviceApps.openApp('com.google.android.gm');},
                child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Open email app',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )))),
                    SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                
              }, 
              child: Text('Skip, i`ll confirm later', style: TextStyle(color:Colors.purple, fontSize: 18),)
            )
          ],
        ),
      ),
    );
  }
}
