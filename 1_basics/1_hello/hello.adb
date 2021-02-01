with Ada.Text_IO;
-- With allows to use a library unit, here Ada.Text_IO for textual functions:
-- Put_Line, New_Line, Get_Line.

-- procedure = void function like in C or C++.
-- Entry point (main) of the program.
procedure Hello is
    -- declarative part:
    A, B, C : Integer;
begin
    -- executable part:
    
    Ada.Text_IO.Put("Hello Wold!");
    Ada.Text_IO.New_Line;
    
    -- Assignment is ":="
    -- Equality operator "="
    -- Attribute: Entity'Attribute
    
    Ada.Text_IO.Put("Insert the first number (integer): ");
    -- Value attribute transforms String to value of a type.
    A := Integer'Value (Ada.Text_IO.Get_Line);
    Ada.Text_IO.New_Line;
    Ada.Text_IO.Put("Insert the second number (integer): ");
    B := Integer'Value (Ada.Text_IO.Get_Line);
    Ada.Text_IO.New_Line;
    C := A + B;

    if C = 0 then
        Ada.Text_IO.Put_Line("Result is 0");
    elsif C > 0 then
        -- Image attribute transforms a value type to a String.
        -- & is concatenate operator in Strings.
        Ada.Text_IO.Put_Line("Result is positive: " & Integer'Image(C));
    elsif C < 0 then
        Ada.Text_IO.Put_Line("Result is negative: " & Integer'Image(C));
    end if;

    Ada.Text_IO.Put("Good bye cruel world!");
    Ada.Text_IO.New_Line;

end Hello;
