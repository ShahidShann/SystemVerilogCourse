//-------------------------------------------------------
//If the method of the parent class is overridden in the child 
 //class, then using the ‘super’ keyword parent class method
//can be accessed from the child class.
//-------------------------------------------------------
class base_class;
  string fan,switch; //properties of class

  function void display();    //method of class
    switch="ON";
    $display("Here using super keyword we can get both display() methods");
    $write("switch is %s " ,switch);
  endfunction:display

endclass:base_class

class sub_class extends base_class;
  string fan="ON";
  
  function void display();
    super.display; //define the super keyword inside the sub_class
    $write("that's why fan is %s \n" ,fan);
  endfunction:display

endclass:sub_class

sub_class s1;  //creating handle for class

module super_example;

  initial begin:BEGIN_I
    s1 =new();  //create an object
    s1.display();  //access the sub_class method   
  end:BEGIN_I

endmodule:super_example
