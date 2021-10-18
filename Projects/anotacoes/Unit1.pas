unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FMX.Controls.Presentation, FMX.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FireDAC.Comp.DataSet,
  Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, Data.Bind.Components,
  Data.Bind.DBScope, FMX.ExtCtrls;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    ListView1: TListView;
    FDConnection1: TFDConnection;
    FDQueryCriaTabela: TFDQuery;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var descricao2: string;
begin
  descricao2:= InputBox('digite sua Anotacao','','');
  try
     if (descricao2.Trim <> 'null') then
     begin
       FDQuery2.ParamByName('descricao').AsString := descricao2;
       FDQuery2.ExecSQL();
       FDQuery2.Close();
       FDQuery2.Open();
     end;
     showmessage('conseguiu');

  except
     on e : exception do
          begin
            ShowMessage('ola mundo');
          end;
  end;
end;

end.
