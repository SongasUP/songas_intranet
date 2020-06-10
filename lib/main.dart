import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MainMenu(),
  ));
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      /*  body: Center(
        child: RaisedButton(
          child: Text('List of People'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListOfPeople()),
            );
          },
        ),
      ),*/
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.people),
            title: Text('People in Plant List'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListOfPeople()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.crop_landscape),
            title: Text('Contractors Request'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contractors()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Overtime Request'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Overtime()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Maximo'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Maximo()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Confluence IMS'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfluenceIMS()),
              );
            },
          ),
          /* ListTile(
            leading: Icon(Icons.apps),
            title: Text('VMS'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VMS()),
              );
            },
          ),*/
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Maximo Test'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MaximoTest()),
              );
            },
          ),
          /*ListTile(
            leading: Icon(Icons.apps),
            title: Text('Etapro'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Etapro()),
              );
            },
          ),*/
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Epicor Webaccess'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EpicorWeb()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Help Desk'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpDesk()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Microsoft office online'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MSOnline()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('DropBox Online'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DropBox()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Bamboo HR'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BambooHR()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text( 'Payroll Portal'),
            //  onTap: () {
            //  Navigator.pop(context);
            // },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Payroll()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ListOfPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("People in Plant List"),
        ),
        body: WebView(
          initialUrl: 'http://10.101.1.102/HID/attender.php?',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class Contractors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contractors Request"),

        ),
        body: WebView(
          initialUrl: 'http://10.101.1.102/contractor/index.php',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class Overtime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Overtime Request"),
        ),
        body: WebView(
          initialUrl: 'http://10.101.1.102/overtime/index.php?',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class Maximo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Maximo"),
        ),
        body: WebView(
          initialUrl: 'http://10.101.1.8:9080/maximo/webclient/login/login.jsp',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class ConfluenceIMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Confluence IMS"),
        ),
        body: WebView(
          initialUrl: 'http://songas.atlassian.net/',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class VMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("VMS"),
        ),
        body: WebView(
          debuggingEnabled:true,
          initialUrl: 'https://10.10.1.61:8078/',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class MaximoTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Maximo Test"),
        ),
        body: WebView(
          initialUrl: 'http://10.101.2.7:9080/maximo/webclient/login/login.jsp?welcome=true',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class Etapro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Etapro"),
        ),
        body: WebView(
          initialUrl: 'https://10.101.2.5/etaproweb/',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class EpicorWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Epicor Webaccess"),
        ),
        body: WebView(
          initialUrl: 'http://10.101.1.24/ERP10-EWA/ice.ewa.syslogin.aspx?Return=ice.ewa.shell.aspx',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class HelpDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Help Desk"),
        ),
        body: WebView(
          initialUrl: 'http://10.101.1.95/Login.jsp?navLanguage=en-US',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class MSOnline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Microsoft office online"),
        ),
        body: WebView(
          initialUrl: 'https://login.microsoftonline.com/',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class DropBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dropbox Online"),
        ),
        body: WebView(
          initialUrl: 'https://www.dropbox.com/login',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class BambooHR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BambooHR Portal"),
        ),
        body: WebView(
          initialUrl: 'https://songas.bamboohr.com/login.php',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
class Payroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Payroll Portal"),
        ),
        body: WebView(
          initialUrl: 'https://gppmu.pwc.com/Globeleq/frmlogingeneral.aspx',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}