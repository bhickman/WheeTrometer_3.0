public void Connect() {             // conect to com port bang
   if(Comselected==false){
 try{
  serial = new Serial(this, comList[Ss], 19200);
  println(comList[Ss]);
  myTextarea2.setText("CONNECTED");
  Comselected = true;
 }
 catch (Exception e){
   warning.show();
   warningtxt.setText("Some type of com port error");
   println("Some type of com port error. Restart program");
   myTextarea2.setText("COM ERROR");
 }
   }
   else{
   println("already connected");
   }
}


public void Save_run() {             // set path bang   
  selectInput("Select a file to process:", "fileSelected");
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } 
  else {
    file2 = selection.getAbsolutePath();
    println("User selected " + file2);
   // myTextarea.setText(file2);
      ///////////////////////////////////////
  //  String file2 = "C:/Users/Ben/Documents/Voltammetry Stuff/log/data.txt";
  try{
  //saveStream(file2,file1);
  String[] file1str = loadStrings(file1);
  String[] blankstr = loadStrings(blankfile);
    for(int k = 0; k < file1str.length; k++){
    logData(file2, file1str[k], true);
    }
    logData(file2, "\n", true);
    for(int k = 0; k < blankstr.length; k++){
    logData(file2, blankstr[k], true);
    }
      }
      catch(Exception e){
        println("did not save right");
      }
/////////////////////////////////////////
  }
} 



public void Start_Run() {  // start run bang
  if(blank.length >750){
  bool = true;
  myTextarea2.setColor(#D8070E);
  myTextarea2.setText("RUNNING SCAN");
  }
  else{
  myTextarea2.setColor(#D8070E);
  myTextarea2.setText("RUN BLANK");
  }
}

public void Intergrate_Data() {  // intergrate data bang
win.show();
winshow = true;
}    //intergrate bag for popup window is in intergrat_window tab//

public void Blank() {  // intergrate data bang
  bool = true;
  runblank = true;
  myTextarea2.setColor(#D8070E);
  myTextarea2.setText("RUNNING BLANK");
  blank = newblank;
} 


