assignment000_retry
===================

New proj. file for assignment000

Xcode Intro Notes
Model = Data
View = What you see
Controller = Input “glue” between Model and View
View is like a stack of paper, the model is what’s written on the paper, and the controller is the hand that moves the stack

Properties: Characteristics of view or model (background color, text color etc)
	Model.property ←--- DOT NOTATION
Methods: Things that it can do 
[model method] 

V<______________C_____________>M ←---- STRONG link (dot notation)
V- - - -  - - - - > C←- - - - - - - - -M ←------ WEAK link (delegation, create a predefined method), observer notification

Examples of delegation:
-(UITable)tableView didSelectCellatIndevPath

Examples of observer notification:
[Notification postNote:@GameOver];

[] = methods, arrays  

arrays: arr = (1,2,3,4)
	arr[0] for this would point to 1
	can use arrays to select which text box to choose on pressing a button

{ }: methods local scoping
SCOPING:  example
	NSInt i=0
{
i = 1
Print I; 1
}
print I; 0 
 
what happens in vegas (curly brackets) stays in the curly brackets.

CLASS: a larger scope; local scope takes priority over class scope

SCOPE LEVELS:
-Global – usually never want to have global scope (for beginners)
-Class
-Local

( ): line scoping: which operation has to happen first
      ALSO return operations – give whatever you call back what it wants
	id: anything,  void: nothing (nothing to return)
Make sure you organize your files well. There will be a lot

DAY 2
•	Learned that putting an _ before the property name is the same as using self.propertyname, except that using self.~~ invoked dot notation and is therefore an extra call; presumably less memory to just use _, and it does the same exact thing.
•	Always put a semicolon after you finish a thought!
•	Use #import at the beginning of a .m file to import the properties of the .h file of another class into that class. That way, you can refer to the objects of Class 2 in the code of Class 1.
•	Filled in dots next to properties on header file mean its connected to the storyboard
•	Use [super …] method when using UIViewController parent methods

Calling Arrays Notes
Calling arrays

Arr = @[@1,@1,@2,etc]
To call on an objet within the array, use arr[2]
Or longhand [arr objectAtIndex:2]

Arr = @[L1, L2, L3, L4]


