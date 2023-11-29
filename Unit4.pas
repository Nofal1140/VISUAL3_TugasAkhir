unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtbuku: TEdit;
    edtpinjam: TEdit;
    edtkembali: TEdit;
    edtidpinjam: TEdit;
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
    lbl6: TLabel;
    edtanggota: TEdit;
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
  Form4: TForm4;
  id_kembali:string;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
edtbuku.Clear;
edtpinjam.Clear;
edtkembali.Clear;
edtidpinjam.Clear;
edtanggota.Clear;
end;

procedure TForm4.btnsimpanClick(Sender: TObject);
begin
if edtbuku.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtpinjam.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtkembali.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtidpinjam.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else
if edtanggota.Text ='' then
begin
ShowMessage('DATA KOSONG!');
end else

zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tabel_pengembalian values(null,"'+edtbuku.Text+'","'+edtpinjam.Text+'","'+edtkembali.Text+'","'+edtidpinjam.Text+'","'+edtanggota.Text+'" )');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_pengembalian');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;

procedure TForm4.posisiawal;
begin
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
edtbuku.Enabled:= False;
edtpinjam.Enabled:= False;
edtkembali.Enabled:= False;
edtidpinjam.Enabled:= False;
edtanggota.Enabled:= False;
end;

procedure TForm4.btnubahClick(Sender: TObject);
begin
if (edtbuku.Text= '')or (edtpinjam.Text ='')or(edtkembali.Text='')or(edtidpinjam.Text='')or (edtanggota.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtbuku.Text = zqry1.Fields[1].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_pengembalian set id_buku ="'+edtbuku.text+'",tgl_pinjam = "'+edtpinjam.text+'" where id_kembali= "'+id_kembali+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_pengembalian');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
id_kembali:= zqry1.Fields[0].AsString;
edtbuku.Text:= zqry1.FieldList[1].AsString;
edtpinjam.Text:= zqry1.FieldList[2].AsString;
edtkembali.Text:= zqry1.FieldList[3].AsString;
edtidpinjam.Text:= zqry1.FieldList[4].AsString;
edtanggota.Text:= zqry1.FieldList[5].AsString;

edtbuku.Enabled:= True;
edtpinjam.Enabled:= True;
edtkembali.Enabled:= True;
edtidpinjam.Enabled:= True;
edtanggota.Enabled:= True;

btnsimpan.Enabled:= False;
btnubah.Enabled:= True;
btnhps.Enabled:= True;
btnbaru.Enabled:= True;
end;

procedure TForm4.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_pengambalian where id_kembali="'+id_kembali+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_pengemblian');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm4.btnbaruClick(Sender: TObject);
begin
bersih;
btnsimpan.Enabled:= True;
btnubah.Enabled:= False;
btnhps.Enabled:= False;
btnbaru.Enabled:= True;
edtbuku.Enabled:= True;
edtpinjam.Enabled:= True;
edtkembali.Enabled:= True;
edtidpinjam.Enabled:= True;
edtanggota.Enabled:= True;
end;

procedure TForm4.btnkeluarClick(Sender: TObject);
begin
Close;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
