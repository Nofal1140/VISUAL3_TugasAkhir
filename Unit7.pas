unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtuser: TEdit;
    edtpass: TEdit;
    btnL: TButton;
    procedure btnLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm7.btnLClick(Sender: TObject);
begin
 if (edtuser.Text='admin') and (edtpass.Text='admin') then
    begin
      form7.Hide;
      form6.Show;

    end
  else
    begin
      showmessage('Username dan Password Salah!');
      edtuser.Text:='';
      edtpass.Text:='';
      edtuser.SetFocus;
end;
end;
end.

