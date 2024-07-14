unit U_Report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TF_Report = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button_Panel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    GroupBox4: TGroupBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Report: TF_Report;

implementation

{$R *.dfm}

// Доступность CheckBox в зависимости от выбранного отчета
procedure TF_Report.RadioButton1Click(Sender: TObject);
begin
  GroupBox1.Enabled := True;
  GroupBox2.Enabled := False;
  GroupBox3.Enabled := False;
  GroupBox4.Enabled := False;
end;

// Доступность CheckBox в зависимости от выбранного отчета
procedure TF_Report.RadioButton2Click(Sender: TObject);
begin
  GroupBox1.Enabled := False;
  GroupBox2.Enabled := True;
  GroupBox3.Enabled := False;
  GroupBox4.Enabled := False;
end;

// Доступность CheckBox в зависимости от выбранного отчета
procedure TF_Report.RadioButton3Click(Sender: TObject);
begin
  GroupBox1.Enabled := False;
  GroupBox2.Enabled := False;
  GroupBox3.Enabled := True;
  GroupBox4.Enabled := False;
end;

// Доступность CheckBox в зависимости от выбранного отчета
procedure TF_Report.RadioButton4Click(Sender: TObject);
begin
  GroupBox1.Enabled := False;
  GroupBox2.Enabled := False;
  GroupBox3.Enabled := False;
  GroupBox4.Enabled := True;
end;

end.
