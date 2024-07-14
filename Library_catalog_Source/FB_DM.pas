unit FB_DM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBTable, IBQuery;

type
  TFB_Data = class(TDataModule)
    FBDatabase: TIBDatabase;
    FBTransaction: TIBTransaction;
    L_Info_books: TIBDataSet;
    DataSource1: TDataSource;
    IBQ1: TIBQuery;
    ds_INFO_READERS: TIBDataSet;
    ds_INFO_READERSNUMBER_TICKET: TIntegerField;
    ds_INFO_READERSSURNAME: TIBStringField;
    ds_INFO_READERSNAME: TIBStringField;
    ds_INFO_READERSPATRONYMIC: TIBStringField;
    ds_INFO_READERSADRESS: TIBStringField;
    ds_INFO_READERSTELEPHONE: TIBStringField;
    ds_INFO_BOOKS: TIBDataSet;
    ds_INFO_BOOKSINFO_BOOKS: TIntegerField;
    ds_INFO_BOOKSNAME_BOOK: TIBStringField;
    ds_INFO_BOOKSAUTHOR: TIBStringField;
    ds_INFO_BOOKSDATE_OF_PRINTING: TDateField;
    ds_INFO_BOOKSNUMBER_OF_AVAILABLE: TIntegerField;
    ds_INFO_BOOKSNUMBER_OF_PAGES: TIntegerField;
    ds_INFO_BOOKSPRICE: TIntegerField;
    ds_INFO_BOOKSGEBRE: TIBStringField;
    ds_BOOK_BOOKING: TIBDataSet;
    ds_BOOK_BOOKINGID_DOCUMENT: TIntegerField;
    ds_BOOK_BOOKINGBOOK_CODE: TIntegerField;
    ds_BOOK_BOOKINGBOOKING_DATE: TDateField;
    ds_BOOK_BOOKINGNUMBER_TICKET: TIntegerField;
    ds_BOOK_BOOKING_Select: TIBDataSet;
    ds_BOOK_BOOKING_SelectID_DOCUMENT: TIntegerField;
    ds_BOOK_BOOKING_SelectBOOKING_DATE: TDateField;
    ds_BOOK_BOOKING_SelectNAME_BOOK: TIBStringField;
    ds_BOOK_BOOKING_SelectAUTHOR: TIBStringField;
    ds_BOOK_BOOKING_SelectSURNAME: TIBStringField;
    ds_BOOK_BOOKING_SelectNAME: TIBStringField;
    ds_BOOK_BOOKING_SelectPATRONYMIC: TIBStringField;
    ds_BOOK_BOOKING_SelectINFO_BOOKS: TIntegerField;
    ds_BOOK_BOOKING_SelectNUMBER_TICKET: TIntegerField;
    ds_LENDING_OF_BOOKS: TIBDataSet;
    ds_LENDING_OF_BOOKSID_LENDING: TIntegerField;
    ds_LENDING_OF_BOOKSBOOK_CODE: TIntegerField;
    ds_LENDING_OF_BOOKSNUMBER_TICKET: TIntegerField;
    ds_LENDING_OF_BOOKSDATE_LENDING: TDateField;
    ds_LENDING_OF_BOOKSDATE_RETURN: TDateField;
    ds_LENDING_OF_BOOKS_Select: TIBDataSet;
    ds_LENDING_OF_BOOKS_SelectID_LENDING: TIntegerField;
    ds_LENDING_OF_BOOKS_SelectDATE_LENDING: TDateField;
    ds_LENDING_OF_BOOKS_SelectDATE_RETURN: TDateField;
    ds_LENDING_OF_BOOKS_SelectNAME_BOOK: TIBStringField;
    ds_LENDING_OF_BOOKS_SelectAUTHOR: TIBStringField;
    ds_LENDING_OF_BOOKS_SelectSURNAME: TIBStringField;
    ds_LENDING_OF_BOOKS_SelectNAME: TIBStringField;
    ds_LENDING_OF_BOOKS_SelectPATRONYMIC: TIBStringField;
    ds_LENDING_OF_BOOKS_SelectINFO_BOOKS: TIntegerField;
    ds_LENDING_OF_BOOKS_SelectNUMBER_TICKET: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FB_Data: TFB_Data;

implementation

uses
  Unit1;

{$R *.dfm}

end.
