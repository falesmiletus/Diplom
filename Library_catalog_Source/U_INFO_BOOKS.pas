unit U_INFO_BOOKS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, Buttons;

type
  TF_INFO_BOOKS = class(TForm)
    Panel1: TPanel;
    b_Add: TButton;
    b_Edit: TButton;
    b_Delete: TButton;
    b_Cancel: TButton;
    b_Fillter: TButton;
    e_Fillter: TEdit;
    b_Fillter_Clear: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    rb1: TRadioButton;
    rb2: TRadioButton;
    b_Sort: TButton;
    cb_Sort: TComboBox;
    procedure b_AddClick(Sender: TObject);
    procedure b_DeleteClick(Sender: TObject);
    procedure b_EditClick(Sender: TObject);
    procedure Constr_SQL;
    procedure b_FillterClick(Sender: TObject);
    procedure b_SortClick(Sender: TObject);
    procedure b_Fillter_ClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  F_INFO_BOOKS: TF_INFO_BOOKS;

implementation

uses
  FB_DM, U_INFO_BOOKS_Add;

{$R *.dfm}

// ���������� �����
procedure TF_INFO_BOOKS.b_AddClick(Sender: TObject);
begin
  // ������� ���� ����� �� ����� ����������
  F_INFO_BOOKS_Add.e_NAME_BOOK.Text := '';
  F_INFO_BOOKS_Add.e_AUTHOR.Text := '';
  F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text := '';
  F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text := '';
  F_INFO_BOOKS_Add.e_PRICE.Text := '';
  F_INFO_BOOKS_Add.e_GEBRE.Text := '';
  F_INFO_BOOKS_Add.DateTimePicker1.DateTime := now;

  // ��������� �������� �����
  F_INFO_BOOKS_Add.ShowModal;

  if F_INFO_BOOKS_Add.ModalResult = mrOk then
  begin
    // ���������� ����� ������ ����� � ��
    FB_Data.ds_INFO_BOOKS.Insert;
    FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString := F_INFO_BOOKS_Add.e_NAME_BOOK.Text;
    FB_Data.ds_INFO_BOOKSAUTHOR.AsString := F_INFO_BOOKS_Add.e_AUTHOR.Text;
    FB_Data.ds_INFO_BOOKSDATE_OF_PRINTING.AsDateTime := F_INFO_BOOKS_Add.DateTimePicker1.Date;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_AVAILABLE.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_PAGES.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text;
    FB_Data.ds_INFO_BOOKSPRICE.AsString := F_INFO_BOOKS_Add.e_PRICE.Text;
    FB_Data.ds_INFO_BOOKSGEBRE.AsString := F_INFO_BOOKS_Add.e_GEBRE.Text;
    FB_Data.ds_INFO_BOOKS.Post;

    // ������������� ���������� � ���������� ������
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_INFO_BOOKS.Close;
    FB_Data.ds_INFO_BOOKS.Open;
  end;
end;

// �������� ����� �� ��
procedure TF_INFO_BOOKS.b_DeleteClick(Sender: TObject);
var
  ret: integer;
begin
  // �������� �� ������� �������
  if FB_Data.ds_INFO_BOOKS.RecordCount = 0 then Abort;

  // ��������������� ������ �� ��������
  ret := Application.MessageBox(PChar('�� ������ ������� ������?'),'�������������',MB_YESNO + MB_ICONQUESTION);
  if ret = IDYES then
  begin
    // �������� � ������������� ����������
    FB_Data.ds_INFO_BOOKS.Delete;
    FB_Data.FBTransaction.CommitRetaining;
  end;

end;

