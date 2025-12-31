with Ada.Text_IO; use Ada.Text_IO;

procedure Bruh is
   Age : Integer;

begin
   Put_Line ("Please enter your Age:");
   Age := Integer'Value (Get_Line);

   Put_Line (Integer'Image (Age));

   if Age > 20 then
      Put_Line ("You are older than 20 (unc).");
   elsif Age = 18 then
      Put_Line ("You are of legal age.");
   elsif Age < 20 then
      Put_Line ("Your age is below 20.");
   else
      Put_Line ("You are exactly 20 years old.");
   end if;

end Bruh;
