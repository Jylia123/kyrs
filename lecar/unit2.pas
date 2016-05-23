unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, DbCtrls, Menus, sqldb, mysql55conn, db,Unit3,Unit4;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;

    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a:string;
begin
  if (Edit3.Text='')  then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from spravochnik where simptomi="'+Edit2.Text+'"');
  SQLQuery1.Active:=True;
  end;
   if (Edit2.Text='')   then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from spravochnik where simptomi="'+Edit3.Text+'"');
  SQLQuery1.Active:=True;
  end;
      if not ((Edit2.Text='')and(Edit3.Text=''))    then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from spravochnik where simptomi="'+Edit3.Text+'" or simptomi="'+Edit2.Text+'"');
  SQLQuery1.Active:=True;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var b:string;
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  b:= format('select * from lecar.spravochnik where Bolezn = ("%s")',[Edit1.Text]);
  SQLQuery1.SQL.Add(b);
  SQLQuery1.Active:=True;
end;

procedure TForm1.Button3Click(Sender: TObject);
  var b:string;
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  b:= format('select * from lecar.spravochnik where Preparati = ("%s")',[Edit5.Text]);
  SQLQuery1.SQL.Add(b);
  SQLQuery1.Active:=True;
end;



procedure TForm1.Button4Click(Sender: TObject);
  var a:string;
  begin
    a:='select * from lecar.spravochnik where id>=1';
    Form1.SQLQuery1.Close;
    Form1.SQLQuery1.SQL.Clear;
    Form1.SQLQuery1.SQL.Add(a);
    Form1.SQLQuery1.ExecSQL;
    Form1.SQLQuery1.Active:=True;
  end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.Show;
end;


procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Edit5Change(Sender: TObject);
begin

end;

procedure TForm1.Edit8Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Unit4.Form3.Show;

end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
      close;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
   Form1.Color:=$00D2D2FF;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
   Form1.Color:=$00FFC1C1;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Form1.Color:=$0080FFFF;
end;









end.

