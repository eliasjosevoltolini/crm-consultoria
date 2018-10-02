program Bootstrap;

uses
  Forms,
  UFrmPrincipal in 'VisaoControle\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCRUD in 'VisaoControle\UFrmCRUD.pas' {FrmCRUD},
  UUtilitarios in 'Modelo\UUtilitarios.pas',
  UMensagens in 'Modelo\UMensagens.pas',
  UConstantes in 'Modelo\UConstantes.pas',
  UDialogo in 'Modelo\UDialogo.pas',
  UOpcaoPesquisa in 'Modelo\UOpcaoPesquisa.pas',
  UDM in 'Modelo\Persistencia\UDM.pas' {dmEntra21: TDataModule},
  UEntidade in 'Modelo\Persistencia\UEntidade.pas',
  URepositorio in 'Modelo\Persistencia\URepositorio.pas',
  URepositorioDB in 'Modelo\Persistencia\URepositorioDB.pas',
  URegraCRUD in 'Modelo\Regra\URegraCRUD.pas',
  UAgendamento in 'Modelo\Persistencia\UAgendamento.pas',
  UCliente in 'Modelo\Persistencia\UCliente.pas',
  UConsultor in 'Modelo\Persistencia\UConsultor.pas',
  URepositorioAgendamento in 'Modelo\Persistencia\URepositorioAgendamento.pas',
  URepositorioCliente in 'Modelo\Persistencia\URepositorioCliente.pas',
  URepositorioConsultor in 'Modelo\Persistencia\URepositorioConsultor.pas',
  URepositorioUsuario in 'Modelo\Persistencia\URepositorioUsuario.pas',
  UUsuario in 'Modelo\Persistencia\UUsuario.pas',
  URegraCRUDAgendamento in 'Modelo\Regra\URegraCRUDAgendamento.pas',
  URegraCRUDCliente in 'Modelo\Regra\URegraCRUDCliente.pas',
  UregraCRUDConsultor in 'Modelo\Regra\UregraCRUDConsultor.pas',
  URegraCRUDUsuario in 'Modelo\Regra\URegraCRUDUsuario.pas',
  UFrmPesquisa in 'VisaoControle\UFrmPesquisa.pas' {frmPesquisa},
  UFrmConsultor in 'VisaoControle\UFrmConsultor.pas' {FrmConsultor},
  UFrmUsuario in 'VisaoControle\UFrmUsuario.pas' {FrmUsuario},
  UFrmCliente in 'VisaoControle\UFrmCliente.pas' {FrmCliente},
  UFrmAgendamento in 'VisaoControle\UFrmAgendamento.pas' {FrmAgendamento},
  UFrmLogin in 'VisaoControle\UFrmLogin.pas' {FrmLogin},
  SysUtils,
  Controls,
  UUsuarioLogado in 'Modelo\UUsuarioLogado.pas',
  UFrmNotificacao in 'VisaoControle\UFrmNotificacao.pas' {FrmNotificacao},
  UFrmRelatorios in 'VisaoControle\UFrmRelatorios.pas' {FrmRelatorios};

{$R *.res}

begin
  {$DEFINE PROD}

  Application.Initialize;
  Application.CreateForm(TdmEntra21, dmEntra21);

  {$IFDEF PROD}
  FrmLogin := TFrmLogin.Create(nil);
  if FrmLogin.ShowModal = mrYes then
    begin
      FreeAndNil(FrmLogin);
      Application.CreateForm(TFrmPrincipal, FrmPrincipal);
      Application.Run;
    end
  else
    begin
      Application.Run;
      Application.Terminate;
    end;
  {$ELSE}
  TUsuarioLogado.Unico.RealizaLogin('admin', 'adminadmin');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
  {$ENDIF}
end.

// Cópia se der erro:
//  {$DEFINE PROD}
//
//  Application.Initialize;
//  Application.CreateForm(TdmEntra21, dmEntra21);
//
//  {$IFDEF PROD}
//  FrmLogin := TFrmLogin.Create(nil);
//  if FrmLogin.ShowModal = mrYes then
//    begin
//      FreeAndNil(FrmLogin);
//      Application.CreateForm(TFrmPrincipal, FrmPrincipal);
//      Application.Run;
//    end
//  else
//    begin
//      Application.Run;
//      Application.Terminate;
//    end;
//  {$ELSE}
//  TUsuarioLogado.Unico.RealizaLogin('admin', 'adminadmin');
//  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
//  Application.Run;
//  {$ENDIF}
