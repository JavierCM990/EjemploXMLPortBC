pageextension 50101 CustomerList extends "Customer List"
{
    actions
    {
        addlast("processing")
        {
            action(ExportToXml)
            {
                Caption = 'Exportar a XML';
                ToolTip = 'Exportar a XML';
                ApplicationArea = All;
                Image = XMLFile;
                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    CustomerXml: XmlPort "Customer XML";
                    OutStr: OutStream;
                    InStr: InStream;
                    FileName: Text;
                begin
                    TempBlob.CreateOutStream(OutStr);
                    CustomerXml.SetDestination(OutStr);
                    CustomerXml.Export();
                    TempBlob.CreateInStream(InStr);
                    FileName := 'Customers.xml';
                    File.DownloadFromStream(InStr, 'Download', '', '', FileName);
                end;
            }
        }
    }
}