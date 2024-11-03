table 50102 "Custom Temp Blob"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer) { DataClassification = SystemMetadata; }
        field(2; BlobData; Blob) { DataClassification = ToBeClassified; }
    }


}
