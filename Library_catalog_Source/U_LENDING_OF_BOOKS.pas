unit U_LENDING_OF_BOOKS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls;

type
  TF_LENDING_OF_BOOKS = class(TForm)
    Panel1: TPanel;
    b_Add: TButton;
    b_Edit: TButton;
    b_Delete: TButton;
    b_Cancel: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    cb_NAME_BOOK: TComboBox;
    cb_SURNAME: TComboBox;
    b_Fillter: TButton;
    b_Fillter_Clear: TButton;
    cb_Sort: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    b_Sort: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    procedure cb_NAME_BOOK_Items;
    procedure cb_SURNAME_Items;
    procedure b_AddClick(Sender: TObject);
    procedure b_EditClick(Sender: TObject);
    procedure b_DeleteClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Constr_SQL;
    procedure CheckBox2Click(Sender: TObject);
    procedure b_FillterClick(Sender: TObject);
    procedure b_SortClick(Sender: TObject);
    procedure b_Fillter_ClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_LENDING_OF_BOOKS: TF_LENDING_OF_BOOKS;

implementation

uses FB_DM, U_LENDING_OF_BOOKS_Add;

{$R *.dfm}

{ TF_LENDING_OF_BOOKS }

// Наполнение ComboBox именами книг, которые есть в таблице вручения
procedure TF_LENDING_OF_BOOKS.cb_NAME_BOOK_Items;
begin
  FB_Data.IBQ1.Close;
  FB_Data.IBQ1.SQL.Clear;
  FB_Data.IBQ1.SQL.Add('select DISTINCT info_books.name_book from info_books ');
  FB_Data.IBQ1.SQL.Add(' inner join LENDING_OF_BOOKS on (info_books.info_books = LENDING_OF_BOOKS.book_code) ');
  FB_Data.IBQ1.SQL.Add(' order by info_books.name_book ');
  FB_Data.IBQ1.Open;

  cb_NAME_BOOK.Items.Clear;
  cb_NAME_BOOK.Items.Add('');

  while not(FB_Data.IBQ1.Eof) do
  begin
    cb_NAME_BOOK.Items.Add(FB_Data.IBQ1.Fields[0].AsString);
    FB_Data.IBQ1.Next;
  end;

  cb_NAME_BOOK.ItemIndex := 0;
end;

// Наполнение ComboBox фамилиями, которые есть в таблице вручения
procedure TF_LENDING_OF_BOOKS.cb_SURNAME_Items;
begin
  FB_Data.IBQ1.Close;
  FB_Data.IBQ1.SQL.Clear;
  FB_Data.IBQ1.SQL.Add('select DISTINCT info_readers.surname from info_readers ');
  FB_Data.IBQ1.SQL.Add(' inner join LENDING_OF_BOOKS on (info_readers.number_ticket = LENDING_OF_BOOKS.number_ticket) ');
  FB_Data.IBQ1.SQL.Add(' order by info_readers.surname ');
  FB_Data.IBQ1.Open;

  cb_SURNAME.Items.Clear;
  cb_SURNAME.Items.Add('');

  while not(FB_Data.IBQ1.Eof) do
  begin
    cb_SURNAME.Items.Add(FB_Data.IBQ1.Fields[0].AsString);
    FB_Data.IBQ1.Next;
  end;

  cb_SURNAME.ItemIndex := 0;
end;

