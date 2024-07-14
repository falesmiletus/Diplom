unit U_BOOK_BOOKING;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ComCtrls;

type
  TF_BOOK_BOOKING = class(TForm)
    Panel1: TPanel;
    b_Add: TButton;
    b_Edit: TButton;
    b_Delete: TButton;
    b_Cancel: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    cb_NAME_BOOK: TComboBox;
    Label3: TLabel;
    cb_SURNAME: TComboBox;
    b_Fillter: TButton;
    b_Fillter_Clear: TButton;
    cb_Sort: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    b_Sort: TButton;
    procedure b_AddClick(Sender: TObject);
    procedure b_DeleteClick(Sender: TObject);
    procedure b_EditClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure cb_NAME_BOOK_Items;
    procedure cb_SURNAME_Items;
    procedure b_Fillter_ClearClick(Sender: TObject);
    procedure Constr_SQL;
    procedure b_FillterClick(Sender: TObject);
    procedure b_SortClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BOOK_BOOKING: TF_BOOK_BOOKING;

implementation

uses
  FB_DM, U_BOOK_BOOKING_Add;

{$R *.dfm}

// Добавление брони
procedure TF_BOOK_BOOKING.b_AddClick(Sender: TObject);
var SQL_Str: string;
begin
  // Очищаем 2 ComboBox на форме
  F_BOOK_BOOKING_Add.cb_BOOK_CODE.Items.Clear;  // ComboBox с именем книги
  F_BOOK_BOOKING_Add.cb_INFO_BOOKS.Items.Clear; // ComboBox с кодом книги

  // Получаем список всех книг из БД с сортировкой по имени книги
  SQL_Str := 'select * from INFO_BOOKS order by NAME_BOOK';
  FB_Data.ds_INFO_BOOKS.Close;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Clear;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_BOOKS.Open;

  // Добавляем имена книг и коды книг в 2 ComboBox
  while not(FB_Data.ds_INFO_BOOKS.Eof) do
  begin
    F_BOOK_BOOKING_Add.cb_BOOK_CODE.Items.Add(FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString);
    F_BOOK_BOOKING_Add.cb_INFO_BOOKS.Items.Add(FB_Data.ds_INFO_BOOKSINFO_BOOKS.AsString);

    FB_Data.ds_INFO_BOOKS.Next;
  end;

  // Очищаем 2 ComboBox на форме
  F_BOOK_BOOKING_Add.cb_NUMBER_TICKET.Items.Clear; // ComboBox с фамилией читателя
  F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.Items.Clear; // ComboBox с номером билета

  // Получаем список всех читателей из БД с сортировкой по фамилии
  SQL_Str := 'select * from INFO_READERS order by SURNAME';
  FB_Data.ds_INFO_READERS.Close;
  FB_Data.ds_INFO_READERS.SelectSQL.Clear;
  FB_Data.ds_INFO_READERS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_READERS.Open;

  // Добавляем фамилии и номера билетов в 2 ComboBox
  while not(FB_Data.ds_INFO_READERS.Eof) do
  begin
    F_BOOK_BOOKING_Add.cb_NUMBER_TICKET.Items.Add(FB_Data.ds_INFO_READERSSURNAME.AsString);
    F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.Items.Add(FB_Data.ds_INFO_READERSNUMBER_TICKET.AsString);

    FB_Data.ds_INFO_READERS.Next;
  end;

  F_BOOK_BOOKING_Add.DateTimePicker1.Date := Now;

  FB_Data.ds_BOOK_BOOKING.Active := True;

  // Открываем модально форму
  F_BOOK_BOOKING_Add.ShowModal;

  if F_BOOK_BOOKING_Add.ModalResult = mrOk then
  begin
    // Добавление новой записи брони в БД
    FB_Data.ds_BOOK_BOOKING.Insert;
    FB_Data.ds_BOOK_BOOKINGBOOK_CODE.AsString := F_BOOK_BOOKING_Add.cb_INFO_BOOKS.Text;
    FB_Data.ds_BOOK_BOOKINGBOOKING_DATE.AsDateTime := F_BOOK_BOOKING_Add.DateTimePicker1.Date;
    FB_Data.ds_BOOK_BOOKINGNUMBER_TICKET.AsString := F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.Text;
    FB_Data.ds_BOOK_BOOKING.Post;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_BOOK_BOOKING.Close;
    FB_Data.ds_BOOK_BOOKING.Open;

    FB_Data.ds_BOOK_BOOKING_Select.Close;
    FB_Data.ds_BOOK_BOOKING_Select.Open;
  end;

end;

// Удаление брони из БД
procedure TF_BOOK_BOOKING.b_DeleteClick(Sender: TObject);
var
  ret: integer;
