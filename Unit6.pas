unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm6 = class(TForm)
    mm1: TMainMenu;
    Menu1: TMenuItem;
    Anggota1: TMenuItem;
    Buku1: TMenuItem;
    Pengembalian1: TMenuItem;
    Pengembalian2: TMenuItem;
    Denda1: TMenuItem;
    procedure Anggota1Click(Sender: TObject);
    procedure Buku1Click(Sender: TObject);
    procedure Pengembalian1Click(Sender: TObject);
    procedure Pengembalian2Click(Sender: TObject);
    procedure Denda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm6.Anggota1Click(Sender: TObject);
begin
  form1.showmodal;
end;

procedure TForm6.Buku1Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm6.Pengembalian1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm6.Pengembalian2Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm6.Denda1Click(Sender: TObject);
begin
form5.showmodal;
end;

end.
