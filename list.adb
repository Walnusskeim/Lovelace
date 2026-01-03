with Ada.Text_IO; use Ada.Text_IO;

procedure List is
   A : Integer;

begin
   Put_Line ("How many numbers do you want to safe?");
   A := Integer'Value (Get_Line);

   declare
      type numbers is array (Integer range <>) of Integer;
      A1 : numbers (1 .. A);
      B : Integer;
      Index : Integer := 1;

   begin
      for I in A1'Range loop
         Put_Line ("Enter your" &Integer'Image(I) & ". number.");
         B := Integer'Value (Get_Line);
         A1 (Index) := B;
         Index := Index + 1;
         exit when Index = A + 1;
      end loop;

      New_Line;

      for I in A1'Range loop
         Put_Line (Integer'Image (A1 (I)));
      end loop;
   end;

   exception
      when Constraint_Error =>
         Put_Line ("Shut up");
end List;