begin
  // Проверка на наличие записей
  if FB_Data.ds_BOOK_BOOKING_Select.RecordCount = 0 then Abort;

  // Предупреждающий запрос на удаление
  ret := Application.MessageBox(PChar('Вы хотите удалить запись?'),'Подтверждение',MB_YESNO + MB_ICONQUESTION);
  if ret = IDYES then
  begin
    //Удаление с помощью запроса
    FB_Data.IBQ1.Close;
    FB_Data.IBQ1.SQL.Clear;
    FB_Data.IBQ1.SQL.Add('delete from BOOK_BOOKING where ID_DOCUMENT = ' + FB_Data.ds_BOOK_BOOKING_SelectID_DOCUMENT.AsString);
    FB_Data.IBQ1.ExecSQL;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;

    FB_Data.ds_BOOK_BOOKING_Select.Close;
    FB_Data.ds_BOOK_BOOKING_Select.Open;
  end;

end;

// Изменение брони в БД
procedure TF_BOOK_BOOKING.b_EditClick(Sender: TObject);
var SQL_Str: string;
num, num_sel: Integer;
begin
  // Проверка на наличие записей
  if FB_Data.ds_BOOK_BOOKING_Select.RecordCount = 0 then Abort;
  
  {Очистка и наполнение ComboBox аналогично вставке записи, но вводится две переменные num, num_sel ,
  которые отслеживают текущее значение в записи и выбирают его в ComboBox}
  F_BOOK_BOOKING_Add.cb_BOOK_CODE.Items.Clear;
  F_BOOK_BOOKING_Add.cb_INFO_BOOKS.Items.Clear;

  SQL_Str := 'select * from INFO_BOOKS order by NAME_BOOK';
  FB_Data.ds_INFO_BOOKS.Close;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Clear;
  FB_Data.ds_INFO_BOOKS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_BOOKS.Open;

  num_sel := -1;
  num := 0;

  while not(FB_Data.ds_INFO_BOOKS.Eof) do
  begin
    F_BOOK_BOOKING_Add.cb_BOOK_CODE.Items.Add(FB_Data.ds_INFO_BOOKSNAME_BOOK.AsString);
    F_BOOK_BOOKING_Add.cb_INFO_BOOKS.Items.Add(FB_Data.ds_INFO_BOOKSINFO_BOOKS.AsString);

    if FB_Data.ds_INFO_BOOKSINFO_BOOKS.AsString = FB_Data.ds_BOOK_BOOKING_SelectINFO_BOOKS.AsString then
    num_sel := num;

    FB_Data.ds_INFO_BOOKS.Next;
    Inc(num);
  end;

  F_BOOK_BOOKING_Add.cb_BOOK_CODE.ItemIndex := num_sel;
  F_BOOK_BOOKING_Add.cb_INFO_BOOKS.ItemIndex := num_sel;

  


  F_BOOK_BOOKING_Add.cb_NUMBER_TICKET.Items.Clear;
  F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.Items.Clear;

  SQL_Str := 'select * from INFO_READERS order by SURNAME';
  FB_Data.ds_INFO_READERS.Close;
  FB_Data.ds_INFO_READERS.SelectSQL.Clear;
  FB_Data.ds_INFO_READERS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_READERS.Open;

  num_sel := -1;
  num := 0;

  while not(FB_Data.ds_INFO_READERS.Eof) do
  begin
    F_BOOK_BOOKING_Add.cb_NUMBER_TICKET.Items.Add(FB_Data.ds_INFO_READERSSURNAME.AsString);
    F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.Items.Add(FB_Data.ds_INFO_READERSNUMBER_TICKET.AsString);

    if FB_Data.ds_INFO_READERSNUMBER_TICKET.AsString = FB_Data.ds_BOOK_BOOKING_SelectNUMBER_TICKET.AsString then
    num_sel := num;

    FB_Data.ds_INFO_READERS.Next;
    Inc(num);
  end;

  F_BOOK_BOOKING_Add.cb_NUMBER_TICKET.ItemIndex := num_sel;
  F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.ItemIndex := num_sel;


  F_BOOK_BOOKING_Add.DateTimePicker1.Date := FB_Data.ds_BOOK_BOOKING_SelectBOOKING_DATE.AsDateTime;

  // Позиционируем таблицы, чтобы работа шла с правильной записью
  FB_Data.ds_BOOK_BOOKING.Active := False;
  FB_Data.ds_BOOK_BOOKING.Active := True;
  FB_Data.ds_BOOK_BOOKING.Locate('ID_DOCUMENT', FB_Data.ds_BOOK_BOOKING_SelectID_DOCUMENT.AsInteger, []);

  // Открываем модально форму
  F_BOOK_BOOKING_Add.ShowModal;

  if F_BOOK_BOOKING_Add.ModalResult = mrOk then
  begin
    // Изменение записи брони в БД
    FB_Data.ds_BOOK_BOOKING.Edit;
    FB_Data.ds_BOOK_BOOKINGBOOK_CODE.AsString := F_BOOK_BOOKING_Add.cb_INFO_BOOKS.Text;
    FB_Data.ds_BOOK_BOOKINGBOOKING_DATE.AsDateTime := F_BOOK_BOOKING_Add.DateTimePicker1.Date;
    FB_Data.ds_BOOK_BOOKINGNUMBER_TICKET.AsString := F_BOOK_BOOKING_Add.cb_NUMBER_TICKET_id.Text;
    FB_Data.ds_BOOK_BOOKING.Post;

    // Подтверждение транзакции и обновление данных
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_BOOK_BOOKING.Close;
    FB_Data.ds_BOOK_BOOKING.Open;

    FB_Data.ds_BOOK_BOOKING_Select.Close;
    FB_Data.ds_BOOK_BOOKING_Select.Open;
  end;

