unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:= True;
 edt5.Enabled:= True;
 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:= False;
 btn4.Enabled := False;
 btn5.Enabled:= True;
 btn6.Enabled:= True;
 cbb1.Enabled:= True;
end;

procedure TForm1.posisiawal;
begin
edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 edt4.Enabled:= False;
 edt5.Enabled:= False;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled := False;
  btn5.Enabled:= False;
  btn6.Enabled:= True;
  cbb1.Enabled:= False;
  bersih;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (cbb1.Text = '') then
begin
  ShowMessage('Data Kustomer Tidak Boleh Kosong!');
end else
begin
  if DataModule2.zkustomer.Locate('nik', edt1.Text, []) and
     DataModule2.zkustomer.Locate('nama', edt2.Text, []) and
     DataModule2.zkustomer.Locate('telp', edt3.Text, []) and
     DataModule2.zkustomer.Locate('email', edt4.Text, []) and
     DataModule2.zkustomer.Locate('alamat', edt5.Text, []) and
     DataModule2.zkustomer.Locate('member', cbb1.Text, []) then
  begin
    ShowMessage(' nik ' +edt1.Text+ ' nama ' +edt2.Text+ ' telp ' +edt3.Text+ ' email ' +edt4.Text+ ' alamat ' +edt5.Text+ ' Member ' +cbb1.Text+ ' Sudah Ada Didalam Sistem');
  end else
  begin
    // Simpan data
    with DataModule2.zkustomer do
    begin
      SQL.Clear;
      SQL.Add('insert into kustomer (nik, nama, telp, email, alamat, member) values("' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '","' + cbb1.Text + '")');
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil Disimpan!');
  end;
end;
posisiawal;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.zkustomer.Fields[1].AsString;
edt2.Text:= DataModule2.zkustomer.Fields[2].AsString;
edt3.Text:= DataModule2.zkustomer.Fields[3].AsString;
edt4.Text:= DataModule2.zkustomer.Fields[4].AsString;
edt5.Text:= DataModule2.zkustomer.Fields[5].AsString;
if cbb1.Text ='yes'then
begin
  lbl8.Caption := '10%'
end

else
begin
  lbl8.Caption := '5%';
end;

a:= DataModule2.zkustomer.Fields[0].AsString;

edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
cbb1.Enabled:= True;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:=True;
btn5.Enabled:= True;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (cbb1.Text = '') then
begin
  ShowMessage('Data Kustomer Tidak Boleh Kosong!');
end else
begin
  if (edt1.Text = DataModule2.zkustomer.Fields[1].AsString) and
     (edt2.Text = DataModule2.zkustomer.Fields[2].AsString) and
     (edt3.Text = DataModule2.zkustomer.Fields[3].AsString) and
     (edt4.Text = DataModule2.zkustomer.Fields[4].AsString) and
     (edt5.Text = DataModule2.zkustomer.Fields[5].AsString) and
     (cbb1.Text = DataModule2.zkustomer.Fields[6].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end else
  begin
    // Kode update
    with DataModule2.zkustomer do
    begin
      SQL.Clear;
      SQL.Add('update kustomer set nik = "' + edt1.Text + '", nama = "' + edt2.Text + '", telp = "' + edt3.Text + '", email = "' + edt4.Text + '", alamat = "' + edt5.Text + '", member = "' + cbb1.Text + '" where id = "' + a + '"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil Diupdate!');
  end;
end;
posisiawal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  //kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.zkustomer do
begin
SQL.Clear;
SQL.Add('delete from kustomer where id= "'+a+'"');
ExecSQL ;

SQL.Clear;
SQL.Add('select * from kustomer');
Open;
end;
ShowMessage('Data Berhasil Dihapus!!!');
end else
begin
ShowMessage('Data Batal Dihapus!!');
end;
posisiawal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm1.cbb1Change(Sender: TObject);
var
pilih : Integer;
begin
pilih := cbb1.ItemIndex;
case pilih of
0 : lbl8.Caption := '10%';
1 : lbl8.Caption := '5%';
end;
end;

procedure TForm1.edt6Change(Sender: TObject);
begin
with DataModule2.zkustomer do
begin
SQL.Clear;
SQL.Add('select * from kustomer where nama like "%'+edt6.Text+'%"');
Open;
end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  posisiawal;
  bersih;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
 DataModule2.frxrkustomer.ShowReport();
end;

end.