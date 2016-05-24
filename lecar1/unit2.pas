unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, mysql55conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Try
 if not ((Edit1.Text='') and (Edit2.Text='') and (Edit3.Text='') and (Edit4.Text='') and (Edit5.Text=''))then begin
 SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('INSERT INTO `lecar`.`spravochnik` (`Bolezn`, `Simptomi`, `Preparati`,`Dozirovka`, `Zamenyaemiepreparati`) VALUES ("'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Select * from spravochnik');
SQLQuery1.Open;
end;
 except
   Application.MessageBox('Ошибка','error');
 end;
end;

procedure TForm2.Button2Click(Sender: TObject);
    var i:String;
begin
i:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;

SQLQuery1.SQL.Add('Delete from  `lecar`.`spravochnik` where id = "'+i+'"');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Select * from spravochnik');
SQLQuery1.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.MenuItem1Click(Sender: TObject);
begin
  close;
end;

end.

