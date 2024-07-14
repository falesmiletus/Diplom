unit U_INFO_READERS_Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB;

type
  TF_INFO_READERS_Add = class(TForm)
    Button_Panel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    e_SURNAME: TEdit;
    Label1: TLabel;
    e_NAME: TEdit;
    Label2: TLabel;
    e_PATRONYMIC: TEdit;
    Label3: TLabel;
    e_ADRESS: TEdit;
    Label4: TLabel;
    e_TELEPHONE: TEdit;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_INFO_READERS_Add: TF_INFO_READERS_Add;

implementation

uses
  FB_DM;

{$R *.dfm}

end.
