unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtpinjam: TEdit;
    edtkembali: TEdit;
    edtjum: TEdit;
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
  Form5: TForm5;
  id_denda:string;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
edtpinjam.Clear;
edtkembali.Clear;
edtjum.Clear;
end;

procedure TForm5.btnsimpanClick(Sender: TObject);
begin
if edtpinjam.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtkembali.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtjum.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else

zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tabel_denda values(null,"'+edtpinjam.Text+'","'+edtkembali.Text+'","'+edtjum.Text+'" )');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_denda');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;

end;

procedure TForm5.posisiawal;
begin
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
edtpinjam.Enabled:= False;
edtkembali.Enabled:= False;
edtjum.Enabled:= False;
end;

procedure TForm5.btnubahClick(Sender: TObject);
begin
if (edtpinjam.Text= '')or(edtkembali.Text='')or(edtjum.Text='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtpinjam.Text = zqry1.Fields[1].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_denda set id_pinjam ="'+edtpinjam.text+'",id_kembali = "'+edtkembali.text+'" where id_denda "'+id_denda+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_denda');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
id_denda:= zqry1.Fields[0].AsString;
edtpinjam.Text:= zqry1.FieldList[1].AsString;
edtkembali.Text:= zqry1.FieldList[2].AsString;
edtjum.Text:= zqry1.FieldList[3].AsString;

edtpinjam.Enabled:= True;
edtkembali.Enabled:= True;
edtjum.Enabled:= True;

btnsimpan.Enabled:= False;
btnubah.Enabled:= True;
btnhps.Enabled:= True;
btnbaru.Enabled:= True;
end;

procedure TForm5.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_denda where id_denda="'+id_denda+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_denda');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm5.btnbaruClick(Sender: TObject);
begin
bersih;
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
btnbaru.Enabled:= True;
edtpinjam.Enabled:= True;
edtkembali.Enabled:= True;
edtjum.Enabled:= True;
end;

procedure TForm5.btnkeluarClick(Sender: TObject);
begin
Close;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
