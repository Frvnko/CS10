// Title Bar
fullScreen();
String title = "Cue Cards";
PFont titleFont;
String[] fontList = PFont.list(); // Lists all fonts available on system
println("Start of Console");
printArray(fontList); // for listing all possible fonts to choose from, then createFont
titleFont = createFont ("Arial-Black", 55); //Copy spelling from CreateFont, then press "OK"
//will create the font
rect (displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); //Title Rectangle
fill (0); //Black Ink
textAlign (CENTER); //Centered in Rectangle
textFont(titleFont, 60); // Change the Size number
text(title, displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); // Title "Cue Cards"
fill(255); //Reset to white for rest of program
