with Ada.Text_IO; use Ada.Text_IO;

procedure Ee_One_D is
   F         : File_Type;
   File_Name : constant String := "output.txt";
   A : String (1..20);
   Length : Natural;
begin
   Put_Line ("Enter your word here: ");
   Get_Line (A, Length);

   Create (F, Out_File, File_Name);
   Put_Line (F, "Hello World #1");
   Put_Line (F, A (1..Length));
   Close (F);

   Open (F, In_File, File_Name);
   while not End_Of_File (F) loop
      Put_Line (Get_Line (F));
   end loop;
   Close (F);
end Ee_One_D;