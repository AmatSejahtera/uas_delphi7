unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    lbl7: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    btn6: TButton;
    edt6: TEdit;
    lbl8: TLabel;
    procedure bersih;
    procedure posisiawal;
    procedure FormShow (Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure edt6Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: String;

implementation

uses dataModule, report;


{$R *.dfm}

procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  cbb1.Clear;
end;

procedure TForm1.posisiawal;
begin
 bersih;
 btn1.Enabled:=True;
 btn2.Enabled:=False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
 edt1.Enabled:=False;
 edt2.Enabled:=False;
 edt3.Enabled:=False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 cbb1.Enabled:=False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiawal;
end;



procedure TForm1.btn1Click(Sender: TObject);
begin
edt1.Enabled := True;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
cbb1.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := True;
end;



procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text='' then
begin
  ShowMessage('NIK Tidak Boleh Kosong!');
end else
if DataModule1.zqry1.Locate('nik',edt1.Text,[])then
begin
  ShowMessage('NIK '+edt1.Text+' Sudah Ada Didalam Sistem');
end else
begin
  with DataModule1.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+cbb1.Text+'")');

    ExecSQL;
    SQL.Clear;
    SQL.Add('select*from kustomer');
    Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;


procedure TForm1.btn3Click(Sender: TObject);
begin
 with DataModule1.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('UPDATE kustomer set nik="'+edt1.Text+'",nama="'+edt2.Text+'",telp="'+edt3.Text+'",email="'+edt4.Text+'",alamat="'+edt5.Text+'",member="'+cbb1.Text+'" where id= "'+a+'"');
    ExecSQL;
    SQL.Clear;
    SQL.Add('select*from kustomer');
    Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
   with DataModule1.zqry1 do
   begin
     SQL.Clear;
     SQL.Add('delete from kustomer where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select*from kustomer');
     Open;
   end;
   ShowMessage('Data Berhasil Dihapus!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;


procedure TForm1.btn5Click(Sender: TObject);
begin
bersih;
edt1.Enabled := False;
edt2.Enabled := False;
edt3.Enabled := False;
edt4.Enabled := False;
edt5.Enabled := False;
edt5.Enabled := False;
btn1.Enabled := True;
btn2.Enabled := False;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
cbb1.Enabled := False;
end;


procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule1.zqry1.Fields[1].AsString;
edt2.Text := DataModule1.zqry1.Fields[2].AsString;
edt3.Text := DataModule1.zqry1.Fields[3].AsString;
edt4.Text := DataModule1.zqry1.Fields[4].AsString;
edt5.Text := DataModule1.zqry1.Fields[5].AsString;
cbb1.Text := DataModule1.zqry1.Fields[6].AsString;
a := DataModule1.zqry1.Fields[0].AsString;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
edt1.Enabled:=True;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
cbb1.Enabled := True;
end;


procedure TForm1.edt6Change(Sender: TObject);
begin
with DataModule1.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('select*from kustomer where nama like "%'+edt6.Text+'%"');
    Open;
end;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
cbb1.Items.Add('No');
cbb1.Items.Add('Yes');
begin
  if cbb1.Text = 'Yes' then
    lbl7.Caption := 'DISKON   : 10%'
  else if cbb1.Text = 'No' then
    lbl7.Caption := 'DISKON   : 5%'
  else
    lbl7.Caption := 'DISKON   :';
end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
Form2.qckrp1.Preview;
end;

end.
