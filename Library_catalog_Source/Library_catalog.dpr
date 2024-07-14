program Library_catalog;

uses
  Forms,
  SysUtils,
  Unit1 in 'Unit1.pas' {Form1},
  FB_DM in 'FB_DM.pas' {FB_Data: TDataModule},
  U_INFO_READERS in 'U_INFO_READERS.pas' {F_INFO_READERS},
  U_INFO_READERS_Add in 'U_INFO_READERS_Add.pas' {F_INFO_READERS_Add},
  U_INFO_BOOKS in 'U_INFO_BOOKS.pas' {F_INFO_BOOKS},
  U_INFO_BOOKS_Add in 'U_INFO_BOOKS_Add.pas' {F_INFO_BOOKS_Add},
  U_BOOK_BOOKING in 'U_BOOK_BOOKING.pas' {F_BOOK_BOOKING},
  U_BOOK_BOOKING_Add in 'U_BOOK_BOOKING_Add.pas' {F_BOOK_BOOKING_Add},
  U_LENDING_OF_BOOKS in 'U_LENDING_OF_BOOKS.pas' {F_LENDING_OF_BOOKS},
  U_LENDING_OF_BOOKS_Add in 'U_LENDING_OF_BOOKS_Add.pas' {F_LENDING_OF_BOOKS_Add},
  U_Report in 'U_Report.pas' {F_Report};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Library_catalog';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFB_Data, FB_Data);
  Application.CreateForm(TF_Report, F_Report);
  FB_Data.FBDatabase.DatabaseName := 'localhost:' + ExtractFilePath(Application.ExeName)+'LIBRARY_BD.FDB';
  FB_Data.FBDatabase.Connected := True;
  FB_Data.FBTransaction.Active := True;
  FB_Data.ds_INFO_READERS.Active := True;
  FB_Data.ds_INFO_BOOKS.Active := True;
  FB_Data.ds_BOOK_BOOKING.Active := True;
  FB_Data.ds_LENDING_OF_BOOKS.Active := True;

  Application.CreateForm(TF_INFO_READERS, F_INFO_READERS);
  Application.CreateForm(TF_INFO_READERS_Add, F_INFO_READERS_Add);
  Application.CreateForm(TF_INFO_BOOKS, F_INFO_BOOKS);
  Application.CreateForm(TF_INFO_BOOKS_Add, F_INFO_BOOKS_Add);
  Application.CreateForm(TF_BOOK_BOOKING, F_BOOK_BOOKING);
  Application.CreateForm(TF_BOOK_BOOKING_Add, F_BOOK_BOOKING_Add);
  Application.CreateForm(TF_LENDING_OF_BOOKS, F_LENDING_OF_BOOKS);
  Application.CreateForm(TF_LENDING_OF_BOOKS_Add, F_LENDING_OF_BOOKS_Add);
  Application.Run;
end.
