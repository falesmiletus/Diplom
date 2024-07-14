object FB_Data: TFB_Data
  OldCreateOrder = False
  Left = 748
  Top = 123
  Height = 436
  Width = 594
  object FBDatabase: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = FBTransaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 16
  end
  object FBTransaction: TIBTransaction
    Active = False
    DefaultDatabase = FBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 104
    Top = 16
  end
  object L_Info_books: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from INFO_BOOKS'
      'where'
      '  BOOK_CODE = :OLD_BOOK_CODE')
    InsertSQL.Strings = (
      'insert into INFO_BOOKS'
      
        '  (BOOK_CODE, NAME_BOOK, AUTHOR, DATE_OF_PRINTING, NUMBER_OF_AVA' +
        'ILABLE, '
      '   NUMBER_OF_PAGES, PRICE, GEBRE)'
      'values'
      
        '  (:BOOK_CODE, :NAME_BOOK, :AUTHOR, :DATE_OF_PRINTING, :NUMBER_O' +
        'F_AVAILABLE, '
      '   :NUMBER_OF_PAGES, :PRICE, :GEBRE)')
    RefreshSQL.Strings = (
      'Select '
      '  BOOK_CODE,'
      '  NAME_BOOK,'
      '  AUTHOR,'
      '  DATE_OF_PRINTING,'
      '  NUMBER_OF_AVAILABLE,'
      '  NUMBER_OF_PAGES,'
      '  PRICE,'
      '  GEBRE'
      'from INFO_BOOKS '
      'where'
      '  BOOK_CODE = :BOOK_CODE')
    SelectSQL.Strings = (
      'select * from INFO_BOOKS;')
    ModifySQL.Strings = (
      'update INFO_BOOKS'
      'set'
      '  BOOK_CODE = :BOOK_CODE,'
      '  NAME_BOOK = :NAME_BOOK,'
      '  AUTHOR = :AUTHOR,'
      '  DATE_OF_PRINTING = :DATE_OF_PRINTING,'
      '  NUMBER_OF_AVAILABLE = :NUMBER_OF_AVAILABLE,'
      '  NUMBER_OF_PAGES = :NUMBER_OF_PAGES,'
      '  PRICE = :PRICE,'
      '  GEBRE = :GEBRE'
      'where'
      '  BOOK_CODE = :OLD_BOOK_CODE')
    Left = 456
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = L_Info_books
    Left = 448
    Top = 340
  end
  object IBQ1: TIBQuery
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 192
    Top = 12
  end
  object ds_INFO_READERS: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from INFO_READERS'
      'where'
      '  NUMBER_TICKET = :OLD_NUMBER_TICKET')
    InsertSQL.Strings = (
      'insert into INFO_READERS'
      '  (ADRESS, NAME, PATRONYMIC, SURNAME, TELEPHONE)'
      'values'
      '  (:ADRESS, :NAME, :PATRONYMIC, :SURNAME, :TELEPHONE)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMBER_TICKET,'
      '  SURNAME,'
      '  NAME,'
      '  PATRONYMIC,'
      '  ADRESS,'
      '  TELEPHONE'
      'from INFO_READERS '
      'where'
      '  NUMBER_TICKET = :NUMBER_TICKET')
    SelectSQL.Strings = (
      
        'select NUMBER_TICKET, SURNAME, NAME, PATRONYMIC, ADRESS, TELEPHO' +
        'NE from INFO_READERS')
    ModifySQL.Strings = (
      'update INFO_READERS'
      'set'
      '  ADRESS = :ADRESS,'
      '  NAME = :NAME,'
      '  PATRONYMIC = :PATRONYMIC,'
      '  SURNAME = :SURNAME,'
      '  TELEPHONE = :TELEPHONE'
      'where'
      '  NUMBER_TICKET = :OLD_NUMBER_TICKET')
    GeneratorField.Field = 'NUMBER_TICKET'
    GeneratorField.Generator = 'GEN_INFO_READERS_ID'
    Left = 36
    Top = 76
    object ds_INFO_READERSNUMBER_TICKET: TIntegerField
      FieldName = 'NUMBER_TICKET'
      Origin = '"INFO_READERS"."NUMBER_TICKET"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ds_INFO_READERSSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = '"INFO_READERS"."SURNAME"'
      Size = 30
    end
    object ds_INFO_READERSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"INFO_READERS"."NAME"'
      Size = 30
    end
    object ds_INFO_READERSPATRONYMIC: TIBStringField
      FieldName = 'PATRONYMIC'
      Origin = '"INFO_READERS"."PATRONYMIC"'
      Size = 30
    end
    object ds_INFO_READERSADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = '"INFO_READERS"."ADRESS"'
      Size = 100
    end
    object ds_INFO_READERSTELEPHONE: TIBStringField
      FieldName = 'TELEPHONE'
      Origin = '"INFO_READERS"."TELEPHONE"'
    end
  end
  object ds_INFO_BOOKS: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from INFO_BOOKS'
      'where'
      '  INFO_BOOKS = :OLD_INFO_BOOKS')
    InsertSQL.Strings = (
      'insert into INFO_BOOKS'
      
        '  (AUTHOR, DATE_OF_PRINTING, GEBRE, NAME_BOOK, NUMBER_OF_AVAILAB' +
        'LE, NUMBER_OF_PAGES, '
      '   PRICE)'
      'values'
      
        '  (:AUTHOR, :DATE_OF_PRINTING, :GEBRE, :NAME_BOOK, :NUMBER_OF_AV' +
        'AILABLE, '
      '   :NUMBER_OF_PAGES, :PRICE)')
    RefreshSQL.Strings = (
      'Select '
      '  INFO_BOOKS,'
      '  NAME_BOOK,'
      '  AUTHOR,'
      '  DATE_OF_PRINTING,'
      '  NUMBER_OF_AVAILABLE,'
      '  NUMBER_OF_PAGES,'
      '  PRICE,'
      '  GEBRE'
      'from INFO_BOOKS '
      'where'
      '  INFO_BOOKS = :INFO_BOOKS')
    SelectSQL.Strings = (
      
        'select INFO_BOOKS, NAME_BOOK, AUTHOR, DATE_OF_PRINTING, NUMBER_O' +
        'F_AVAILABLE, NUMBER_OF_PAGES, PRICE, GEBRE from INFO_BOOKS')
    ModifySQL.Strings = (
      'update INFO_BOOKS'
      'set'
      '  AUTHOR = :AUTHOR,'
      '  DATE_OF_PRINTING = :DATE_OF_PRINTING,'
      '  GEBRE = :GEBRE,'
      '  NAME_BOOK = :NAME_BOOK,'
      '  NUMBER_OF_AVAILABLE = :NUMBER_OF_AVAILABLE,'
      '  NUMBER_OF_PAGES = :NUMBER_OF_PAGES,'
      '  PRICE = :PRICE'
      'where'
      '  INFO_BOOKS = :OLD_INFO_BOOKS')
    GeneratorField.Field = 'INFO_BOOKS'
    GeneratorField.Generator = 'GEN_BOOK_BOOKING_ID'
    Left = 152
    Top = 72
    object ds_INFO_BOOKSINFO_BOOKS: TIntegerField
      FieldName = 'INFO_BOOKS'
      Origin = '"INFO_BOOKS"."INFO_BOOKS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ds_INFO_BOOKSNAME_BOOK: TIBStringField
      FieldName = 'NAME_BOOK'
      Origin = '"INFO_BOOKS"."NAME_BOOK"'
      Size = 40
    end
    object ds_INFO_BOOKSAUTHOR: TIBStringField
      FieldName = 'AUTHOR'
      Origin = '"INFO_BOOKS"."AUTHOR"'
      Size = 25
    end
    object ds_INFO_BOOKSDATE_OF_PRINTING: TDateField
      FieldName = 'DATE_OF_PRINTING'
      Origin = '"INFO_BOOKS"."DATE_OF_PRINTING"'
    end
    object ds_INFO_BOOKSNUMBER_OF_AVAILABLE: TIntegerField
      FieldName = 'NUMBER_OF_AVAILABLE'
      Origin = '"INFO_BOOKS"."NUMBER_OF_AVAILABLE"'
    end
    object ds_INFO_BOOKSNUMBER_OF_PAGES: TIntegerField
      FieldName = 'NUMBER_OF_PAGES'
      Origin = '"INFO_BOOKS"."NUMBER_OF_PAGES"'
    end
    object ds_INFO_BOOKSPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = '"INFO_BOOKS"."PRICE"'
    end
    object ds_INFO_BOOKSGEBRE: TIBStringField
      FieldName = 'GEBRE'
      Origin = '"INFO_BOOKS"."GEBRE"'
      Size = 35
    end
  end
  object ds_BOOK_BOOKING: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BOOK_BOOKING'
      'where'
      '  ID_DOCUMENT = :OLD_ID_DOCUMENT')
    InsertSQL.Strings = (
      'insert into BOOK_BOOKING'
      '  (BOOK_CODE, BOOKING_DATE, NUMBER_TICKET)'
      'values'
      '  (:BOOK_CODE, :BOOKING_DATE, :NUMBER_TICKET)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOCUMENT,'
      '  BOOK_CODE,'
      '  BOOKING_DATE,'
      '  NUMBER_TICKET'
      'from BOOK_BOOKING '
      'where'
      '  ID_DOCUMENT = :ID_DOCUMENT')
    SelectSQL.Strings = (
      
        'select ID_DOCUMENT, BOOK_CODE, BOOKING_DATE, NUMBER_TICKET from ' +
        'BOOK_BOOKING')
    ModifySQL.Strings = (
      'update BOOK_BOOKING'
      'set'
      '  BOOK_CODE = :BOOK_CODE,'
      '  BOOKING_DATE = :BOOKING_DATE,'
      '  NUMBER_TICKET = :NUMBER_TICKET'
      'where'
      '  ID_DOCUMENT = :OLD_ID_DOCUMENT')
    GeneratorField.Field = 'ID_DOCUMENT'
    GeneratorField.Generator = 'GEN_BOOK_BOOKING_ID'
    Left = 252
    Top = 76
    object ds_BOOK_BOOKINGID_DOCUMENT: TIntegerField
      FieldName = 'ID_DOCUMENT'
      Origin = '"BOOK_BOOKING"."ID_DOCUMENT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ds_BOOK_BOOKINGBOOK_CODE: TIntegerField
      FieldName = 'BOOK_CODE'
      Origin = '"BOOK_BOOKING"."BOOK_CODE"'
    end
    object ds_BOOK_BOOKINGBOOKING_DATE: TDateField
      FieldName = 'BOOKING_DATE'
      Origin = '"BOOK_BOOKING"."BOOKING_DATE"'
    end
    object ds_BOOK_BOOKINGNUMBER_TICKET: TIntegerField
      FieldName = 'NUMBER_TICKET'
      Origin = '"BOOK_BOOKING"."NUMBER_TICKET"'
    end
  end
  object ds_BOOK_BOOKING_Select: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select '
      '    book_booking.id_document,'
      '    book_booking.booking_date,'
      '    info_books.name_book,'
      '    info_books.author,'
      '    info_readers.surname,'
      '    info_readers.name,'
      '    info_readers.patronymic,'
      '    info_books.info_books,'
      '    info_readers.number_ticket'
      'from info_readers'
      
        '   inner join book_booking on (info_readers.number_ticket = book' +
        '_booking.number_ticket)'
      
        '   inner join info_books on (book_booking.book_code = info_books' +
        '.info_books)'
      
        'order by book_booking.booking_date, info_books.name_book, info_r' +
        'eaders.surname')
    Left = 248
    Top = 136
    object ds_BOOK_BOOKING_SelectID_DOCUMENT: TIntegerField
      FieldName = 'ID_DOCUMENT'
      Origin = '"BOOK_BOOKING"."ID_DOCUMENT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ds_BOOK_BOOKING_SelectBOOKING_DATE: TDateField
      FieldName = 'BOOKING_DATE'
      Origin = '"BOOK_BOOKING"."BOOKING_DATE"'
    end
    object ds_BOOK_BOOKING_SelectNAME_BOOK: TIBStringField
      FieldName = 'NAME_BOOK'
      Origin = '"INFO_BOOKS"."NAME_BOOK"'
      Size = 40
    end
    object ds_BOOK_BOOKING_SelectAUTHOR: TIBStringField
      FieldName = 'AUTHOR'
      Origin = '"INFO_BOOKS"."AUTHOR"'
      Size = 25
    end
    object ds_BOOK_BOOKING_SelectSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = '"INFO_READERS"."SURNAME"'
      Size = 30
    end
    object ds_BOOK_BOOKING_SelectNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"INFO_READERS"."NAME"'
      Size = 30
    end
    object ds_BOOK_BOOKING_SelectPATRONYMIC: TIBStringField
      FieldName = 'PATRONYMIC'
      Origin = '"INFO_READERS"."PATRONYMIC"'
      Size = 30
    end
    object ds_BOOK_BOOKING_SelectINFO_BOOKS: TIntegerField
      FieldName = 'INFO_BOOKS'
      Origin = '"INFO_BOOKS"."INFO_BOOKS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ds_BOOK_BOOKING_SelectNUMBER_TICKET: TIntegerField
      FieldName = 'NUMBER_TICKET'
      Origin = '"INFO_READERS"."NUMBER_TICKET"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ds_LENDING_OF_BOOKS: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LENDING_OF_BOOKS'
      'where'
      '  ID_LENDING = :OLD_ID_LENDING')
    InsertSQL.Strings = (
      'insert into LENDING_OF_BOOKS'
      '  (BOOK_CODE, NUMBER_TICKET, DATE_LENDING, DATE_RETURN)'
      'values'
      '  (:BOOK_CODE, :NUMBER_TICKET, :DATE_LENDING, :DATE_RETURN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_LENDING,'
      '  BOOK_CODE,'
      '  NUMBER_TICKET,'
      '  DATE_LENDING,'
      '  DATE_RETURN'
      'from LENDING_OF_BOOKS '
      'where'
      '  ID_LENDING = :ID_LENDING')
    SelectSQL.Strings = (
      
        'select ID_LENDING, BOOK_CODE, NUMBER_TICKET, DATE_LENDING, DATE_' +
        'RETURN from LENDING_OF_BOOKS')
    ModifySQL.Strings = (
      'update LENDING_OF_BOOKS'
      'set'
      '  BOOK_CODE = :BOOK_CODE,'
      '  NUMBER_TICKET = :NUMBER_TICKET,'
      '  DATE_LENDING = :DATE_LENDING,'
      '  DATE_RETURN = :DATE_RETURN'
      'where'
      '  ID_LENDING = :OLD_ID_LENDING')
    GeneratorField.Field = 'ID_LENDING'
    GeneratorField.Generator = 'GEN_LENDING_OF_BOOKS_ID'
    Left = 396
    Top = 80
    object ds_LENDING_OF_BOOKSID_LENDING: TIntegerField
      FieldName = 'ID_LENDING'
      Origin = 'LENDING_OF_BOOKS.ID_LENDING'
      Required = True
    end
    object ds_LENDING_OF_BOOKSBOOK_CODE: TIntegerField
      FieldName = 'BOOK_CODE'
      Origin = 'LENDING_OF_BOOKS.BOOK_CODE'
    end
    object ds_LENDING_OF_BOOKSNUMBER_TICKET: TIntegerField
      FieldName = 'NUMBER_TICKET'
      Origin = 'LENDING_OF_BOOKS.NUMBER_TICKET'
    end
    object ds_LENDING_OF_BOOKSDATE_LENDING: TDateField
      FieldName = 'DATE_LENDING'
      Origin = 'LENDING_OF_BOOKS.DATE_LENDING'
    end
    object ds_LENDING_OF_BOOKSDATE_RETURN: TDateField
      FieldName = 'DATE_RETURN'
      Origin = 'LENDING_OF_BOOKS.DATE_RETURN'
    end
  end
  object ds_LENDING_OF_BOOKS_Select: TIBDataSet
    Database = FBDatabase
    Transaction = FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select '
      '    lending_of_books.id_lending,'
      '    lending_of_books.date_lending,'
      '    lending_of_books.date_return,'
      '    info_books.name_book,'
      '    info_books.author,'
      '    info_readers.surname,'
      '    info_readers.name,'
      '    info_readers.patronymic,'
      '    info_books.info_books,'
      '    info_readers.number_ticket'
      'from info_readers'
      
        '   inner join lending_of_books on (info_readers.number_ticket = ' +
        'lending_of_books.number_ticket)'
      
        '   inner join info_books on (lending_of_books.book_code = info_b' +
        'ooks.info_books)'
      
        'order by lending_of_books.date_lending, lending_of_books.date_re' +
        'turn, info_books.name_book, info_readers.surname')
    Left = 408
    Top = 140
    object ds_LENDING_OF_BOOKS_SelectID_LENDING: TIntegerField
      FieldName = 'ID_LENDING'
      Origin = 'LENDING_OF_BOOKS.ID_LENDING'
      Required = True
    end
    object ds_LENDING_OF_BOOKS_SelectDATE_LENDING: TDateField
      FieldName = 'DATE_LENDING'
      Origin = 'LENDING_OF_BOOKS.DATE_LENDING'
    end
    object ds_LENDING_OF_BOOKS_SelectDATE_RETURN: TDateField
      FieldName = 'DATE_RETURN'
      Origin = 'LENDING_OF_BOOKS.DATE_RETURN'
    end
    object ds_LENDING_OF_BOOKS_SelectNAME_BOOK: TIBStringField
      FieldName = 'NAME_BOOK'
      Origin = 'INFO_BOOKS.NAME_BOOK'
      Size = 40
    end
    object ds_LENDING_OF_BOOKS_SelectAUTHOR: TIBStringField
      FieldName = 'AUTHOR'
      Origin = 'INFO_BOOKS.AUTHOR'
      Size = 25
    end
    object ds_LENDING_OF_BOOKS_SelectSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = 'INFO_READERS.SURNAME'
      Size = 30
    end
    object ds_LENDING_OF_BOOKS_SelectNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'INFO_READERS.NAME'
      Size = 30
    end
    object ds_LENDING_OF_BOOKS_SelectPATRONYMIC: TIBStringField
      FieldName = 'PATRONYMIC'
      Origin = 'INFO_READERS.PATRONYMIC'
      Size = 30
    end
    object ds_LENDING_OF_BOOKS_SelectINFO_BOOKS: TIntegerField
      FieldName = 'INFO_BOOKS'
      Origin = 'INFO_BOOKS.INFO_BOOKS'
      Required = True
    end
    object ds_LENDING_OF_BOOKS_SelectNUMBER_TICKET: TIntegerField
      FieldName = 'NUMBER_TICKET'
      Origin = 'INFO_READERS.NUMBER_TICKET'
      Required = True
    end
  end
end
