unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.EditBox, FMX.NumberBox,
  FMX.Ani, FMX.ListBox, FMX.Layouts;

type
  TForm2 = class(TForm)
    FramedVertScrollBox2: TFramedVertScrollBox;
    FramedVertScrollBox1: TFramedVertScrollBox;
    ToolBar1: TToolBar;
    Label1: TLabel;
    NumberBox1: TNumberBox;
    NumberBox2: TNumberBox;
    tlabel1: TLabel;
    ToolBar2: TToolBar;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ToolBar3: TToolBar;
    GHIA: TLabel;
    ComboBox2: TComboBox;
    LA: TToolBar;
    SDF: TLabel;
    ComboBox3: TComboBox;
    ToolBar4: TToolBar;
    Label3: TLabel;
    ComboBox4: TComboBox;
    T: TToolBar;
    Label4: TLabel;
    ComboBox5: TComboBox;
    ToolBar11: TToolBar;
    Label9: TLabel;
    NumberBox6: TNumberBox;
    ToolBar9: TToolBar;
    Label7: TLabel;
    NumberBox4: TNumberBox;
    ToolBar10: TToolBar;
    Label8: TLabel;
    NumberBox5: TNumberBox;
    ToolBar7: TToolBar;
    Label5: TLabel;
    ToolBar12: TToolBar;
    Button1: TButton;
    ToolBar6: TToolBar;
    Label6: TLabel;
    NumberBox3: TNumberBox;
    ToolBar5: TToolBar;
    ComboBox6: TComboBox;
    ToolBar8: TToolBar;
    Button2: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  com1, com2, com3, com4, com5, com6: integer;
  Form2: TForm2;
  largura, altura, chapatransvision, chapafechada, guia90, guia70, guia50, eixo,
    pintura, portinhola, motor200, motor300, motor400, motor500, soleira,
    borrachasoleira, borrachaguia, eletrodo, disco, parabolt, parafuso,
    controle, cantoneira, travalamina, peso, frete, maodeobra, entrada, parcela,
    resto, preco: real;

  // iniciando variaveis

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm2.Button1Click(Sender: TObject);
begin
  // inicializando variavel
  eixo := 0;
  chapafechada := 0;
  pintura := 0;
  chapatransvision := 0;
  guia90 := 0;
  guia70 := 0;
  guia50 := 0;
  portinhola := 0;
  motor200 := 0;
  motor300 := 0;
  motor400 := 0;
  motor500 := 0;
  eletrodo := 0;
  cantoneira := 0;
  disco := 0;
  parabolt := 0;
  soleira := 0;
  borrachasoleira := 0;
  borrachaguia := 0;
  controle := 0;

  // transformando tipo
  largura := StrToFloat(NumberBox1.Text);
  altura := StrToFloat(NumberBox2.Text);
  // determinando variaveis constantes
  eletrodo := 15;
  disco := 5;
  cantoneira := 20;
  parabolt := 40;
  soleira := (largura + 0.1) * 23;
  eixo := (largura + 0.1) * 71;
  borrachasoleira := largura * 2.75;
  borrachaguia := altura * 4 * 2.3;
  travalamina := altura * 2 / 0.08;
  peso := largura * (altura + 0.6) * 15;
  frete := 60 + (20 * (largura * (altura + 0.6)));
  maodeobra := 200;
  // condicionando guia
  com1 := ComboBox2.ItemIndex;
  if (com1 = 2) then
    guia90 := ((altura + 0.3) * 2 * 22)
  else // '90mm'
    if (com1 = 1) then
      guia70 := ((altura + 0.3) * 2 * 20)
    else // '70mm
      if (com1 = 0) then
        guia50 := ((altura + 0.3) * 2 * 15.5); // '50mm'

  // condicionamendo da chapa
  com2 := ComboBox1.ItemIndex;
  if (com2 = 0) then
    chapafechada := (largura * (altura + 0.6)) * 75 // 'FECHADA'
  else
    chapatransvision := 87 * largura * (altura + 0.6);

  // condicionando pintura
  com4 := ComboBox3.ItemIndex;
  if (com4 = 1) then
    pintura := largura * (altura + 0.6) * 44; // 'CONTEM'

  // condicionando portinhola
  com5 := ComboBox5.ItemIndex;
  if (com5 = 1) then
    portinhola := 600; // 'CONTEM'

  // condicionando controle
  com3 := ComboBox4.ItemIndex;
  if (com3 = 1) then
    controle := 160
  else // 'contem 2'
    if (com3 = 2) then
      controle := 260
    else // 'contem 3'
      if (com3 = 3) then
        controle := 360
      else // 'contem 4'
        if (com3 = 4) then
          controle := 460; // 'contem 5'

  // condicionando motor

  if (peso < 200) then
    motor200 := 740
  else if (peso < 300) then
    motor300 := 810
  else if (peso < 400) then
    motor400 := 880
  else if (peso < 500) then
    motor500 := 1000
  else
    ShowMessage('tamanho utrapassa peso do motor limite');
 // ShowMessage(FloatToStr(preco));

  // somando variaveis
  preco := chapatransvision + chapafechada + guia90 + guia70 + guia50 + eixo +
    pintura + portinhola + motor200 + motor300 + motor400 + motor500 + soleira +
    borrachasoleira + borrachaguia + eletrodo + disco + parabolt + parafuso +
    controle + cantoneira + travalamina;
    preco:=(preco*0.9)+frete;

  preco := preco * 1.5;
  // condicionando forma de pagamento

  com6 := ComboBox6.ItemIndex;
  //ShowMessage(IntToStr(com6));
  if (com6 = 0) then // 'entrada com dinheiro + restante a vista'
  begin
    entrada := preco / 2;
    parcela := preco / 2;
    resto := preco / 2;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 9) then // 'entrada com desconto especial'
  begin
    preco := preco / 1.5;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(preco);
    NumberBox5.Text := '';
    NumberBox6.Text := '600';
     ShowMessage('frete= R$'+FloatToStr(frete));
  end;

  if (com6 = 1) then
  // 'entrada com cartao para 30 dias + dinheiro na instala??o'
  begin

    entrada := preco / 2 + (preco / 2 * 0.046);
    parcela := preco / 2;
    resto := preco / 2;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 2) then
  // 'entrada com cheque para 30 dias + dinheiro na instala??o'
  begin
     resto:= preco/2;
    entrada := preco / 2 + (preco / 2 * 0.046);
    parcela := preco / 2;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 3) then // 'entrada 2 vezes no cartao + dinheiro na instala??o'
  begin
    resto := preco / 2;
    entrada := preco / 2 + (preco / 2 * 0.061);
    parcela := entrada / 2;
    NumberBox6.Text := FloatToStr(resto);
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela)
  end;

  if (com6 = 4) then // 'entrada 3 vezes no cartao + dinheiro na instala??o'
  begin
    resto := preco / 2;
    entrada := preco / 2 + (preco / 2 * 0.076);
    parcela := entrada / 3;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 5) then // 'entrada 4 vezes no cartao + dinheiro na instala??o'
  begin
    resto := preco / 2;
    entrada := preco / 2 + (preco / 2 * 0.091);
    parcela := entrada / 4;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 6) then // 'entrada 5 vezes no cartao + dinheiro na instala??o'
  begin
    resto := preco / 2;
    entrada := preco / 2 + (preco / 2 * 0.106);
    parcela := entrada / 5;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 7) then // 'entrada 6 vezes no cartao + dinheiro na instala??o
  begin
    resto := preco / 2;
    entrada := preco / 2 + (preco / 2 * 0.121);
    parcela := entrada / 6;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox4.Text := FloatToStr(entrada);
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox6.Text := FloatToStr(resto);
  end;

  if (com6 = 8) then // '10 vezes no cartao em paripiranga'
  begin

    preco := preco * 1.12;
    parcela := preco / 10;
    NumberBox3.Text := FloatToStr(preco);
    NumberBox6.Text := '';
    NumberBox5.Text := FloatToStr(parcela);
    NumberBox4.Text := '';
  end;
  //ShowMessage(FloatToStr(preco));
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

end.