// ��������� ����� � ��
procedure TF_INFO_BOOKS.b_EditClick(Sender: TObject);
begin
  // �������� �� ������� �������
  if FB_Data.ds_INFO_BOOKS.RecordCount = 0 then Abort;

  // ���������� ������� �������� ������ ���� ����� �� ����� ����������
  F_INFO_BOOKS_Add.e_NAME_BOOK.Text := FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString;
  F_INFO_BOOKS_Add.e_AUTHOR.Text := FB_Data.ds_INFO_BOOKSAUTHOR.AsString;
  F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text := FB_Data.ds_INFO_BOOKSNUMBER_OF_AVAILABLE.AsString;
  F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text := FB_Data.ds_INFO_BOOKSNUMBER_OF_PAGES.AsString;
  F_INFO_BOOKS_Add.e_PRICE.Text := FB_Data.ds_INFO_BOOKSPRICE.AsString;
  F_INFO_BOOKS_Add.e_GEBRE.Text := FB_Data.ds_INFO_BOOKSGEBRE.AsString;
  F_INFO_BOOKS_Add.DateTimePicker1.DateTime := FB_Data.ds_INFO_BOOKSDATE_OF_PRINTING.AsDateTime;

  // ��������� �������� �����
  F_INFO_BOOKS_Add.ShowModal;

  if F_INFO_BOOKS_Add.ModalResult = mrOk then
  begin
    // ��������� ������ ����� � ��
    FB_Data.ds_INFO_BOOKS.Edit;
    FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString := F_INFO_BOOKS_Add.e_NAME_BOOK.Text;
    FB_Data.ds_INFO_BOOKSAUTHOR.AsString := F_INFO_BOOKS_Add.e_AUTHOR.Text;
    FB_Data.ds_INFO_BOOKSDATE_OF_PRINTING.AsDateTime := F_INFO_BOOKS_Add.DateTimePicker1.Date;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_AVAILABLE.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_PAGES.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text;
    FB_Data.ds_INFO_BOOKSPRICE.AsString := F_INFO_BOOKS_Add.e_PRICE.Text;
    FB_Data.ds_INFO_BOOKSGEBRE.AsString := F_INFO_BOOKS_Add.e_GEBRE.Text;
    FB_Data.ds_INFO_BOOKS.Post;

    // ������������� ���������� � ���������� ������
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_INFO_BOOKS.Refresh;
  end;
end;

// ������������ ������� � ������ �������� � ����������
procedure TF_INFO_BOOKS.Constr_SQL;
var SQL_Str: string;
begin
  // �������� ������
  SQL_Str := 'select * from INFO_BOOKS ';

  // �������
  if e_Fillter.Text <> '' then
  begin
    SQL_Str := SQL_Str + ' where NAME_BOOK CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' AUTHOR CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' GEBRE CONTAINING ' + QuotedStr(e_Fillter.Text);
  end;

  // ����������
  if cb_Sort.Text <> '' then
  begin
    case cb_Sort.ItemIndex of
     0 : SQL_Str := SQL_Str + ' order by INFO_BOOKS ';
     1 : SQL_Str := SQL_Str + ' order by NAME_BOOK ';
     2 : SQL_Str := SQL_Str + ' order by AUTHOR ';
     3 : SQL_Str := SQL_Str + ' order by DATE_OF_PRINTING ';
     4 : SQL_Str := SQL_Str + ' order by NUMBER_OF_AVAILABLE ';
     5 : SQL_Str := SQL_Str + ' order by NUMBER_OF_PAGES ';
     6 : SQL_Str := SQL_Str + ' order by PRICE ';
     7 : SQL_Str := SQL_Str + ' order by GEBRE ';
    end;

    if rb1.Checked then
      SQL_Str := SQL_Str + 'ASC'
    else
      SQL_Str := SQL_Str + 'DESC';

  end;

  // ������������ �������
  FB_Data.ds_INFO_BOOKS.Close;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Clear;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_BOOKS.Open;

end;

procedure TF_INFO_BOOKS.b_FillterClick(Sender: TObject);
begin
  Constr_SQL;
end;

procedure TF_INFO_BOOKS.b_SortClick(Sender: TObject);
begin
  Constr_SQL;
end;

// ����� ���� ��������
procedure TF_INFO_BOOKS.b_Fillter_ClearClick(Sender: TObject);
begin
  e_Fillter.Text := '';
  Constr_SQL;
end;

end.
