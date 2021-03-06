unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListBox;

type
  TPortao2Bandas = class(TForm)
    FramedVertScrollBox1: TFramedVertScrollBox;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ToolBar3: TToolBar;
    Label4: TLabel;
    ComboBox3: TComboBox;
    ToolBar4: TToolBar;
    Label5: TLabel;
    ComboBox5: TComboBox;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    Label10: TLabel;
    ToolBar8: TToolBar;
    ComboBox9: TComboBox;
    ToolBar9: TToolBar;
    Buton: TButton;
    ToolBar10: TToolBar;
    Label11: TLabel;
    NumberBox3: TNumberBox;
    ToolBar11: TToolBar;
    Label12: TLabel;
    NumberBox4: TNumberBox;
    ToolBar12: TToolBar;
    Label13: TLabel;
    NumberBox5: TNumberBox;
    ToolBar13: TToolBar;
    Label14: TLabel;
    NumberBox6: TNumberBox;
    ToolBar14: TToolBar;
    ToolBar15: TToolBar;
    ToolBar16: TToolBar;
    ToolBar17: TToolBar;
    Label1: TLabel;
    NumberBox1: TNumberBox;
    labelll: TLabel;
    NumberBox2: TNumberBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    ComboBox4: TComboBox;
    Label7: TLabel;
    ComboBox6: TComboBox;
    ToolBar5: TToolBar;
    Label9: TLabel;
    ComboBox8: TComboBox;
    Label8: TLabel;
    ComboBox7: TComboBox;
    Button1: TButton;
    procedure ButonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Portao2Bandas: TPortao2Bandas;
  largura, altura,

  met5050, met5030G,  met5030,   met4040,  met4020,  met3030,  met3020,
  met2525,  met2020, rodana,  guia,   puxador,
  cantoneira,  eletrodo,  pintura,  motor,  maodeobra,  vergalhao, barrachata,
  discoflep,  disco12,  disco7,   massaplas,  perfil,  gonso, fechadura, tubo,
  espassamento, preco, entrada, parcela, resto: real;
   com1, com2, com3,quantidade, com13: Integer ;
implementation

{$R *.fmx}

procedure TPortao2Bandas.ButonClick(Sender: TObject);
begin

// transformando edits
largura:=StrToFloat(NumberBox1.text);
altura:= Strtofloat(NumberBox2.text);
//iniciando variaveis

  met5050:=0; met5030G:=0;  met5030:=0;   met4040:=0;  met4020:=0;  met3030:=0;  met3020:=0;
  met2525:=0;  met2020:=0; rodana:=0;  guia:=0;   puxador:=0;
  cantoneira:=0;  eletrodo:=0;  pintura:=0;  motor:=0;  maodeobra:=0;  vergalhao:=0; barrachata:=0;
  discoflep:=0;  disco12:=0;  disco7:=0;   massaplas:=0;  perfil:=0;  gonso:=0; fechadura:=0;
  quantidade:=1; tubo:=0;
//definindo variaveis sem condi??o
eletrodo:= (largura*6)+12;
discoflep:=largura*0.05;
disco12:= (largura*0.05);
disco7:=largura/3;
vergalhao:=(largura*0.13*2+2);
barrachata:= altura/6;
maodeobra:=12*largura*altura;

// condicionando abertura
com3:=ComboBox3.ItemIndex;
if (Com3=2) then    // 'Para fora e para dentro'
    tubo:=altura*2 else cantoneira:=2*altura;
    if (Com3=2) then   //'Para fora e para dentro'
    gonso:=9 else gonso:=0;



