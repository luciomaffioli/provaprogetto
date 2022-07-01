unit orerimandare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, cxCalendar;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    oraora: TcxClock;
    Timer1: TTimer;
    ore: TEdit;
    Label2: TLabel;
    min: TEdit;
    bottone: TButton;
    risultato: TEdit;
    Label5: TLabel;
    Label3: TLabel;
    min_pausa: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure bottoneClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

  calcolo_fare : integer;
  calcolo_now : integer;
  calcolo_finale : integer;
  calcolo_avanzo : integer;
  pausa : integer;

implementation

{$R *.dfm}

procedure TForm2.bottoneClick(Sender: TObject);
begin

calcolo_fare := StrToInt(ore.text)* 60 + StrToInt(min.text);

pausa := StrToInt(min_pausa.Text);

calcolo_now := StrToInt(FormatDateTime('hh', Now)) * 60 + StrToInt(FormatDateTime('nn', Now));    //FormatDateTime('hh', Now)
                                                                                                  // per mostrare le ore
                                                                                                  // 'nn' per i minuti
calcolo_finale := round((calcolo_fare + calcolo_now + pausa) / 60);
calcolo_avanzo := (calcolo_fare + calcolo_now + pausa) mod 60;

if calcolo_avanzo = 0 then
begin
risultato.Text := inttostr(calcolo_finale) + ':00';
end
else if calcolo_avanzo < 10 then
begin
risultato.Text := inttostr(calcolo_finale) + ':0' + inttostr(calcolo_avanzo);
end
else
begin
  risultato.Text := inttostr(calcolo_finale) + ':' + inttostr(calcolo_avanzo);
end;

end;



procedure TForm2.Timer1Timer(Sender: TObject);
begin
oraora.time := now;
end;

end.
