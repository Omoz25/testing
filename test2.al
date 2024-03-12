page 50102 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    //  SourceTable = TableName;
    Caption = 'Testcase';

    layout
    {
        area(Content)
        {  

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyProcedure();
                end;
            }
        }
    }

    var

    trigger OnOpenPage()

    begin
     

        //try();
    end;

    procedure try()
    var
        Drinks: List of [Text];
        WaterExists: Boolean;
    begin
        // Initialize the list of drinks
        Drinks.AddRange('soda', 'water', 'juice');

        // Check if 'water' exists in the list
        WaterExists := Drinks.Remove('water');

        if WaterExists then
            Message('Water is in the list of drinks! 🚰')
        else
            Message('Water is not in the list of drinks. 😢');
    end;
procedure RemoveWaterFromList()
var
    Drinks: List of [Text];
begin
    // Initialize the list of drinks
    Drinks.AddRange('soda', 'water', 'juice');

    // Check if 'water' exists in the list
    if Drinks.Contains('water') then
    begin
        Drinks.Remove('water');
        Message('Removed "water" from the list of drinks.');
    end
    else
        Message('"Water" is not in the list of drinks.');
end;
 procedure MyProcedure()
var
    x: list of [Text];
    y:Boolean;

begin
    x.Add('water');
    x.Add('juice');
    x.Add('soda');
    y:=x.Contains('water');
    if y  then

        Message('exists')
   else 
        y:= x.Remove('water');
    
        message('%1',y)
         

end;



    // // procedure printMyNo()
    // var
    //     MyNo: Integer;
    // begin
    //     MyNo := 1;
    //     while MyNo <= 5 do
    //         Message('MyNo');
    //     MyNo := 0;
    // end;
}