// Добавление вручения
procedure TF_LENDING_OF_BOOKS.b_AddClick(Sender: TObject);
var SQL_Str: string;
begin
  // Очищаем 2 ComboBox на форме
  F_LENDING_OF_BOOKS_Add.cb_BOOK_CODE.Items.Clear; // ComboBox с именем книги
  F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.Items.Clear; // ComboBox с кодом книги

  // Получаем список всех книг из БД с сортировкой по имени книги
  SQL_Str := 'select * from INFO_BOOKS order by NAME_BOOK';
  FB_Data.ds_INFO_BOOKS.Close;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Clear;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_BOOKS.Open;

  // Добавляем имена книг и коды книг в 2 ComboBox
  while not(FB_Data.ds_INFO_BOOKS.Eof) do
  begin
    F_LENDING_OF_BOOKS_Add.cb_BOOK_CODE.Items.Add(FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString);
    F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.Items.Add(FB_Data.ds_INFO_BOOKSINFO_BOOKS.AsString);

    FB_Data.ds_INFO_BOOKS.Next;
  end;

  // Очищаем 2 ComboBox на форме
  F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET.Items.Clear;    // ComboBox с фамилией читателя
  F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.Items.Clear; // ComboBox с номером билета

  // Получаем список всех читателей из БД с сортировкой по фамилии
  SQL_Str := 'select * from INFO_READERS order by SURNAME';
  FB_Data.ds_INFO_READERS.Close;
  FB_Data.ds_INFO_READERS.SelectSQL.Clear;
  FB_Data.ds_INFO_READERS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_READERS.Open;

  // Добавляем фамилии и номера билетов в 2 ComboBox
  while not(FB_Data.ds_INFO_READERS.Eof) do
  begin
    F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET.Items.Add(FB_Data.ds_INFO_READERSSURNAME.AsString);
    F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.Items.Add(FB_Data.ds_INFO_READERSNUMBER_TICKET.AsString);

    FB_Data.ds_INFO_READERS.Next;
  end;

  F_LENDING_OF_BOOKS_Add.DateTimePicker1.Date := Now;
  F_LENDING_OF_BOOKS_Add.DateTimePicker2.Date := Now;

  FB_Data.ds_LENDING_OF_BOOKS.Active := True;

  // Открываем модально форму
  F_LENDING_OF_BOOKS_Add.ShowModal;

  if F_LENDING_OF_BOOKS_Add.ModalResult = mrOk then
  begin
    // Добавление новой записи вручения в БД
    FB_Data.ds_LENDING_OF_BOOKS.Insert;
    FB_Data.ds_LENDING_OF_BOOKSBOOK_CODE.AsString := F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.Text;
    FB_Data.ds_LENDING_OF_BOOKSDATE_LENDING.AsDateTime := F_LENDING_OF_BOOKS_Add.DateTimePicker1.Date;
    FB_Data.ds_LENDING_OF_BOOKSDATE_RETURN.AsDateTime := F_LENDING_OF_BOOKS_Add.DateTimePicker2.Date;
    FB_Data.ds_LENDING_OF_BOOKSNUMBER_TICKET.AsString := F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.Text;
    FB_Data.ds_LENDING_OF_BOOKS.Post;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_LENDING_OF_BOOKS.Close;
    FB_Data.ds_LENDING_OF_BOOKS.Open;

    FB_Data.ds_LENDING_OF_BOOKS_Select.Close;
    FB_Data.ds_LENDING_OF_BOOKS_Select.Open;
  end;

end;