//condicionando metalon do quadrado

 if (ComboBox7.ItemIndex=0) then
 met5050:=((largura*2)+(altura*4));
 if (ComboBox7.ItemIndex=1) then
 met4040:=  ((largura*2)+(altura*4));
 if (ComboBox7.ItemIndex=2) then
 met5030G:=   ((largura*2)+(altura*4));
 if (ComboBox7.ItemIndex=3) then
 met5030:= ((largura*2)+(altura*4));
 if (ComboBox7.ItemIndex=4) then
 met3030:= ((largura*2)+(altura*4));
 //condicionando pintura
 if (ComboBox5.ItemIndex=1) then
 pintura:=39.5*largura*altura;
 //condicionando fechadura
 if (ComboBox4.ItemIndex=1) then
 fechadura:=1 else fechadura:=fechadura/8;
  // condicionando puxador
  if (ComboBox6.ItemIndex=2) then
  puxador:=15;
   if (ComboBox6.ItemIndex=1) then
  puxador:=60;
  //condicionando porta integrada
  if (ComboBox1.ItemIndex=1) then
      begin
      // metalon da porta
       if (ComboBox7.ItemIndex=0) then
       met5050:=met5050+((altura*3+2));
       if (ComboBox7.ItemIndex=1) then
       met4040:=  met4040+((altura*3+2));
       if (ComboBox7.ItemIndex=2) then
       met5030G:= met5030G+((altura*3+2));
       if (ComboBox7.ItemIndex=3) then
       met5030:= met5030+((altura*3+2));
       if (ComboBox7.ItemIndex=4) then
       met3030:= met3030+((altura*3+2));
       eletrodo:=eletrodo+8;
       barrachata:= barrachata*2.5;
       gonso:=gonso+3;
       fechadura:= fechadura+1;
       maodeobra:=maodeobra+40;
      end;

