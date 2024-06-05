unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit11: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('insert into kategori values(null,"'+Edit2.Text+'")');
  DataModule4.ZQuery1.ExecSQL;

  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('update kategori set Name= "'+Edit2.Text+'" where Id= "'+a+'"');
  DataModule4.ZQuery1.ExecSQL;

  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;
  ShowMessage('Data Berhasil diUpdate!');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text := DataModule4.ZQuery1.Fields[1].AsString;
  a := DataModule4.ZQuery1.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('delete from kategori where Id= "'+a+'"');
  DataModule4.ZQuery1.ExecSQL;

  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

end.