// Изменение вручения в БД
procedure TF_LENDING_OF_BOOKS.b_EditClick(Sender: TObject);
var SQL_Str: string;
num, num_sel: Integer;
begin
  // Проверка на наличие записей
  if FB_Data.ds_LENDING_OF_BOOKS_Select.RecordCount = 0 then Abort;

  {Очистка и наполнение ComboBox аналогично вставке записи, но вводится две переменные num, num_sel ,
  которые отслеживают текущее значение в записи и выбирают его в ComboBox}
  F_LENDING_OF_BOOKS_Add.cb_BOOK_CODE.Items.Clear;
  F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.Items.Clear;

  SQL_Str := 'select * from INFO_BOOKS order by NAME_BOOK';
  FB_Data.ds_INFO_BOOKS.Close;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Clear;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_BOOKS.Open;

  num_sel := -1;
  num := 0;

  while not(FB_Data.ds_INFO_BOOKS.Eof) do
  begin
    F_LENDING_OF_BOOKS_Add.cb_BOOK_CODE.Items.Add(FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString);
    F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.Items.Add(FB_Data.ds_INFO_BOOKSINFO_BOOKS.AsString);

    if FB_Data.ds_INFO_BOOKSINFO_BOOKS.AsString = FB_Data.ds_LENDING_OF_BOOKS_SelectINFO_BOOKS.AsString then
    num_sel := num;

    FB_Data.ds_INFO_BOOKS.Next;
    Inc(num);
  end;

  F_LENDING_OF_BOOKS_Add.cb_BOOK_CODE.ItemIndex := num_sel;
  F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.ItemIndex := num_sel;


  F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET.Items.Clear;
  F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.Items.Clear;

  SQL_Str := 'select * from INFO_READERS order by SURNAME';
  FB_Data.ds_INFO_READERS.Close;
  FB_Data.ds_INFO_READERS.SelectSQL.Clear;
  FB_Data.ds_INFO_READERS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_READERS.Open;

  num_sel := -1;
  num := 0;

  while not(FB_Data.ds_INFO_READERS.Eof) do
  begin
    F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET.Items.Add(FB_Data.ds_INFO_READERSSURNAME.AsString);
    F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.Items.Add(FB_Data.ds_INFO_READERSNUMBER_TICKET.AsString);

    if FB_Data.ds_INFO_READERSNUMBER_TICKET.AsString = FB_Data.ds_LENDING_OF_BOOKS_SelectNUMBER_TICKET.AsString then
    num_sel := num;

    FB_Data.ds_INFO_READERS.Next;
    Inc(num);
  end;

  F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET.ItemIndex := num_sel;
  F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.ItemIndex := num_sel;


  F_LENDING_OF_BOOKS_Add.DateTimePicker1.Date := FB_Data.ds_LENDING_OF_BOOKS_SelectDATE_LENDING.AsDateTime;
  F_LENDING_OF_BOOKS_Add.DateTimePicker2.Date := FB_Data.ds_LENDING_OF_BOOKS_SelectDATE_RETURN.AsDateTime;

  // Позиционируем таблицы, чтобы работа шла с правильной записью
  FB_Data.ds_LENDING_OF_BOOKS.Active := False;
  FB_Data.ds_LENDING_OF_BOOKS.Active := True;
  FB_Data.ds_LENDING_OF_BOOKS.Locate('ID_LENDING', FB_Data.ds_LENDING_OF_BOOKS_SelectID_LENDING.AsInteger, []);

  // Открываем модально форму
  F_LENDING_OF_BOOKS_Add.ShowModal;

  if F_LENDING_OF_BOOKS_Add.ModalResult = mrOk then
  begin
    // Изменение записи вручения в БД
    FB_Data.ds_LENDING_OF_BOOKS.Edit;
    FB_Data.ds_LENDING_OF_BOOKSBOOK_CODE.AsString := F_LENDING_OF_BOOKS_Add.cb_INFO_BOOKS.Text;
    FB_Data.ds_LENDING_OF_BOOKSDATE_LENDING.AsDateTime := F_LENDING_OF_BOOKS_Add.DateTimePicker1.Date;
    FB_Data.ds_LENDING_OF_BOOKSDATE_RETURN.AsDateTime := F_LENDING_OF_BOOKS_Add.DateTimePicker2.Date;
    FB_Data.ds_LENDING_OF_BOOKSNUMBER_TICKET.AsString := F_LENDING_OF_BOOKS_Add.cb_NUMBER_TICKET_id.Text;
    FB_Data.ds_LENDING_OF_BOOKS.Post;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_LENDING_OF_BOOKS.Close;
    FB_Data.ds_LENDING_OF_BOOKS.Open;

    FB_Data.ds_LENDING_OF_BOOKS_Select.Close;
    FB_Data.ds_LENDING_OF_BOOKS_Select.Open;
  end;

end;

// Удаление вручения из БД
procedure TF_LENDING_OF_BOOKS.b_DeleteClick(Sender: TObject);
var
  ret: integer;
begin
  // Проверка на наличие записей
  if FB_Data.ds_LENDING_OF_BOOKS_Select.RecordCount = 0 then Abort;

  // Предупреждающий запрос на удаление
  ret := Application.MessageBox(PChar('Вы хотите удалить запись?'),'Подтверждение',MB_YESNO + MB_ICONQUESTION);
  if ret = IDYES then
  begin
    //Удаление с помощью запроса
    FB_Data.IBQ1.Close;
    FB_Data.IBQ1.SQL.Clear;
    FB_Data.IBQ1.SQL.Add('delete from LENDING_OF_BOOKS where id_lending = ' + FB_Data.ds_LENDING_OF_BOOKS_SelectID_LENDING.AsString);
    FB_Data.IBQ1.ExecSQL;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;

    FB_Data.ds_LENDING_OF_BOOKS_Select.Close;
    FB_Data.ds_LENDING_OF_BOOKS_Select.Open;
  end;

end;

procedure TF_LENDING_OF_BOOKS.CheckBox1Click(Sender: TObject);
begin
  // Доступность Даты выдачи
  DateTimePicker1.Enabled := CheckBox1.Checked;
end;

