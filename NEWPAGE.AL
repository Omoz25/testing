page 50101 SimplePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;
    caption = 'SimplePage';
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                /*   field(Name; NameSource)
                  {
                      ApplicationArea = All;

                  } */
            }
            group(SIMSIMA)
            {
                field(Name; 'NIGGAS')
                {
                    Editable = true;
                    Caption = 'What should I say';
                }

            }
            group(MONIED)
            {
                Editable = true;
                field(called; 'MO NIGGAS')
                {
                    Editable = true;
                    // DataClassification = ToBeClassified;
                    Caption = 'Basically this is where you should be';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(WhatDate)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    TodaysDate: Date;
                begin
                    TodaysDate := Today();

                    Message('Today is %1', Date2DMY(TodaysDate, 1));


                end;
            }
            action(erroh)
            {
               
            }
            action(absolute)
            {
                trigger OnAction()
                var
                    newNumber: integer;
                begin
                    newNumber := Abs(-10
                    );
                    Message('%1', newNumber);
                end;

            }
            action(power)
            {
                trigger OnAction()
                var
                    number1: Decimal;
                    power1: Decimal;
                    result1: Decimal;
                    text000: Label '%1 raised to the power of %2=%3';
                begin
                    number1 := 64;
                    power1 := 0.5;
                    result1 := Power(number1, power1);
                    Message(text000, number1, power1, result1);
                end;
            }
            // action(eva)
            // {
            //     trigger OnAction()
            //     var
            //     mytext: Text[20];
            //     myinteger: Integer;
            //     begin
            //         mytext:='5';
            //         Evaluate(myInteger,);
            //     end;
            // }
            action(randomye)
            {
                trigger OnAction()
                var
                    x: Integer;
                    text000: Label 'x=%1';
                begin
                    Randomize();
                    x := Random(100);
                    Message(text000, x);
                end;
            }
        }
    }
    procedure CaseExample(Operator: Text[20])
    var
        x: Integer;
        y: Integer;
        result: Integer;
    begin
        X := 5;
        Y := 10;
        case Operator of
            'sum':
                begin
                    result := x + y;
                    Message('result = %1', result);
                end;

            'sub':
                begin
                    result := x - y;
                    Message('result = %1', result);
                end;

            'mut':
                begin
                    result := x * y;
                    Message('result = %1', result);
                end;

            else
                Message('IS MATHS NEW?');
        end;
    end;

    trigger OnOpenPage()

    begin
        CaseExample('toy');
    end;

    trigger OnClosePage()
    begin
        Message('EAT NOSE TO TAIL');
    end;
}

codeunit 50109 TryMethods
{
    trigger OnRun()
    begin
        MyTryMethod();
        Message('ALL IS WELL');
    end;

    local procedure MyTryMethod()
    begin
        Error('SOMETHING WENT WRONG');
    end;


// }
// codeunit 50111 Procedures
// {
// local procedure MyProcedure()
// var 
//     dimension: Text[30];
//     vendorCode: Text[30];
//     FixitErrorInfo: ErrorInfo;
// begin
//     // setup the error info object
//     FixitErrorInfo.Title('The line dimension value isn''t valid');
//     FixitErrorInfo.Message(
//         StrSubstNo('The dimension value must be blank for the dimension %1 for Vendor %2', dimension, vendorCode)
//     );
//     FixitErrorInfo.DetailedMessage('Add some text to help the person troubleshooting this error.');

//     FixitErrorInfo.AddAction(
//         'Set value to blank', 
//         Codeunit::Pro, 
//         FixitCodeunitMethodName
//     );
    
//     Error(FixitErrorInfo);
// end
// var
//     myInt: Integer;
// begin
    
// end;
}


