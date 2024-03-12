pageextension 50125 MyExtension extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        modify(SendApprovalRequest){
            trigger OnBeforeAction()
            var
                myInt: Integer;
            begin
                
            end;
        }
    }
    
    var
        myInt: Integer;
}