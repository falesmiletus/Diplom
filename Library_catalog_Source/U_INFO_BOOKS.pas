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

// Добавление книги
procedure TF_INFO_BOOKS.b_AddClick(Sender: TObject);
begin
  // Очистка всех полей на форме добавления
  F_INFO_BOOKS_Add.e_NAME_BOOK.Text := '';
  F_INFO_BOOKS_Add.e_AUTHOR.Text := '';
  F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text := '';
  F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text := '';
  F_INFO_BOOKS_Add.e_PRICE.Text := '';
  F_INFO_BOOKS_Add.e_GEBRE.Text := '';
  F_INFO_BOOKS_Add.DateTimePicker1.DateTime := now;

  // Открываем модально форму
  F_INFO_BOOKS_Add.ShowModal;

  if F_INFO_BOOKS_Add.ModalResult = mrOk then
  begin
    // Добавление новой записи книги в БД
    FB_Data.ds_INFO_BOOKS.Insert;
    FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString := F_INFO_BOOKS_Add.e_NAME_BOOK.Text;
    FB_Data.ds_INFO_BOOKSAUTHOR.AsString := F_INFO_BOOKS_Add.e_AUTHOR.Text;
    FB_Data.ds_INFO_BOOKSDATE_OF_PRINTING.AsDateTime := F_INFO_BOOKS_Add.DateTimePicker1.Date;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_AVAILABLE.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_PAGES.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text;
    FB_Data.ds_INFO_BOOKSPRICE.AsString := F_INFO_BOOKS_Add.e_PRICE.Text;
    FB_Data.ds_INFO_BOOKSGEBRE.AsString := F_INFO_BOOKS_Add.e_GEBRE.Text;
    FB_Data.ds_INFO_BOOKS.Post;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_INFO_BOOKS.Close;
    FB_Data.ds_INFO_BOOKS.Open;
  end;
end;

// Удаление книги из БД
procedure TF_INFO_BOOKS.b_DeleteClick(Sender: TObject);
var
  ret: integer;
begin
  // Проверка на наличие записей
  if FB_Data.ds_INFO_BOOKS.RecordCount = 0 then Abort;

  // Предупреждающий запрос на удаление
  ret := Application.MessageBox(PChar('Вы хотите удалить запись?'),'Подтверждение',MB_YESNO + MB_ICONQUESTION);
  if ret = IDYES then
  begin
    // Удаление и подтверждение транзакции
    FB_Data.ds_INFO_BOOKS.Delete;
    FB_Data.FBTransaction.CommitRetaining;
  end;

end;

// Изменение книги в БД
procedure TF_INFO_BOOKS.b_EditClick(Sender: TObject);
begin
  // Проверка на наличие записей
  if FB_Data.ds_INFO_BOOKS.RecordCount = 0 then Abort;

  // Наполнение данными теккущей записи всех полей на форме добавления
  F_INFO_BOOKS_Add.e_NAME_BOOK.Text := FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString;
  F_INFO_BOOKS_Add.e_AUTHOR.Text := FB_Data.ds_INFO_BOOKSAUTHOR.AsString;
  F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text := FB_Data.ds_INFO_BOOKSNUMBER_OF_AVAILABLE.AsString;
  F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text := FB_Data.ds_INFO_BOOKSNUMBER_OF_PAGES.AsString;
  F_INFO_BOOKS_Add.e_PRICE.Text := FB_Data.ds_INFO_BOOKSPRICE.AsString;
  F_INFO_BOOKS_Add.e_GEBRE.Text := FB_Data.ds_INFO_BOOKSGEBRE.AsString;
  F_INFO_BOOKS_Add.DateTimePicker1.DateTime := FB_Data.ds_INFO_BOOKSDATE_OF_PRINTING.AsDateTime;

  // Открываем модально форму
  F_INFO_BOOKS_Add.ShowModal;

  if F_INFO_BOOKS_Add.ModalResult = mrOk then
  begin
    // Изменение записи книги в БД
    FB_Data.ds_INFO_BOOKS.Edit;
    FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString := F_INFO_BOOKS_Add.e_NAME_BOOK.Text;
    FB_Data.ds_INFO_BOOKSAUTHOR.AsString := F_INFO_BOOKS_Add.e_AUTHOR.Text;
    FB_Data.ds_INFO_BOOKSDATE_OF_PRINTING.AsDateTime := F_INFO_BOOKS_Add.DateTimePicker1.Date;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_AVAILABLE.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_AVAILABLE.Text;
    FB_Data.ds_INFO_BOOKSNUMBER_OF_PAGES.AsString := F_INFO_BOOKS_Add.e_NUMBER_OF_PAGES.Text;
    FB_Data.ds_INFO_BOOKSPRICE.AsString := F_INFO_BOOKS_Add.e_PRICE.Text;
    FB_Data.ds_INFO_BOOKSGEBRE.AsString := F_INFO_BOOKS_Add.e_GEBRE.Text;
    FB_Data.ds_INFO_BOOKS.Post;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_INFO_BOOKS.Refresh;
  end;
end;

// Формирование запроса с учетом фильтров и сортировок
procedure TF_INFO_BOOKS.Constr_SQL;
var SQL_Str: string;
begin
  // Основной запрос
  SQL_Str := 'select * from INFO_BOOKS ';

  // Условия
  if e_Fillter.Text <> '' then
  begin
    SQL_Str := SQL_Str + ' where NAME_BOOK CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' AUTHOR CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' GEBRE CONTAINING ' + QuotedStr(e_Fillter.Text);
  end;

  // Сортировка
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

  // Переоткрытие запроса
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

// Сброс всех фильтров
procedure TF_INFO_BOOKS.b_Fillter_ClearClick(Sender: TObject);
begin
  e_Fillter.Text := '';
  Constr_SQL;
end;

end.
