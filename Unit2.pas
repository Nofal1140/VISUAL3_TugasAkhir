unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtjudul: TEdit;
    edtpeng: TEdit;
    edtpener: TEdit;
    edtthn: TEdit;
    btnsimpan: TButton;
    btnubah: TButton;
    btnhps: TButton;
    dbgrd1: TDBGrid;
    btnbaru: TButton;
    btnkeluar: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl5: TLabel;
    btn1: TButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btnubahClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnhpsClick(Sender: TObject);
    procedure btnbaruClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id_buku: string;

implementation

{$R *.dfm}

procedure TForm2.btnsimpanClick(Sender: TObject);
begin
if edtjudul.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtpeng.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtpener.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtthn.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else

zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tabel_buku values(null,"'+edtjudul.Text+'","'+edtpeng.Text+'","'+edtpener.Text+'","'+edtthn.Text+'" )');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_buku');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;

procedure TForm2.bersih;
begin
edtjudul.Clear;
edtpeng.Clear;
edtpener.Clear;
edtthn.Clear;
end;

procedure TForm2.posisiawal;
begin
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
edtjudul.Enabled:= False;
edtpeng.Enabled:= False;
edtpener.Enabled:= False;
edtthn.Enabled:= False;
end;

procedure TForm2.btnubahClick(Sender: TObject);
begin
  if (edtjudul.Text= '')or (edtpeng.Text ='')or(edtpener.Text='')or (edtthn.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtjudul.Text = zqry1.Fields[1].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_buku set judul ="'+edtjudul.text+'",pengarang = "'+edtpeng.text+'" where id_buku= "'+id_buku+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_buku');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
id_buku:= zqry1.Fields[0].AsString;
edtjudul.Text:= zqry1.FieldList[1].AsString;
edtpeng.Text:= zqry1.FieldList[2].AsString;
edtpener.Text:= zqry1.FieldList[3].AsString;
edtthn.Text:= zqry1.FieldList[4].AsString;

edtjudul.Enabled:= True;
edtpeng.Enabled:= True;
edtpener.Enabled:= True;
edtthn.Enabled:= True;

btnsimpan.Enabled:= False;
btnubah.Enabled:= True;
btnhps.Enabled:= True;
btnbaru.Enabled:= True;
end;

procedure TForm2.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_buku where id_buku="'+id_buku+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_buku');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm2.btnbaruClick(Sender: TObject);
begin
bersih;
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
btnbaru.Enabled:= True;
edtjudul.Enabled:= True;
edtpeng.Enabled:= True;
edtpener.Enabled:= True;
edtthn.Enabled:= True;
end;

procedure TForm2.btnkeluarClick(Sender: TObject);
begin
Close;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
