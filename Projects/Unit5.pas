unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.Controls.Presentation;

type
  TForm5 = class(TForm)
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    ToolBar8: TToolBar;
    ToolBar9: TToolBar;
    Label1: TLabel;
    NumberBox1: TNumberBox;
    Label2: TLabel;
    NumberBox2: TNumberBox;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NumberBox3: TNumberBox;
    NumberBox4: TNumberBox;
    NumberBox5: TNumberBox;
    NumberBox6: TNumberBox;
    ToolBar10: TToolBar;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  largura, altura, met2020, met2525, met3030, met4040, met5030, preco,entrada, parcela, resto,
  com1, com2,com12, quantidade, espassamento, eletrodo, disco, maodeobra: real;

implementation

{$R *.fmx}

procedure TForm5.Button1Click(Sender: TObject);
begin
 largura:= StrToFloat(NumberBox1.Text);
 altura:= StrToFloat(NumberBox2.Text);
   com1:=ComboBox1.ItemIndex;
   com2:=ComboBox2.ItemIndex;

     //inicializando variaveis
    met2020:=0; met2525:=0; met3030:=0; met4040:=0; met5030:=0; preco:=0;entrada:=0; parcela:=0; resto:=0;
  com1:=0; com2:=0;com12:=0; quantidade:=0; espassamento:=0; eletrodo:=0; disco:=0;maodeobra:=5+(largura*altura*20);
      com1:=ComboBox1.ItemIndex;
 if (com1=0) then
 begin
    repeat
     quantidade:=quantidade+1;
     espassamento:= (largura-0.02)/quantidade;
    until (espassamento<0.12) ;
  espassamento:=espassamento-0.02;
  met2020:=met2020+(quantidade*altura)+((largura*2)+(altura*2));
  eletrodo:= quantidade*4/8+2;
  disco:=quantidade*0.2;
 end;

 if (com1=1) then
 begin
    repeat
     quantidade:=quantidade+1;
     espassamento:= (largura-0.025)/quantidade;
    until (espassamento<0.125) ;
  espassamento:=espassamento-0.025;
  met2525:=met2525+(quantidade*altura)+((largura*2)+(altura*2));
  eletrodo:= quantidade*4/7+2;
  disco:=quantidade*0.25;
 end;

 if (com1=2) then
 begin
    repeat
     quantidade:=quantidade+1;
     espassamento:= (largura-0.03)/quantidade;
    until (espassamento<0.13) ;
  espassamento:=espassamento-0.03;
  met3030:=met3030+(quantidade*altura)+((largura*2)+(altura*2));
 eletrodo:= quantidade*4/6+2;
 disco:=quantidade*0.3;
 end;

 if (com1=3) then
 begin
    repeat
     quantidade:=quantidade+1;
     espassamento:= (largura-0.04)/quantidade;
    until (espassamento<0.14) ;
  espassamento:=espassamento-0.04;
  met4040:=met4040+(quantidade*altura)+((largura*2)+(altura*2));
 eletrodo := quantidade*4/5+2;
 disco:=quantidade*0.4;
 end;

 if (com1=4) then
 begin
    repeat
     quantidade:=quantidade+1;
     espassamento:= (largura-0.05)/quantidade;
    until (espassamento<0.15) ;
  espassamento:=espassamento-0.05;
  met5030:=met5030+(quantidade*altura)+((largura*2)+(altura*2));
  eletrodo:=quantidade*4/3+2;
  disco:=quantidade*0.5;

 end;

  preco:=  (met5030/6*51)+  (met4040*50/6)+  (met3030*40/6)+
    (met2525*33/6)+ (met2020*25/6)+(eletrodo*0.52)+ disco;
          preco:=(preco*2)+maodeobra;

    com12:=ComboBox2.ItemIndex;
     if (Com12=0) then    //boBox6.Text = 'entrada com dinheiro + restante a vista'
         begin
           entrada:= preco/2;
           parcela:=preco/2;
           resto:= preco/2;
            NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
             NumberBox6.Text:= FloatToStr(resto);
         end;

         if (Com12=9) then  //boBox6.Text = 'entrada com desconto especial'
         begin

          preco:= (preco-maodeobra)/2;
           NumberBox3.Text:=FloatToStr(preco);
           NumberBox4.Text:= FloatToStr(preco);
             NumberBox5.Text:= '';
             NumberBox6.Text:= '';
           end;

          if (Com12=1) then //boBox6.Text = 'entrada com cartao para 30 dias + dinheiro na instala??o'
         begin

           entrada:= preco/2+(preco/2*0.046);
           parcela:=preco/2;
           resto:= preco/2;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
             NumberBox6.Text:= FloatToStr(resto);
         end;

          if (Com12=2) then   //boBox6.Text = 'entrada com cheque para 30 dias + dinheiro na instala??o'
         begin

           entrada:= preco/2+(preco/2*0.046);
           parcela:=preco/2;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
         end;

         if (Com12=3) then //boBox6.Text = 'entrada 2 vezes no cartao + dinheiro na instala??o'
         begin

            resto:=preco/2;
           entrada:= preco/2+(preco/2*0.061);
           parcela:=entrada/2;
            NumberBox6.Text:= FloatToStr(resto);
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela)
            end;

         if (Com12=4) then   //boBox6.Text = 'entrada 3 vezes no cartao + dinheiro na instala??o'
         begin

           resto:=preco/2;
           entrada:= preco/2+(preco/2*0.076);
           parcela:=entrada/3;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
             NumberBox6.Text:= FloatToStr(resto);
         end;

         if (Com12=5) then  //boBox6.Text = 'entrada 4 vezes no cartao + dinheiro na instala??o'
         begin

           resto:=preco/2;
           entrada:= preco/2+(preco/2*0.091);
           parcela:=entrada/4;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
             NumberBox6.Text:= FloatToStr(resto);
         end;

          if (Com12=6) then  //boBox6.Text = 'entrada 5 vezes no cartao + dinheiro na instala??o'
         begin

           resto:=preco/2;
           entrada:= preco/2+(preco/2*0.106);
           parcela:=entrada/5;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
             NumberBox6.Text:= FloatToStr(resto);
         end;

          if (Com12=7) then  //boBox6.Text = 'entrada 6 vezes no cartao + dinheiro na instala??o'
         begin

            resto:=preco/2;
           entrada:= preco/2+(preco/2*0.121);
           parcela:=entrada/6;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:= FloatToStr(entrada);
             NumberBox5.Text:= floattoStr(parcela);
             NumberBox6.Text:= FloatToStr(resto);
         end;

          if (Com12=8) then     //boBox6.Text = '10 vezes no cartao em paripiranga'
         begin
            preco:= preco*1.12;
            parcela:=preco/10;
             NumberBox3.Text:=FloatToStr(preco);
             NumberBox4.Text:='';
             NumberBox5.Text:=FloatToStr(parcela);
             NumberBox6.Text:= '';
         end;

 // showmessage(FloatToStr(maodeobra));
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
close;
end;

end.