// condicionando modelo 1
if (ComboBox2.ItemIndex=0) then
    begin
    perfil:=largura*altura;
    end;

    //condicionando modelo 2
    if (ComboBox2.ItemIndex=1) then
    begin
      perfil:=largura*altura/2;
     //metalon da divisao
       if (ComboBox9.ItemIndex=0) then
       met5050:=met5050+(largura);
       if (ComboBox9.ItemIndex=1) then
       met4040:=  met4040+(largura);
       if (ComboBox9.ItemIndex=2) then
       met5030G:= met5030G+(largura);
       if (ComboBox9.ItemIndex=3) then
       met5030:= met5030+(largura);
       if (ComboBox9.ItemIndex=4) then
       met3030:= met3030+(largura);

    // metalon interno
       if (ComboBox8.ItemIndex=0) and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       eletrodo:=eletrodo+(quantidade);
       disco12:=disco12+((largura*0.002));
       maodeobra:=maodeobra+(largura*altura*7);

    end;

    //condicionando modelo 3
    if (ComboBox2.ItemIndex=2) then
    begin
       perfil:=largura*altura/2;
     //metalon da divisao
       if (ComboBox7.ItemIndex=0) then
       met5050:=met5050+(largura)+altura/2;;
       if (ComboBox7.ItemIndex=1) then
       met4040:=  met4040+(largura)+altura/2;;
       if (ComboBox7.ItemIndex=2) then
       met5030G:= met5030G+(largura)+altura/2;;
       if (ComboBox7.ItemIndex=3) then
       met5030:= met5030+(largura)+altura/2;
       if (ComboBox7.ItemIndex=4) then
       met3030:= met3030+(largura)+altura/2;;

    // metalon interno
       if (ComboBox8.ItemIndex=0)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       //................................
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       //***********************
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       //*************************************
       if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       eletrodo:=eletrodo+(quantidade*1.5);
       disco12:=disco12+((largura*0.002)*3);
       maodeobra:=maodeobra+(largura*altura*11);
    end;

    //condicionando modelo 4
    if (ComboBox2.ItemIndex=3) then
    begin
     perfil:=largura*altura/1.5;
     //metalon da divisao
       if (ComboBox9.ItemIndex=0) then
       met5050:=met5050+((largura+altura));
       if (ComboBox9.ItemIndex=1) then
       met4040:=  met4040+((largura+altura));
       if (ComboBox9.ItemIndex=2) then
       met5030G:= met5030G+((altura+largura));
       if (ComboBox9.ItemIndex=3) then
       met5030:= met5030+((largura+altura));
       if (ComboBox9.ItemIndex=4) then
       met3030:= met3030+((largura+altura));

    // metalon interno
       if (ComboBox8.ItemIndex=0)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       eletrodo:=eletrodo+(quantidade+5);
       disco12:=disco12+((largura*0.002)*4);
       maodeobra:=maodeobra+(largura*altura*15);
    end;
    //modelo de port?o 5
    if (ComboBox2.ItemIndex=4) then
    begin
    perfil:=largura*altura/1.3;
     //metalon da divisao
       if (ComboBox9.ItemIndex=0) then
       met5050:=met5050+((largura+altura)*2);
       if (ComboBox9.ItemIndex=1) then
       met4040:=  met4040+(largura+altura)*2/6;
       if (ComboBox9.ItemIndex=2) then
       met5030G:= met5030G+((altura+largura)*2);
       if (ComboBox9.ItemIndex=3) then
       met5030:= met5030+((largura+altura)*2);
       if (ComboBox9.ItemIndex=4) then
       met3030:= met3030+((largura+altura)*2);

    // metalon interno
       if (ComboBox8.ItemIndex=0)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       eletrodo:=eletrodo+(quantidade+5);
       disco12:=disco12+((largura*0.002)*3);
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+(largura/3);
       end;

        //modelo de port?o 6
    if (ComboBox2.ItemIndex=5) then
    begin
    perfil:=largura*altura/2;
     //metalon da divisao
       if (ComboBox9.ItemIndex=0) then
       met5050:=met5050+((largura+altura)*2);
       if (ComboBox9.ItemIndex=1) then
       met4040:=  met4040+(largura+altura)*2;
       if (ComboBox9.ItemIndex=2) then
       met5030G:= met5030G+((altura+largura)*2);
       if (ComboBox9.ItemIndex=3) then
       met5030:= met5030+((largura+altura)*2);
       if (ComboBox9.ItemIndex=4) then
       met3030:= met3030+((largura+altura)*2);

    // metalon interno
       if (ComboBox8.ItemIndex=0)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=8)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=2)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=3)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=4)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if (ComboBox8.ItemIndex=5)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=6)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=7)and (ComboBox9.ItemIndex=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       eletrodo:=eletrodo+(quantidade+5);
       disco12:=disco12+((largura*0.002)*3);
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+(largura/3);
    end;

         //modelo de port?o 7
    if (ComboBox2.ItemIndex=6) then
    begin
     perfil:=largura*altura;
     //metalon da divisao
       if (ComboBox8.ItemIndex=0) then
       met5050:=met5050+(sqrt(((largura*largura)+(altura*altura)))*10);
       if (ComboBox8.ItemIndex=1) then
       met4040:=  met4040+(sqrt(((largura*largura)+(altura*altura)))*10);
       if (ComboBox8.ItemIndex=2) then
       met5030G:= met5030G+(sqrt(((largura*largura)+(altura*altura)))*10);
       if (ComboBox8.ItemIndex=3) then
       met5030:= met5030+(sqrt(((largura*largura)+(altura*altura)))*10);
       if (ComboBox8.ItemIndex=4) then
       met3030:= met3030+(sqrt(((largura*largura)+(altura*altura)))*10);
        eletrodo:=eletrodo+20;
       disco12:=disco12+((largura*0.002)*3);
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+largura;
    end;

    //modelo de port?o 8
    if (ComboBox2.ItemIndex=7) then
    begin
     perfil:=largura*altura/1.3;
     //metalon da interno
      if (ComboBox8.ItemIndex=0) then
      begin
       met5050:=met5050+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=1) then
       begin
       met4040:=met4040+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=2) then
       begin
       met5030G:=met5030G+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=3) then
       begin
       met5030:=met5030+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met5030:=met5030+(quantidade*altura/2);
       end;
       if (ComboBox8.ItemIndex=4) then
       begin
       met3030:=met3030+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met3030:=met3030+(quantidade*altura/2);
            eletrodo:=eletrodo+(quantidade+6);
       disco12:=disco12+((largura*0.008));
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+(largura*1.5);
       end;
    end;

      //modelo de port?o 9
    if (ComboBox2.ItemIndex=8) then
    begin
     perfil:=largura*altura/2;
     //metalon da interno
      if (ComboBox8.ItemIndex=0) then
       begin
       met5050:=met5050+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met5050:=met5050+altura+((quantidade*altura/2)*3);
       end;
       if (ComboBox8.ItemIndex=1) then
       begin
       met4040:=met4040+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met4040:=met4040+altura+(quantidade*altura/2)*3;
       end;
       if (ComboBox8.ItemIndex=2) then
       begin
       met5030G:=met5030G+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met5030G:=met5030G+altura+(quantidade*altura/2)*3;
       end;
       if (ComboBox8.ItemIndex=3) then
       begin
       met5030:=met5030+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met5030:=met5030+altura+(quantidade*altura/2)*3;
       end;
       if (ComboBox8.ItemIndex=4) then
       begin
       met3030:=met3030+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met3030:=met3030+altura+(quantidade*altura/2)*3;
            eletrodo:=eletrodo+(quantidade*4);
       disco12:=disco12+((largura*0.008));
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+(largura);
       end;

    end;

     //modelo de port?o 10
    if (ComboBox2.ItemIndex=9) then
    begin
     perfil:=largura*altura/1.7;
     //metalon da interno
      if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+((largura*3*1.15)+(altura*7));
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+((largura*3*1.15)+(altura*7));
      if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+((largura*3*1.15)+(altura*7));
      if (ComboBox8.ItemIndex=3) then
       met5030:=met5030+((largura*3*1.15)+(altura*7));
       if (ComboBox8.ItemIndex=4) then
       met3030:=met3030+((largura*3*1.15)+(altura*7));
        eletrodo:=eletrodo+19;
       disco12:=disco12+((largura*0.008));
       maodeobra:=maodeobra+(largura*altura*12);
       disco7:=disco7+(altura*1.5);
    end;
    //modelo de port?o 11
    if (ComboBox2.ItemIndex=10) then
    begin
     perfil:=largura*altura;
     if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
      if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
      if (ComboBox8.ItemIndex=3) then
       met5030:=met5030+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
       if (ComboBox8.ItemIndex=4) then
       met3030:=met3030+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
        eletrodo:=(eletrodo*3)+8+(largura*5);
       disco12:=disco12+((largura*0.007));
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+(altura*1.5);
    end;

    //modelo de port?o 12
    if (ComboBox2.ItemIndex=11) then
    begin
     perfil:=largura*altura;
     if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+(largura*2)+(altura*2);
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+(largura*2)+(altura*2);
      if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+(largura*2)+(altura*2);
      if (ComboBox8.ItemIndex=3) then
       met5030:=met5030+(largura*2)+(altura*2);
       if (ComboBox8.ItemIndex=4) then
       met3030:=met3030+(largura*2)+(altura*2);
        eletrodo:=(eletrodo*2);
       disco12:=disco12+((largura*0.002));
       maodeobra:=maodeobra+(largura*altura*10);
       disco7:=disco7*1.5;

    end;

     //modelo de port?o 13
    if (ComboBox2.ItemIndex=12) then
    begin
     perfil:=largura*altura;
       if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+(largura*2.5)+(altura);
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+(largura*2.5)+(altura);
       if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+(largura*2.5)+(altura);
       if (ComboBox8.ItemIndex=3) then
      met5030:=met5030+(largura*2.5)+(altura);
       if (ComboBox8.ItemIndex=4) then
      met3030:=met3030+(largura*2.5)+(altura);
      eletrodo:=(eletrodo*2);
      disco12:=disco12+((largura*0.003));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*3;
     end;

     //modelo de port?o 13
    if (ComboBox2.ItemIndex=12) then
    begin
     perfil:=largura*altura;
       if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+(largura*2.2)+altura;
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+(largura*2.2)+altura;
       if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+(largura*2.2)+altura;
       if (ComboBox8.ItemIndex=3) then
      met5030:=met5030+(largura*2.2)+altura;
       if (ComboBox8.ItemIndex=4) then
      met3030:=met3030+(largura*2.2)+altura;
      eletrodo:=(eletrodo*2);
      disco12:=disco12+((largura*0.003));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*3;
     end;

        //modelo de port?o 14
    if (ComboBox2.ItemIndex=13) then
    begin
     perfil:=largura*(altura-0.1);
       if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+(largura*2.2);
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+(largura*2.2);
       if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+(largura*2.2);
       if (ComboBox8.ItemIndex=3) then
      met5030:=met5030+(largura*2.2);
       if (ComboBox8.ItemIndex=4) then
      met3030:=met3030+(largura*2.2);
      eletrodo:=eletrodo+4;
      disco12:=disco12+((largura*0.001));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*1.1;
     end;

       //modelo de port?o 15
    if (ComboBox2.ItemIndex=14) then
    begin
     perfil:=largura*altura;
       if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+(largura*4)+(altura*2);
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+(largura*4)+(altura*2);
       if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+(largura*4)+(altura*2);
       if (ComboBox8.ItemIndex=3) then
      met5030:=met5030+(largura*4)+(altura*2);
       if (ComboBox8.ItemIndex=4) then
      met3030:=met3030+(largura*4)+(altura*2);
      met2020:=3.2;
      eletrodo:=eletrodo+20;
      disco12:=disco12+((largura*0.008));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*1.1;
     end;

       //modelo de port?o 16
    if (ComboBox2.ItemIndex=14) then
    begin
     perfil:=largura*altura;
       if (ComboBox8.ItemIndex=0) then
      met5050:=met5050+((largura-1)*5)+(altura*2);
       if (ComboBox8.ItemIndex=1) then
      met4040:=met4040+((largura-1)*5)+(altura*2);
       if (ComboBox8.ItemIndex=2) then
      met5030G:=met5030G+((largura-1)*5)+(altura*2);
       if (ComboBox8.ItemIndex=3) then
      met5030:=met5030+((largura-1)*5)+(altura*2);
       if (ComboBox8.ItemIndex=4) then
      met3030:=met3030+((largura-1)*5)+(altura*2);
      met2020:=altura/0.16;
      eletrodo:=eletrodo+20;
      disco12:=disco12+((largura*0.008));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*1.1;
     end;




    // somando variaveis
  preco:= (met5050*80/6)+ (met5030G*63/6)+ (met5030/6*51)+  (met4040*50/6)+ (met4020*39/6)+ (met3030*40/6)+ (met3020*32/6)+ (met2525*33/6)+ (met2020*25/6)+
  (tubo*80/6)+ (cantoneira*33/6)+ (eletrodo*0.12)+ pintura+ motor+ maodeobra+ (vergalhao*16/6)+(barrachata*19/6)+
  (discoflep*12)+ (disco12*15)+ (disco7*5)+(tubo*80/6)+ (massaplas*10)+ (perfil*45)+ (gonso*3)+ (fechadura*40)+ puxador;
  preco:=preco*2;
     if (ComboBox9.ItemIndex =0) then
         begin
           entrada:= preco/2;
           parcela:=preco/2;
           resto:= preco/2;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
            NumberBox6.Text:= FloatToStr(resto);
         end;

         if (ComboBox9.ItemIndex = 9) then
         begin
          preco:= preco/2;
          NumberBox3.Text:=FloatToStr(preco);
          NumberBox4.Text:= FloatToStr(preco);
            NumberBox5.Text:= '';
            NumberBox6.Text:= '';
           end;

          if (ComboBox9.ItemIndex = 1) then
         begin

           entrada:= preco/2+(preco/2*0.046);
           parcela:=preco/2;
           resto:= preco/2;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
            NumberBox6.Text:= FloatToStr(resto);
         end;

          if (ComboBox9.ItemIndex = 2) then
         begin

           entrada:= preco/2+(preco/2*0.046);
           parcela:=preco/2;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
         end;

         if (ComboBox9.ItemIndex = 3) then
         begin
            resto:=preco/2;
           entrada:= preco/2+(preco/2*0.061);
           parcela:=entrada/2;
           NumberBox6.Text:= FloatToStr(resto);
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela)
            end;

         if (ComboBox9.ItemIndex =4) then
         begin
           resto:=preco/2;
           entrada:= preco/2+(preco/2*0.076);
           parcela:=entrada/3;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
            NumberBox6.Text:= FloatToStr(resto);
         end;

         if (ComboBox9.ItemIndex = 5) then
         begin
           resto:=preco/2;
           entrada:= preco/2+(preco/2*0.091);
           parcela:=entrada/4;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
            NumberBox6.Text:= FloatToStr(resto);
         end;

          if (ComboBox9.ItemIndex =6) then
         begin
           resto:=preco/2;
           entrada:= preco/2+(preco/2*0.106);
           parcela:=entrada/5;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
            NumberBox6.Text:= FloatToStr(resto);
         end;

          if (ComboBox9.ItemIndex =7) then
         begin
            resto:=preco/2;
           entrada:= preco/2+(preco/2*0.121);
           parcela:=entrada/6;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:= FloatToStr(entrada);
            NumberBox5.Text:= floattoStr(parcela);
            NumberBox6.Text:= FloatToStr(resto);
         end;

          if (ComboBox9.ItemIndex = 8) then
         begin

            preco:= preco*1.12;
            parcela:=preco/10;
            NumberBox3.Text:=FloatToStr(preco);
            NumberBox4.Text:='';
            NumberBox5.Text:=FloatToStr(parcela);
            NumberBox6.Text:= '';
         end;


end;

procedure TPortao2Bandas.Button1Click(Sender: TObject);
begin
close;
end;

end.
