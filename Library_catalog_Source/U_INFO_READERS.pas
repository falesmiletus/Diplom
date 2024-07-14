unit U_INFO_READERS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids;

type
  TF_INFO_READERS = class(TForm)
    Panel1: TPanel;
    b_Add: TButton;
    b_Edit: TButton;
    b_Delete: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    b_Cancel: TButton;
    b_Fillter: TButton;
    e_Fillter: TEdit;
    b_Fillter_Clear: TButton;
    cb_Sort: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    b_Sort: TButton;
    procedure b_AddClick(Sender: TObject);
    procedure b_DeleteClick(Sender: TObject);
    procedure b_EditClick(Sender: TObject);
    procedure b_Fillter_ClearClick(Sender: TObject);
    procedure Constr_SQL;
    procedure b_SortClick(Sender: TObject);
    procedure b_FillterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_INFO_READERS: TF_INFO_READERS;

implementation

uses
  FB_DM, U_INFO_READERS_Add;

{$R *.dfm}

// ���������� ��������
procedure TF_INFO_READERS.b_AddClick(Sender: TObject);
begin
  // ������� ���� ����� �� ����� ����������
  F_INFO_READERS_Add.e_SURNAME.Text := '';
  F_INFO_READERS_Add.e_NAME.Text := '';
  F_INFO_READERS_Add.e_PATRONYMIC.Text := '';
  F_INFO_READERS_Add.e_ADRESS.Text := '';
  F_INFO_READERS_Add.e_TELEPHONE.Text := '';

  // ��������� �������� �����
  F_INFO_READERS_Add.ShowModal;

  if F_INFO_READERS_Add.ModalResult = mrOk then
  begin
    // ���������� ����� ������ �������� � ��
    FB_Data.ds_INFO_READERS.Insert;
    FB_Data.ds_INFO_READERSSURNAME.AsString := F_INFO_READERS_Add.e_SURNAME.Text;
    FB_Data.ds_INFO_READERSNAME.AsString := F_INFO_READERS_Add.e_NAME.Text;
    FB_Data.ds_INFO_READERSPATRONYMIC.AsString := F_INFO_READERS_Add.e_PATRONYMIC.Text;
    FB_Data.ds_INFO_READERSADRESS.AsString := F_INFO_READERS_Add.e_ADRESS.Text;
    FB_Data.ds_INFO_READERSTELEPHONE.AsString := F_INFO_READERS_Add.e_TELEPHONE.Text;
    FB_Data.ds_INFO_READERS.Post;

    // ������������� ���������� � ���������� ������
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_INFO_READERS.Close;
    FB_Data.ds_INFO_READERS.Open;
  end;
    
end;

// �������� �������� �� ��
procedure TF_INFO_READERS.b_DeleteClick(Sender: TObject);
var
  ret: integer;
begin
  // �������� �� ������� �������
  if FB_Data.ds_INFO_READERS.RecordCount = 0 then Abort;

  // ��������������� ������ �� ��������
  ret := Application.MessageBox(PChar('�� ������ ������� ������?'),'�������������',MB_YESNO + MB_ICONQUESTION);
  if ret = IDYES then
  begin
    // �������� � ������������� ����������
    FB_Data.ds_INFO_READERS.Delete;
    FB_Data.FBTransaction.CommitRetaining;
  end;

end;

// ��������� �������� � ��
procedure TF_INFO_READERS.b_EditClick(Sender: TObject);
begin
  // �������� �� ������� �������
  if FB_Data.ds_INFO_READERS.RecordCount = 0 then Abort;

  // ���������� ������� �������� ������ ���� ����� �� ����� ����������
  F_INFO_READERS_Add.e_SURNAME.Text := FB_Data.ds_INFO_READERSSURNAME.AsString;
  F_INFO_READERS_Add.e_NAME.Text := FB_Data.ds_INFO_READERSNAME.AsString;
  F_INFO_READERS_Add.e_PATRONYMIC.Text := FB_Data.ds_INFO_READERSPATRONYMIC.AsString;
  F_INFO_READERS_Add.e_ADRESS.Text := FB_Data.ds_INFO_READERSADRESS.AsString;
  F_INFO_READERS_Add.e_TELEPHONE.Text := FB_Data.ds_INFO_READERSTELEPHONE.AsString;

  // ��������� �������� �����
  F_INFO_READERS_Add.ShowModal;

  if F_INFO_READERS_Add.ModalResult = mrOk then
  begin
    // ��������� ������ �������� � ��
    FB_Data.ds_INFO_READERS.Edit;
    FB_Data.ds_INFO_READERSSURNAME.AsString := F_INFO_READERS_Add.e_SURNAME.Text;
    FB_Data.ds_INFO_READERSNAME.AsString := F_INFO_READERS_Add.e_NAME.Text;
    FB_Data.ds_INFO_READERSPATRONYMIC.AsString := F_INFO_READERS_Add.e_PATRONYMIC.Text;
    FB_Data.ds_INFO_READERSADRESS.AsString := F_INFO_READERS_Add.e_ADRESS.Text;
    FB_Data.ds_INFO_READERSTELEPHONE.AsString := F_INFO_READERS_Add.e_TELEPHONE.Text;
    FB_Data.ds_INFO_READERS.Post;

    // ������������� ���������� � ���������� ������
    FB_Data.FBTransaction.CommitRetaining;
    FB_Data.ds_INFO_READERS.Refresh;
  end;
end;

// ����� ���� ��������
procedure TF_INFO_READERS.b_Fillter_ClearClick(Sender: TObject);
begin
  e_Fillter.Text := '';
  Constr_SQL;
end;

// ������������ ������� � ������ �������� � ����������
procedure TF_INFO_READERS.Constr_SQL;
var SQL_Str: string;
begin
  // �������� ������
  SQL_Str := 'select * from INFO_READERS ';

  // �������
  if e_Fillter.Text <> '' then
  begin
    SQL_Str := SQL_Str + ' where SURNAME CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' NAME CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' PATRONYMIC CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' ADRESS CONTAINING ' + QuotedStr(e_Fillter.Text)+' or ';
    SQL_Str := SQL_Str + ' TELEPHONE CONTAINING ' + QuotedStr(e_Fillter.Text);
  end;

  // ����������
  if cb_Sort.Text <> '' then
  begin
    case cb_Sort.ItemIndex of
     0 : SQL_Str := SQL_Str + ' order by NUMBER_TICKET ';
     1 : SQL_Str := SQL_Str + ' order by SURNAME ';
     2 : SQL_Str := SQL_Str + ' order by NAME ';
     3 : SQL_Str := SQL_Str + ' order by PATRONYMIC ';
     4 : SQL_Str := SQL_Str + ' order by ADRESS ';
     5 : SQL_Str := SQL_Str + ' order by TELEPHONE ';
    end;

    if rb1.Checked then
      SQL_Str := SQL_Str + 'ASC'
    else
      SQL_Str := SQL_Str + 'DESC';

  end;

  // ������������ �������
  FB_Data.ds_INFO_READERS.Close;
  FB_Data.ds_INFO_READERS.SelectSQL.Clear;
  FB_Data.ds_INFO_READERS.SelectSQL.Add(SQL_Str);
  FB_Data.ds_INFO_READERS.Open;
end;

procedure TF_INFO_READERS.b_SortClick(Sender: TObject);
begin
  Constr_SQL;
end;

procedure TF_INFO_READERS.b_FillterClick(Sender: TObject);
begin
  Constr_SQL;
end;

end.
