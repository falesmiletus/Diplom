unit U_INFO_BOOKS_Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TF_INFO_BOOKS_Add = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button_Panel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    e_NAME_BOOK: TEdit;
    e_AUTHOR: TEdit;
    e_NUMBER_OF_AVAILABLE: TEdit;
    e_NUMBER_OF_PAGES: TEdit;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    e_PRICE: TEdit;
    Label8: TLabel;
    e_GEBRE: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_INFO_BOOKS_Add: TF_INFO_BOOKS_Add;

implementation

{$R *.dfm}

// Функция проверки - является ли значение в Edit целым числом
function TextOrInteger(EditText: String): Boolean;
begin
  Result := False;
  if StrToIntDef(EditText, $7FFFFFFF)<>$7FFFFFFF then Inc(Result);
end;

procedure TF_INFO_BOOKS_Add.BitBtn1Click(Sender: TObject);
begin
  if e_NUMBER_OF_AVAILABLE.Text = '' then
  begin
    ShowMessage('Укажите количество доступных книг');
    e_NUMBER_OF_AVAILABLE.SetFocus;
    Abort;
  end;

  if e_NUMBER_OF_PAGES.Text = '' then
  begin
    ShowMessage('Укажите количество страниц');
    e_NUMBER_OF_PAGES.SetFocus;
    Abort;
  end;

  if e_PRICE.Text = '' then
  begin
    ShowMessage('Укажите цену');
    e_PRICE.SetFocus;
    Abort;
  end;

  if not(TextOrInteger(e_NUMBER_OF_AVAILABLE.Text)) then
  begin
    ShowMessage('Количество доступных книг - цифровое значение');
    e_NUMBER_OF_AVAILABLE.SetFocus;
    Abort;
  end;

  if not(TextOrInteger(e_NUMBER_OF_PAGES.Text)) then
  begin
    ShowMessage('Количество страниц - цифровое значение');
    e_NUMBER_OF_PAGES.SetFocus;
    Abort;
  end;

  if not(TextOrInteger(e_PRICE.Text)) then
  begin
    ShowMessage('Цена - цифровое значение');
    e_PRICE.SetFocus;
    Abort;
  end;

  ModalResult := mrOk;

end;

end.
