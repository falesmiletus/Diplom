unit U_BOOK_BOOKING_Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TF_BOOK_BOOKING_Add = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Button_Panel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    cb_BOOK_CODE: TComboBox;
    cb_INFO_BOOKS: TComboBox;
    cb_NUMBER_TICKET: TComboBox;
    cb_NUMBER_TICKET_id: TComboBox;
    procedure cb_BOOK_CODEChange(Sender: TObject);
    procedure cb_NUMBER_TICKETChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BOOK_BOOKING_Add: TF_BOOK_BOOKING_Add;

implementation

{$R *.dfm}

procedure TF_BOOK_BOOKING_Add.cb_BOOK_CODEChange(Sender: TObject);
begin
  // При измении имени книги выбираем ее код
  cb_INFO_BOOKS.ItemIndex := cb_BOOK_CODE.ItemIndex;
end;

procedure TF_BOOK_BOOKING_Add.cb_NUMBER_TICKETChange(Sender: TObject);
begin
  // При измении фамилии выбираем номер билета
  cb_NUMBER_TICKET_id.ItemIndex := cb_NUMBER_TICKET.ItemIndex;
end;

procedure TF_BOOK_BOOKING_Add.BitBtn1Click(Sender: TObject);
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

end.
