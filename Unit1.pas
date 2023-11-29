unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtnama: TEdit;
    edtkelas: TEdit;
    edtttl: TEdit;
    edtalamat: TEdit;
    btnsimpan: TButton;
    btnubah: TButton;
    btnhps: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btnbaru: TButton;
    btnkeluar: TButton;
    lbl5: TLabel;
    btn1: TButton;
    procedure btnbaruClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnubahClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnhpsClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id_anggota : string;

implementation

{$R *.dfm}

procedure TForm1.bersih;
begin
edtnama.Clear;
edtkelas.Clear;
edtttl.Clear;
edtalamat.Clear;

end;

procedure TForm1.btnbaruClick(Sender: TObject);
begin
bersih;
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
btnbaru.Enabled:= True;
edtnama.Enabled:= True;
edtkelas.Enabled:= True;
edtttl.Enabled:= True;
edtalamat.Enabled:= True;
end;

procedure TForm1.posisiawal;
begin
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
edtnama.Enabled:= False;
edtkelas.Enabled:= False;
end;

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
if edtnama.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtkelas.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtttl.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtalamat.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else

zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tabel_anggota values(null,"'+edtnama.Text+'","'+edtkelas.Text+'","'+edtttl.Text+'","'+edtalamat.Text+'" )');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_anggota');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;

procedure TForm1.btnubahClick(Sender: TObject);
begin
  if (edtnama.Text= '')or (edtkelas.Text ='')or(edtttl.Text='')or (edtalamat.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtnama.Text = zqry1.Fields[1].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
if edtkelas.Text = zqry1.Fields[2].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_anggota set nama ="'+edtnama.text+'",kelas = "'+edtkelas.text+'" where id_anggota= "'+id_anggota+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_anggota');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
id_anggota:= zqry1.Fields[0].AsString;
edtnama.Text:= zqry1.FieldList[1].AsString;
edtkelas.Text:= zqry1.FieldList[2].AsString;
edtttl.Text:= zqry1.FieldList[3].AsString;
edtalamat.Text:= zqry1.FieldList[4].AsString;

edtnama.Enabled:= True;
edtkelas.Enabled:= True;
edtttl.Enabled:= True;
edtalamat.Enabled:= True;

btnsimpan.Enabled:= False;
btnubah.Enabled:= True;
btnhps.Enabled:= True;
btnbaru.Enabled:= True;
end;

procedure TForm1.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_anggota where id_anggota="'+id_anggota+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_anggota');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm1.btnkeluarClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
