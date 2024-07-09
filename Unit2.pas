unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    con1: TZConnection;
    zkustomer: TZQuery;
    dskustomer: TDataSource;
    frxrkustomer: TfrxReport;
    frxdbdkustomer: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
