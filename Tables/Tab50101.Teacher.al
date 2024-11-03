table 50101 Teacher
{
    DataClassification = CustomerContent;
    Caption = 'Teacher';
    Description = 'Teacher Table';

    fields
    {
        field(1; "Registration No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(10; "First Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(11; "Last Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(12; Address; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(13; "Address 2"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(14; City; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(15; "Post Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Registration No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Registration No.", "First Name", "Last Name", Address, City, "Post Code")
        {
        }

        fieldgroup(Brick; "Registration No.", "First Name", "Last Name", Address, City, "Post Code")
        {
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}