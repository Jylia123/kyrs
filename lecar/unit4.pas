unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus;

type

  { TForm3 }

  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Image1Click(Sender: TObject);
begin

end;

procedure TForm3.Memo1Change(Sender: TObject);
begin

end;

procedure TForm3.MenuItem1Click(Sender: TObject);
begin
       Memo1.Clear;
  Memo1.Lines.Add('Версия');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Справочник лекаря можно применять не обращаясь к врачам.Из программы можно узнать название болезни при отпределенных симптомах,каким препаратом можно вылечить данную болезнь,какую дозировку использовать и чем можно заменить.');
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
      Memo1.Clear;
  Memo1.Lines.Add('Версия');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Справочник лекаря можно применять не обращаясь к врачам.Из программы можно узнать название болезни при отпределенных симптомах,каким препаратом можно вылечить данную болезнь,какую дозировку использовать и чем можно заменить');
end;

end.

