page 50101 "Student Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Student;
    Caption = 'Student Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                group(General)
                {
                    Caption = 'General';
                    field("No."; Rec."Roll No.")
                    {
                        ApplicationArea = All;
                    }
                    field(Name; Rec."First Name")
                    {
                        ApplicationArea = All;
                    }
                    field(LastName; Rec."Last Name")
                    {
                        ApplicationArea = All;
                    }

                }
                group(AddressGroup)
                {
                    Caption = 'Address';
                    field(Address; Rec.Address)
                    {
                        ApplicationArea = All;
                    }
                    field(Address2; Rec."Address 2")
                    {
                        ApplicationArea = All;
                    }
                    field(City; Rec.City)
                    {
                        ApplicationArea = All;
                    }
                    field("Post Code"; Rec."Post Code")
                    {
                        ApplicationArea = All;
                    }
                    field(Country; Rec.Country)
                    {
                        ApplicationArea = All;
                        TableRelation = "Country/Region";
                    }

                }
            }
        }

        area(FactBoxes)
        {

            part(StudentPicturePart; "Student Picture")
            {
                ApplicationArea = All;
                SubPageLink = "Roll No." = field("Roll No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {







        }
    }
}