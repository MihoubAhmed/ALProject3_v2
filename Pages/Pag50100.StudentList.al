page 50100 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    Caption = 'Student List';

    layout
    {

        area(Content)
        {
            repeater(Group)
            {


                field("Thumbnail Student Picture"; Rec."Thumbnail Student Picture")
                {
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field("Student Picture"; Rec."Student Picture")
                {
                    ShowCaption = false;
                    ApplicationArea = All;
                    // Editable = false;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field("No."; Rec."Roll No.")
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field(Name; Rec."First Name")
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field(LastName; Rec."Last Name")
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field(Address2; Rec."Address 2")
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    TableRelation = "Country/Region";
                    Editable = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Student Card", Rec);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ViewCard)
            {
                Caption = 'View Card';
                Image = View;

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Student Card", Rec);
                end;
            }


        }


    }

    var
        myInt: Integer;


}