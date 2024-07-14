unit U_LENDING_OF_BOOKS_Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TF_LENDING_OF_BOOKS_Add = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Button_Panel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    cb_BOOK_CODE: TComboBox;
    cb_INFO_BOOKS: TComboBox;
    cb_NUMBER_TICKET: TComboBox;
    cb_NUMBER_TICKET_id: TComboBox;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure cb_BOOK_CODEChange(Sender: TObject);
    procedure cb_NUMBER_TICKETChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_LENDING_OF_BOOKS_Add: TF_LENDING_OF_BOOKS_Add;

implementation

{$R *.dfm}

procedure TF_LENDING_OF_BOOKS_Add.BitBtn1Click(Sender: TObject);
begin
  if cb_BOOK_CODE.Text = '' then
  begin
    ShowMessage('Выберите имя книги');
    cb_BOOK_CODE.SetFocus;
    Abort;
  end;

  if cb_NUMBER_TICKET.Text = '' then
  begin
    ShowMessage('Выберите ФИО читателя');
    cb_NUMBER_TICKET.SetFocus;
    Abort;
  end;

  ModalResult := mrOk;
end;

procedure TF_LENDING_OF_BOOKS_Add.cb_BOOK_CODEChange(Sender: TObject);
begin
  // При измении имени книги выбираем ее код
  cb_INFO_BOOKS.ItemIndex := cb_BOOK_CODE.ItemIndex;
end;

procedure TF_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKETChange(Sender: TObject);
begin
  // При измении фамилии выбираем номер билета
  cb_NUMBER_TICKET_id.ItemIndex := cb_NUMBER_TICKET.ItemIndex;
end;

end.