// Формирование запроса с учетом фильтров и сортировок
procedure TF_LENDING_OF_BOOKS.Constr_SQL;
var SQL_Str: string;
Sql_where: Integer;
begin
  Sql_where := 0;

  // Основной запрос
  SQL_Str := 'select lending_of_books.id_lending, lending_of_books.date_lending, lending_of_books.date_return, ';
  SQL_Str := SQL_Str + ' info_books.name_book, info_books.author, info_readers.surname, info_readers.name, info_readers.patronymic, ';
  SQL_Str := SQL_Str + ' info_books.info_books, info_readers.number_ticket from info_readers ';
  SQL_Str := SQL_Str + ' inner join lending_of_books on (info_readers.number_ticket = lending_of_books.number_ticket) ';
  SQL_Str := SQL_Str + ' inner join info_books on (lending_of_books.book_code = info_books.info_books) ';

  // Условия
  if (cb_NAME_BOOK.Text <> '') or (cb_SURNAME.Text <> '') then
  begin
    SQL_Str := SQL_Str + 'where ';
    Sql_where := 1;
  end;

  if cb_NAME_BOOK.Text <> '' then
  begin
    SQL_Str := SQL_Str + ' info_books.name_book =  ' + QuotedStr(cb_NAME_BOOK.Text);

    if cb_SURNAME.Text <> '' then
    SQL_Str := SQL_Str + ' and info_readers.surname =  ' + QuotedStr(cb_SURNAME.Text);

  end
  else
  begin
    if cb_SURNAME.Text <> '' then
    SQL_Str := SQL_Str + ' info_readers.surname =  ' + QuotedStr(cb_SURNAME.Text);
  end;

  if CheckBox1.Checked then
  begin

    if Sql_where = 1 then
    begin
      SQL_Str := SQL_Str + ' and lending_of_books.date_lending = ' + QuotedStr(Datetostr(DateTimePicker1.Date));
    end
    else
    begin
      SQL_Str := SQL_Str + ' where lending_of_books.date_lending = ' + QuotedStr(Datetostr(DateTimePicker1.Date));
      Sql_where := 1;
    end;

  end;

  if CheckBox2.Checked then
  begin

    if Sql_where = 1 then
    begin
      SQL_Str := SQL_Str + ' and lending_of_books.date_return = ' + QuotedStr(Datetostr(DateTimePicker2.Date));
    end
    else
    begin
      SQL_Str := SQL_Str + ' where lending_of_books.date_return = ' + QuotedStr(Datetostr(DateTimePicker2.Date));
      //Sql_where := 1;
    end;

  end;

  // Сортировка
  if cb_Sort.Text <> '' then
  begin
    case cb_Sort.ItemIndex of
     0 : SQL_Str := SQL_Str + ' order by lending_of_books.date_lending ';
     1 : SQL_Str := SQL_Str + ' order by lending_of_books.date_return ';
     2 : SQL_Str := SQL_Str + ' order by info_books.name_book ';
     3 : SQL_Str := SQL_Str + ' order by info_books.author ';
     4 : SQL_Str := SQL_Str + ' order by info_readers.surname ';
     5 : SQL_Str := SQL_Str + ' order by info_readers.name ';
     6 : SQL_Str := SQL_Str + ' order by info_readers.patronymic ';
    end;

    if rb1.Checked then
      SQL_Str := SQL_Str + 'ASC'
    else
      SQL_Str := SQL_Str + 'DESC';

  end;

  // Переоткрытие запроса
  FB_Data.ds_LENDING_OF_BOOKS_Select.Close;
  FB_Data.ds_LENDING_OF_BOOKS_Select.SelectSQL.Clear;
  FB_Data.ds_LENDING_OF_BOOKS_Select.SelectSQL.Add(SQL_Str);
  FB_Data.ds_LENDING_OF_BOOKS_Select.Open;

end;

procedure TF_LENDING_OF_BOOKS.CheckBox2Click(Sender: TObject);
begin
  // Доступность Даты возврата
  DateTimePicker2.Enabled := CheckBox2.Checked;
end;

procedure TF_LENDING_OF_BOOKS.b_FillterClick(Sender: TObject);
begin
  Constr_SQL;
end;

procedure TF_LENDING_OF_BOOKS.b_SortClick(Sender: TObject);
begin
  Constr_SQL;
end;

procedure TF_LENDING_OF_BOOKS.b_Fillter_ClearClick(Sender: TObject);
begin
  // Сброс всех фильтров
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  cb_NAME_BOOK.ItemIndex := 0;
  cb_SURNAME.ItemIndex := 0;

  Constr_SQL;
end;

end.
