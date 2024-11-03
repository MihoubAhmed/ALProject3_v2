table 50100 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Roll No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(4; Address; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(5; "Address 2"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(6; City; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(7; "Post Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(8; Country; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(9; "Student Picture"; MediaSet)
        {
            ExtendedDatatype = Person;
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                updateBlob();
            end;


        }
        field(10; "Thumbnail Student Picture"; Blob)
        {
            Caption = 'Thumbnail Picture';
            Subtype = Bitmap;
            DataClassification = CustomerContent;

        }
        field(140; Image; Media)
        {
            Caption = 'Image';
            ExtendedDatatype = Person;
        }
    }

    keys
    {
        key(PK; "Roll No.")
        {
            Clustered = true;
        }
    }

    procedure updateBlob()
    var
        TenantMedia: Record "Tenant Media";
        InStream: InStream;
        OutStream: OutStream;
        TempBlob: Codeunit "Temp Blob";
    begin
        Rec.CalcFields("Thumbnail Student Picture");
        if (Rec."Student Picture".Count > 0) then begin
            if TenantMedia.Get(Rec."Student Picture".Item(1)) then begin
                TenantMedia.CalcFields(Content);
                TenantMedia.Content.CreateInStream(InStream);
                TempBlob.CreateOutStream(OutStream);
                Rec."Thumbnail Student Picture".CreateOutStream(OutStream);
                CopyStream(OutStream, InStream);
                rec.Modify();
            end;
        end else begin
            Clear(Rec."Thumbnail Student Picture");
            rec.Modify();
        end;
    end;

    trigger OnModify()
    begin
        updateBlob()
    end;

}