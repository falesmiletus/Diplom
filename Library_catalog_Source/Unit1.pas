unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, frxDesgn, frxClass, frxDBSet, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N11: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N41: TMenuItem;
    D1: TMenuItem;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frx_ds_INFO_READERS: TfrxDBDataset;
    frx_ds_INFO_BOOKS: TfrxDBDataset;
    frx_ds_BOOK_BOOKING_Select: TfrxDBDataset;
    frx_ds_LENDING_OF_BOOKS_Select: TfrxDBDataset;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    IBQuery_INFO_BOOKS: TIBQuery;
    IBQuery_BOOK_BOOKING: TIBQuery;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    IBQuery_INFO_READERS: TIBQuery;
    DataSource4: TDataSource;
    DBGrid4: TDBGrid;
    IBQuery_LENDING_OF_BOOKS: TIBQuery;
    DataSource5: TDataSource;
    DBGrid5: TDBGrid;
    IBQuery_INFO_BOOKS_2: TIBQuery;
    DataSource6: TDataSource;
    DBGrid6: TDBGrid;
    IBQuery_INFO_READERS_2: TIBQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    procedure N11Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure IBQuery_BOOK_BOOKINGAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure IBQuery_LENDING_OF_BOOKSAfterScroll(DataSet: TDataSet);
    procedure ReOpen;
    procedure Splitter1Moved(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  fr1cm  = 37.7953;
  
var
  Form1: TForm1;

implementation

uses
  SPR_Info_books, FB_DM, U_INFO_READERS, U_INFO_BOOKS, U_BOOK_BOOKING,
  U_LENDING_OF_BOOKS, U_Report;

{$R *.dfm}

procedure TForm1.N11Click(Sender: TObject);
begin
  FB_Data.ds_INFO_BOOKS.Active := True;
  F_INFO_BOOKS.ShowModal;
  ReOpen;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  FB_Data.ds_INFO_READERS.Active := True;
  F_INFO_READERS.ShowModal;
  ReOpen;
end;

procedure TForm1.D1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  FB_Data.ds_BOOK_BOOKING_Select.Active := True;
  F_BOOK_BOOKING.cb_NAME_BOOK_Items;
  F_BOOK_BOOKING.cb_SURNAME_Items;

  F_BOOK_BOOKING.ShowModal;
  ReOpen;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
  FB_Data.ds_LENDING_OF_BOOKS_Select.Active := True;
  F_LENDING_OF_BOOKS.cb_NAME_BOOK_Items;
  F_LENDING_OF_BOOKS.cb_SURNAME_Items;

  F_LENDING_OF_BOOKS.ShowModal;
  ReOpen;
end;

procedure TForm1.N3Click(Sender: TObject);
 var t: TfrxMemoView;
 st: array [1..8] of Integer;
begin
  // Формирование отчета
  F_Report.ShowModal;

  if F_Report.ModalResult = mrOk then
  begin

    if F_Report.RadioButton1.Checked then
    begin
      st[1] := 1;
      st[2] := 1;
      st[3] := 1;
      st[4] := 1;
      st[5] := 1;
      st[6] := 1;
      st[7] := 0;
      st[8] := 0;

      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'ot_1.fr3');
      
      if not(F_Report.CheckBox1.Checked) then
      begin
        st[1] := 0;
        t := frxReport1.FindObject('Memo3') as TfrxMemoView;
        t.visible := false;
        t := frxReport1.FindObject('Memo10') as TfrxMemoView;
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo4') as TfrxMemoView;
      t.Left := ( 1.2*st[1] ) * fr1cm;
      if not(F_Report.CheckBox2.Checked) then
      begin
        st[2] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo11') as TfrxMemoView;
      t.Left := ( 1.2*st[1] ) * fr1cm;
      if not(F_Report.CheckBox2.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo5') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] ) * fr1cm;
      if not(F_Report.CheckBox3.Checked) then
      begin
        st[3] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo12') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] ) * fr1cm;
      if not(F_Report.CheckBox3.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo6') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] + 2.5*st[3] ) * fr1cm;
      if not(F_Report.CheckBox4.Checked) then
      begin
        st[4] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo13') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] + 2.5*st[3] ) * fr1cm;
      if not(F_Report.CheckBox4.Checked) then
      begin
        t.visible := false;
      end;
      
      t := frxReport1.FindObject('Memo7') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] + 2.5*st[3] + 2.8*st[4] ) * fr1cm;
      if not(F_Report.CheckBox5.Checked) then
      begin
        st[5] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo14') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] + 2.5*st[3] + 2.8*st[4] ) * fr1cm;
      if not(F_Report.CheckBox5.Checked) then
      begin
        t.visible := false;
      end;
      
      t := frxReport1.FindObject('Memo8') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] + 2.5*st[3] + 2.8*st[4] + 6.9*st[5] ) * fr1cm;
      if not(F_Report.CheckBox6.Checked) then
      begin
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo15') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 2.6*st[2] + 2.5*st[3] + 2.8*st[4] + 6.9*st[5] ) * fr1cm;
      if not(F_Report.CheckBox6.Checked) then
      begin
        t.visible := false;
      end;

    end;

    if F_Report.RadioButton2.Checked then
    begin
      st[1] := 1;
      st[2] := 1;
      st[3] := 1;
      st[4] := 1;
      st[5] := 1;
      st[6] := 1;
      st[7] := 1;
      st[8] := 1;

      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'ot_2.fr3');
      
      if not(F_Report.CheckBox7.Checked) then
      begin
        st[1] := 0;
        t := frxReport1.FindObject('Memo3') as TfrxMemoView;
        t.visible := false;
        t := frxReport1.FindObject('Memo10') as TfrxMemoView;
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo4') as TfrxMemoView;
      t.Left := ( 1.2*st[1] ) * fr1cm;
      if not(F_Report.CheckBox8.Checked) then
      begin
        st[2] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo11') as TfrxMemoView;
      t.Left := ( 1.2*st[1] ) * fr1cm;
      if not(F_Report.CheckBox8.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo5') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] ) * fr1cm;
      if not(F_Report.CheckBox9.Checked) then
      begin
        st[3] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo12') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] ) * fr1cm;
      if not(F_Report.CheckBox9.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo6') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] ) * fr1cm;
      if not(F_Report.CheckBox10.Checked) then
      begin
        st[4] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo13') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] ) * fr1cm;
      if not(F_Report.CheckBox10.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo7') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] ) * fr1cm;
      if not(F_Report.CheckBox11.Checked) then
      begin
        st[5] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo14') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] ) * fr1cm;
      if not(F_Report.CheckBox11.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo8') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] + 2.9*st[5] ) * fr1cm;
      if not(F_Report.CheckBox12.Checked) then
      begin
        st[6] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo15') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] + 2.9*st[5] ) * fr1cm;
      if not(F_Report.CheckBox12.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo16') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] + 2.9*st[5] + 1.9*st[6] ) * fr1cm;
      if not(F_Report.CheckBox13.Checked) then
      begin
        st[7] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo17') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] + 2.9*st[5] + 1.9*st[6] ) * fr1cm;
      if not(F_Report.CheckBox13.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo18') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] + 2.9*st[5] + 1.9*st[6] + 1.9*st[7] ) * fr1cm;
      if not(F_Report.CheckBox14.Checked) then
      begin
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo19') as TfrxMemoView;
      t.Left := ( 1.2*st[1] + 3.2*st[2] + 2.7*st[3] + 2.8*st[4] + 2.9*st[5] + 1.9*st[6] + 1.9*st[7] ) * fr1cm;
      if not(F_Report.CheckBox14.Checked) then
      begin
        t.visible := false;
      end;

    end;

    if F_Report.RadioButton3.Checked then
    begin
      st[1] := 1;
      st[2] := 1;
      st[3] := 1;
      st[4] := 1;
      st[5] := 1;
      st[6] := 1;
      st[7] := 0;
      st[8] := 0;

      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'ot_3.fr3');
      
      if not(F_Report.CheckBox15.Checked) then
      begin
        st[1] := 0;
        t := frxReport1.FindObject('Memo3') as TfrxMemoView;
        t.visible := false;
        t := frxReport1.FindObject('Memo10') as TfrxMemoView;
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo4') as TfrxMemoView;
      t.Left := ( 2.6*st[1] ) * fr1cm;
      if not(F_Report.CheckBox16.Checked) then
      begin
        st[2] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo11') as TfrxMemoView;
      t.Left := ( 2.6*st[1] ) * fr1cm;
      if not(F_Report.CheckBox16.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo5') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] ) * fr1cm;
      if not(F_Report.CheckBox17.Checked) then
      begin
        st[3] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo12') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] ) * fr1cm;
      if not(F_Report.CheckBox17.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo6') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] + 3.6*st[3] ) * fr1cm;
      if not(F_Report.CheckBox18.Checked) then
      begin
        st[4] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo13') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] + 3.6*st[3] ) * fr1cm;
      if not(F_Report.CheckBox18.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo7') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] + 3.6*st[3] + 2.8*st[4] ) * fr1cm;
      if not(F_Report.CheckBox19.Checked) then
      begin
        st[5] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo14') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] + 3.6*st[3] + 2.8*st[4] ) * fr1cm;
      if not(F_Report.CheckBox19.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo8') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] + 3.6*st[3] + 2.8*st[4] + 3*st[5] ) * fr1cm;
      if not(F_Report.CheckBox20.Checked) then
      begin
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo15') as TfrxMemoView;
      t.Left := ( 2.6*st[1] + 4*st[2] + 3.6*st[3] + 2.8*st[4] + 3*st[5] ) * fr1cm;
      if not(F_Report.CheckBox20.Checked) then
      begin
        t.visible := false;
      end;

    end;

    if F_Report.RadioButton4.Checked then
    begin
      st[1] := 1;
      st[2] := 1;
      st[3] := 1;
      st[4] := 1;
      st[5] := 1;
      st[6] := 1;
      st[7] := 1;
      st[8] := 0;

      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'ot_4.fr3');

      if not(F_Report.CheckBox27.Checked) then
      begin
        st[1] := 0;
        t := frxReport1.FindObject('Memo16') as TfrxMemoView;
        t.visible := false;
        t := frxReport1.FindObject('Memo17') as TfrxMemoView;
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo3') as TfrxMemoView;
      t.Left := ( 2.5*st[1] ) * fr1cm;
      if not(F_Report.CheckBox21.Checked) then
      begin
        st[2] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo10') as TfrxMemoView;
      t.Left := ( 2.5*st[1] ) * fr1cm;
      if not(F_Report.CheckBox21.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo4') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] ) * fr1cm;
      if not(F_Report.CheckBox22.Checked) then
      begin
        st[3] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo11') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] ) * fr1cm;
      if not(F_Report.CheckBox22.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo5') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] ) * fr1cm;
      if not(F_Report.CheckBox23.Checked) then
      begin
        st[4] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo12') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] ) * fr1cm;
      if not(F_Report.CheckBox23.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo6') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] + 3.2*st[4] ) * fr1cm;
      if not(F_Report.CheckBox24.Checked) then
      begin
        st[5] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo13') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] + 3.2*st[4] ) * fr1cm;
      if not(F_Report.CheckBox24.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo7') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] + 3.2*st[4] + 2.5*st[5] ) * fr1cm;
      if not(F_Report.CheckBox25.Checked) then
      begin
        st[6] := 0;
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo14') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] + 3.2*st[4] + 2.5*st[5] ) * fr1cm;
      if not(F_Report.CheckBox25.Checked) then
      begin
        t.visible := false;
      end;

      t := frxReport1.FindObject('Memo8') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] + 3.2*st[4] + 2.5*st[5] + 2.6*st[6] ) * fr1cm;
      if not(F_Report.CheckBox26.Checked) then
      begin
        t.visible := false;
      end;
      t := frxReport1.FindObject('Memo15') as TfrxMemoView;
      t.Left := ( 2.5*st[1] + 2.5*st[2] + 3.3*st[3] + 3.2*st[4] + 2.5*st[5] + 2.6*st[6] ) * fr1cm;
      if not(F_Report.CheckBox26.Checked) then
      begin
        t.visible := false;
      end;

    end;

    frxReport1.ShowReport();
  end;

end;

procedure TForm1.IBQuery_BOOK_BOOKINGAfterScroll(DataSet: TDataSet);
begin
  Form1.IBQuery_INFO_BOOKS.Close;
  Form1.IBQuery_INFO_BOOKS.SQL.Clear;
  Form1.IBQuery_INFO_BOOKS.SQL.Add('select * from INFO_BOOKS where INFO_BOOKS = ' + IBQuery_BOOK_BOOKING.Fields[4].AsString);
  Form1.IBQuery_INFO_BOOKS.Open;

  Form1.IBQuery_INFO_READERS.Close;
  Form1.IBQuery_INFO_READERS.SQL.Clear;
  Form1.IBQuery_INFO_READERS.SQL.Add('select * from INFO_READERS where NUMBER_TICKET = ' + IBQuery_BOOK_BOOKING.Fields[5].AsString);
  Form1.IBQuery_INFO_READERS.Open;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  DBGrid2.Width := Panel1.Width - DBGrid2.Left - 20;
  DBGrid3.Width := DBGrid2.Width;
  DBGrid5.Width := DBGrid2.Width;
  DBGrid6.Width := DBGrid2.Width;

  DBGrid1.Height := Panel1.Height - 30; //(Form1.ClientHeight div 2)-30;
  DBGrid4.Top := 28;
  DBGrid4.Height := Panel2.Height - 30;
  Label2.Top := DBGrid4.Top - 20;

  DBGrid2.Height := Panel1.Height div 2 - 30;
  DBGrid3.Height := DBGrid2.Height;
  Label4.Top := DBGrid2.Top + DBGrid2.Height + 5;
  DBGrid3.Top := Label4.Top + 13 + 5;


  DBGrid5.Height := Panel2.Height div 2 - 30;
  DBGrid6.Height := DBGrid5.Height;
  DBGrid5.Top := 28;
  Label6.Top := DBGrid5.Top + DBGrid5.Height + 5;
  DBGrid6.Top := Label6.Top + 13 + 5;
end;

procedure TForm1.IBQuery_LENDING_OF_BOOKSAfterScroll(DataSet: TDataSet);
begin
  Form1.IBQuery_INFO_BOOKS_2.Close;
  Form1.IBQuery_INFO_BOOKS_2.SQL.Clear;
  Form1.IBQuery_INFO_BOOKS_2.SQL.Add('select * from INFO_BOOKS where INFO_BOOKS = ' + IBQuery_LENDING_OF_BOOKS.Fields[5].AsString);
  Form1.IBQuery_INFO_BOOKS_2.Open;

  Form1.IBQuery_INFO_READERS_2.Close;
  Form1.IBQuery_INFO_READERS_2.SQL.Clear;
  Form1.IBQuery_INFO_READERS_2.SQL.Add('select * from INFO_READERS where NUMBER_TICKET = ' + IBQuery_LENDING_OF_BOOKS.Fields[6].AsString);
  Form1.IBQuery_INFO_READERS_2.Open;
end;

procedure TForm1.ReOpen;
begin
  IBQuery_BOOK_BOOKING.Close;
  IBQuery_BOOK_BOOKING.Open;
  IBQuery_LENDING_OF_BOOKS.Close;
  IBQuery_LENDING_OF_BOOKS.Open;
end;

procedure TForm1.Splitter1Moved(Sender: TObject);
begin
FormResize(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  IBQuery_BOOK_BOOKING.Open;
  IBQuery_LENDING_OF_BOOKS.Open;
end;

end.
