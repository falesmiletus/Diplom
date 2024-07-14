unit SPR_Info_books;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TF_SPR_Info_books = class(TForm)
    Button_Panel: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SPR_Info_books: TF_SPR_Info_books;

implementation

{$R *.dfm}

end.
