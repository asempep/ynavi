import 'package:flutter/material.dart';

class MemoInputPage extends StatefulWidget {
  const MemoInputPage({super.key});

  @override
  State<MemoInputPage> createState() => _MemoInputPageState();
}

class _MemoInputPageState extends State<MemoInputPage> {

  late TextEditingController textController;

  @override
  void initState() {
    print('initState called');
    // TODO: implement initState
    super.initState();
    textController=TextEditingController();
  }

  @override
  void dispose(){
    print('initState called');
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Memo'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
         child: Column(
            children:
            [TextField(
              controller: textController,
              decoration: InputDecoration(hintText: 'Enter Memo'),
              maxLines: 25,
            ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context,textController.text);
              }, child: Text('Submit'))
            ],
          ) )
    );
  }
}
