with Ada.Text_IO; use Ada.Text_IO;

procedure Calc is
   A, B : Integer;
   C : Character;

begin
   Put_Line ("Enter your first number:");
   A := Integer'Value (Get_Line);

   Put_Line ("Enter your second number:");
   B := Integer'Value (Get_Line);

   Put_Line ("Now, enter you operator:");
   Get (C);

   Put_Line (Integer'Image (A));
   Put_Line (Integer'Image (B));
   Put_Line (Character'Image (C));

   case C is
      when '+' =>
         Put_Line (Integer'Image (A + B));
      when '-' =>
         Put_Line (Integer'Image (A - B));
      when '*' =>
         Put_Line (Integer'Image (A * B));
      when '/' =>
         Put_Line (Integer'Image (A / B));
      when others =>
         Put_Line ("Shut up");
   end case;

exception
   when Constraint_Error =>
      Put_Line ("Shut up");

end Calc;
