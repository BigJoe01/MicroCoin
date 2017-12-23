program MicroCoinWalletLazarus;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

uses
{$IFnDEF FPC}
{$ELSE}
  {$IFDEF LINUX}cthreads,{$ENDIF}
  Interfaces,
{$ENDIF}
  Forms,
  UBlockChain in 'Units\MicroCoin\UBlockChain.pas',
  UCrypto in 'Units\MicroCoin\UCrypto.pas',
  UTime in 'Units\MicroCoin\UTime.pas',
  UWalletKeys in 'Units\MicroCoin\UWalletKeys.pas',
  UOpTransaction in 'Units\MicroCoin\UOpTransaction.pas',
  UNetProtocol in 'Units\MicroCoin\UNetProtocol.pas',
  UAccounts in 'Units\MicroCoin\UAccounts.pas',
  UConst in 'Units\MicroCoin\UConst.pas',
  UThread in 'Units\MicroCoin\UThread.pas',
  ULog in 'Units\MicroCoin\ULog.pas',
  UNode in 'Units\MicroCoin\UNode.pas',
  UECIES in 'Units\MicroCoin\UECIES.pas',
  UAES in 'Units\MicroCoin\UAES.pas',
  UFRMWallet in 'Units\Forms\UFRMWallet.pas' {FRMWallet},
  UFileStorage in 'Units\MicroCoin\UFileStorage.pas',
  UFolderHelper in 'Units\Utils\UFolderHelper.pas',
  UAppParams in 'Units\Utils\UAppParams.pas',
  UGridUtils in 'Units\Utils\UGridUtils.pas',
  UFRMMicroCoinWalletConfig in 'Units\Forms\UFRMMicroCoinWalletConfig.pas' {FRMMicroCoinWalletConfig},
  UFRMAbout in 'Units\Forms\UFRMAbout.pas' {FRMAbout},
  UFRMOperation in 'Units\Forms\UFRMOperation.pas' {FRMOperation},
  UFRMWalletKeys in 'Units\Forms\UFRMWalletKeys.pas' {FRMWalletKeys},
  UFRMNewPrivateKeyType in 'Units\Forms\UFRMNewPrivateKeyType.pas' {FRMNewPrivateKeyType},
  UFRMPayloadDecoder in 'Units\Forms\UFRMPayloadDecoder.pas' {FRMPayloadDecoder},
  UFRMNodesIp in 'Units\Forms\UFRMNodesIp.pas' {FRMNodesIp},
  UTCPIP in 'Units\MicroCoin\UTCPIP.pas',
  UJSONFunctions in 'Units\Utils\UJSONFunctions.pas',
  URPC in 'Units\MicroCoin\URPC.pas',
  UPoolMining in 'Units\MicroCoin\UPoolMining.pas',
  UOpenSSL in 'Units\MicroCoin\UOpenSSL.pas',
  LCLTranslator,
  UOpenSSLdef in 'Units\MicroCoin\UOpenSSLdef.pas',
  sysutils{$IFDEF WINDOWS},windows{$ENDIF}

;

{.$R *.res}
{$R *.res}
var c : char;
begin
  {$IFDEF WINDOWS}
  if GetSystemDefaultLCID=1038 then begin
    SetDefaultLang('hu');
    GetLocaleFormatSettings(GetUserDefaultLCID, DefaultFormatSettings);
    DefaultFormatSettings.DecimalSeparator := '.';
    DefaultFormatSettings.ThousandSeparator := ',';
  end;
  {$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Micro Coin Wallet, Miner & Explorer';
  Application.CreateForm(TFRMWallet, FRMWallet);
  Application.Run;
end.
