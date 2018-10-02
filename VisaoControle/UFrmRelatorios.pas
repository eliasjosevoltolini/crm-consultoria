unit UFrmRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, pngimage, ExtCtrls,
  StdCtrls;

type
  TFrmRelatorios = class(TForm)
    pnlCabecalho: TPanel;
    lbCabecalho: TLabel;
    ImCabecalho: TImage;
    gbgerarRelatorio: TGroupBox;
    pnlBotoes: TPanel;
    btnSair: TImage;
    lbSair: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorios: TFrmRelatorios;

implementation

{$R *.dfm}

procedure TFrmRelatorios.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.