end;

procedure TF_BOOK_BOOKING.cb_NAME_BOOK_Items;
begin
  // Наполнение ComboBox именами книг, которые есть в таблице бронирования
  FB_Data.IBQ1.Close;
  FB_Data.IBQ1.SQL.Clear;
  FB_Data.IBQ1.SQL.Add('select DISTINCT info_books.name_book from info_books ');
  FB_Data.IBQ1.SQL.Add(' inner join book_booking on (info_books.info_books = book_booking.book_code) ');
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

procedure TF_BOOK_BOOKING.cb_SURNAME_Items;
begin
  // Наполнение ComboBox фамилиями, которые есть в таблице бронирования
  FB_Data.IBQ1.Close;
  FB_Data.IBQ1.SQL.Clear;
  FB_Data.IBQ1.SQL.Add('select DISTINCT info_readers.surname from info_readers ');
  FB_Data.IBQ1.SQL.Add(' inner join book_booking on (info_readers.number_ticket = book_booking.number_ticket) ');
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

procedure TF_BOOK_BOOKING.CheckBox1Click(Sender: TObject);
begin
  // Доступность Даты заказа брони
  DateTimePicker1.Enabled := CheckBox1.Checked;
end;

procedure TF_BOOK_BOOKING.b_Fillter_ClearClick(Sender: TObject);
begin
  // Сброс всех фильтров
  CheckBox1.Checked := False;
  cb_NAME_BOOK.ItemIndex := 0;
  cb_SURNAME.ItemIndex := 0;

  Constr_SQL;
end;

// Формирование запроса с учетом фильтров и сортировок
procedure TF_BOOK_BOOKING.Constr_SQL;
var SQL_Str: string;
Sql_where: Integer;
begin
  Sql_where := 0;
  // Основной запрос
  SQL_Str := 'select book_booking.id_document, book_booking.booking_date, ';
  SQL_Str := SQL_Str + ' info_books.name_book, info_books.author, info_readers.surname, ';
  SQL_Str := SQL_Str + ' info_readers.name, info_readers.patronymic, info_books.info_books, ';
  SQL_Str := SQL_Str + ' info_readers.number_ticket from info_readers ';
  SQL_Str := SQL_Str + ' inner join book_booking on (info_readers.number_ticket = book_booking.number_ticket) ';
  SQL_Str := SQL_Str + ' inner join info_books on (book_booking.book_code = info_books.info_books) ';

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
      SQL_Str := SQL_Str + ' and book_booking.booking_date = ' + QuotedStr(Datetostr(DateTimePicker1.Date));
    end
    else
    begin
      SQL_Str := SQL_Str + ' where book_booking.booking_date = ' + QuotedStr(Datetostr(DateTimePicker1.Date));
    end;

  end;

  // Сортировка
  if cb_Sort.Text <> '' then
  begin
    case cb_Sort.ItemIndex of
     0 : SQL_Str := SQL_Str + ' order by book_booking.booking_date ';
     1 : SQL_Str := SQL_Str + ' order by info_books.name_book ';
     2 : SQL_Str := SQL_Str + ' order by info_books.author ';
     3 : SQL_Str := SQL_Str + ' order by info_readers.surname ';
     4 : SQL_Str := SQL_Str + ' order by info_readers.name ';
     5 : SQL_Str := SQL_Str + ' order by info_readers.patronymic ';
    end;

    if rb1.Checked then
      SQL_Str := SQL_Str + 'ASC'
    else
      SQL_Str := SQL_Str + 'DESC';

  end;

  // Переоткрытие запроса
  FB_Data.ds_BOOK_BOOKING_Select.Close;
  FB_Data.ds_BOOK_BOOKING_Select.SelectSQL.Clear;
  FB_Data.ds_BOOK_BOOKING_Select.SelectSQL.Add(SQL_Str);
  FB_Data.ds_BOOK_BOOKING_Select.Open;

end;

procedure TF_BOOK_BOOKING.b_FillterClick(Sender: TObject);
begin
  Constr_SQL;
end;

procedure TF_BOOK_BOOKING.b_SortClick(Sender: TObject);
begin
  Constr_SQL;
end;

end.
