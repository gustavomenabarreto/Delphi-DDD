unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,  Dialogs, ActnList, Menus, ComCtrls,
  XPMan;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    miFile: TMenuItem;
    miExit: TMenuItem;
    miHelp: TMenuItem;
    ActionList: TActionList;
    actClose: TAction;
    actAbout: TAction;
    miAbout: TMenuItem;
    StatusBar: TStatusBar;
    miDevelopment: TMenuItem;
    actTest: TAction;
    XPManifest: TXPManifest;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OnAction(Sender: TObject);
  protected
  private
    FOnAboutActionExecute: TNotifyEvent;
    FOnCloseActionExecute: TNotifyEvent;
    FOnTestActionExecute: TNotifyEvent;
  public
    property OnAboutActionExecute: TNotifyEvent read FOnAboutActionExecute write FOnAboutActionExecute;
    property OnCloseActionExecute: TNotifyEvent read FOnCloseActionExecute write FOnCloseActionExecute;
    property OnTestActionExecute: TNotifyEvent read FOnTestActionExecute write FOnTestActionExecute;
  end;

var MainForm: TMainForm;  
implementation

{$R *.dfm}

procedure TMainForm.OnAction(Sender: TObject);
begin
  if (Sender = actAbout) and Assigned (FOnAboutActionExecute) then FOnAboutActionExecute (Self);
  if (Sender = actClose) and Assigned (FOnCloseActionExecute) then OnCloseActionExecute (Self);
  if (Sender = actTest) and Assigned (FOnTestActionExecute) then OnTestActionExecute (Self);
end;

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr (27) then actClose.Execute;
end;


end.



