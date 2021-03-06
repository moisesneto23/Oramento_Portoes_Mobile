unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.EditBox, FMX.ComboTrackBar,
  FMX.ListBox, FMX.NumberBox, FMX.Layouts;

type
  TForm3 = class(TForm)
    FramedVertScrollBox2: TFramedVertScrollBox;
    ToolBar17: TToolBar;
    NumberBox1: TNumberBox;
    Label1: TLabel;
    NumberBox2: TNumberBox;
    Label2: TLabel;
    ToolBar2: TToolBar;
    Label3: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label4: TLabel;
    ToolBar3: TToolBar;
    Label5: TLabel;
    ComboBox4: TComboBox;
    ToolBar4: TToolBar;
    Label7: TLabel;
    ComboBox6: TComboBox;
    ToolBar5: TToolBar;
    Label9: TLabel;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Label10: TLabel;
    ToolBar6: TToolBar;
    Label11: TLabel;
    ComboBox10: TComboBox;
    ToolBar8: TToolBar;
    Label13: TLabel;
    ToolBar9: TToolBar;
    ComboBox12: TComboBox;
    ToolBar16: TToolBar;
    Label17: TLabel;
    ToolBar12: TToolBar;
    Label16: TLabel;
    ToolBar15: TToolBar;
    Label15: TLabel;
    ToolBar14: TToolBar;
    Label14: TLabel;
    ToolBar10: TToolBar;
    Button1: TButton;
    ToolBar7: TToolBar;
    labell: TLabel;
    ComboBox11: TComboBox;
    ToolBar11: TToolBar;
    Label6: TLabel;
    ComboBox5: TComboBox;
    NumberBox3: TNumberBox;
    NumberBox5: TNumberBox;
    NumberBox4: TNumberBox;
    NumberBox6: TNumberBox;
    ToolBar13: TToolBar;
    Label8: TLabel;
    ComboBox7: TComboBox;
    ToolBar1: TToolBar;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  largura, altura,
   met5050, met5030G,  met5030,   met4040,  met4020,  met3030, met3020,
  met2525,  met2020, rodana,  guia,  puxador,
  cantoneira,  eletrodo,  pintura,  motor,  maodeobra,  vergalhao, barrachata,
  discoflep,  disco12,  disco7,   massaplas,  perfil,  gonso, fechadura,
  quantidade, preco, espassamento, parcela, entrada, resto: real;
  com1, com2, com3 , com4, com5, com6, com7, com8, com9, com10, com11,com12: real;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm3.Button1Click(Sender: TObject);
begin


// transformando edits
largura:=StrToFloat(NumberBox1.Text);
altura:= Strtofloat(NumberBox2.Text);
//iniciando variaveis

  met5050:=0; met5030G:=0;  met5030:=0;   met4040:=0;  met4020:=0;  met3030:=0;  met3020:=0;
  met2525:=0;  met2020:=0; rodana:=0;  guia:=0;   puxador:=0;
  cantoneira:=0;  eletrodo:=0;  pintura:=0;  motor:=0;  maodeobra:=0;  vergalhao:=0; barrachata:=0;
  discoflep:=0;  disco12:=0;  disco7:=0;   massaplas:=0;  perfil:=0;  gonso:=0; fechadura:=0;
  quantidade:=3;
//definindo variaveis sem condi??o
eletrodo:= (largura*6)+8;
cantoneira:=largura*2;
discoflep:=largura*0.05;
disco12:= (largura*0.05);
disco7:=largura/3;
vergalhao:=(largura*0.13*2+2);
barrachata:= altura/6;
maodeobra:=12*largura*altura;
  // condicionando guia
  com11:=ComboBox11.ItemIndex;
  if (Com3=0) or  (Com3=1) then
  begin
  if (largura<3) then
  guia:=30 else guia:=60;
  end;

  if (Com11=4) or  (Com11=5) then
  guia:=20;

  if (Com11=2) or  (Com11=3) then
  begin
  if (largura<3) then
  guia:=74 else guia:=124;
  end;

//condicionando metalon do quadrado
com8:= ComboBox8.ItemIndex;
 if (Com8=0) then
 met5050:=((largura*2)+(altura*3));
 if (Com8=1) then
 met4040:=  ((largura*2)+(altura*3));
 if (Com8=2) then
 met5030G:=   ((largura*2)+(altura*3));
 if (Com8=3) then
 met5030:= ((largura*2)+(altura*3));
 if (Com8=4) then
 met3030:= ((largura*2)+(altura*3));
 //condicionando motor
 com5:=ComboBox5.ItemIndex;
 if (ComboBox5.ItemIndex=1)then
 motor:=350;
 //condicionando pintura
 com3:=ComboBox3.ItemIndex;
 if (Com3=1) then
 pintura:=39.5*largura*altura;
 //condicionando fechadura
 com6:=ComboBox6.ItemIndex;
 if (Com6=1) then
 fechadura:=1 else fechadura:=fechadura/8;
  // condicionando puxador
  com4:=ComboBox4.ItemIndex;
  if (Com4=2) then
  puxador:=15;
   if (Com4=1) then
  puxador:=60;
  //condicionando porta integrada
  com7:= ComboBox7.ItemIndex;
  if (Com7=1) then
      begin
      // metalon da porta
       if (Com8=0) then
       met5050:=met5050+((altura*3+2));
       if (Com8=1) then
       met4040:=  met4040+((altura*3+2));
       if (Com8=2) then
       met5030G:= met5030G+((altura*3+2));
        if (Com8=3) then
       met5030:= met5030+((altura*3+2));
        if (Com8=4) then
       met3030:= met3030+((altura*3+2));
       eletrodo:=eletrodo+8;
       barrachata:= barrachata*2.5;
       gonso:=3*3;
       fechadura:= fechadura+1;
       maodeobra:=maodeobra+40;
      end;

// condicionando modelo 1
com2:=ComboBox2.ItemIndex;
if (Com2=1) then
    begin
    perfil:=largura*altura;
    end;
    com9:=ComboBox9.ItemIndex;
    //condicionando modelo 2
    if (Com2=2) then
    begin
      perfil:=largura*altura/2;
     //metalon da divisao
       if (Com8=0) then
       met5050:=met5050+(largura);
       if (Com8=1) then
       met4040:=  met4040+(largura);
       if (Com8=2) then
       met5030G:= met5030G+(largura);
       if (Com8=3) then
       met5030:= met5030+(largura);
       if (Com8=4) then
       met3030:= met3030+(largura);

    // metalon interno
       if (Com9=0) and (Com8=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (Com9=1) and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (Com9=1)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if(Com9=2)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if ((Com9=4) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
       if ((Com9=4) )and(Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and(Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if ((Com9=6) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if ((Com9=6) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if ((Com9=7) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=1)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if ((Com9=8) )and(Com8=4)  then
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
    if (Com2=3) then
    begin
       perfil:=largura*altura/2;
     //metalon da divisao
       if (Com8=0)  then
       met5050:=met5050+(largura)+altura/2;
       if (Com8=1) then
       met4040:=  met4040+(largura)+altura/2;
       if(Com8=2)  then
       met5030G:= met5030G+(largura)+altura/2;;
       if(Com8=3)  then
       met5030:= met5030+(largura)+altura/2;;
       if (Com8=4)  then
       met3030:= met3030+(largura)+altura/2;;

    // metalon interno
       if (Com9=0) and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       if (Com9=1) and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       if (Com9=1)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (Com9=2)and(Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if (Com9=2)and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=3) )and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       //................................
        if ((Com9=4) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=4) )and(Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
         if ((Com9=5) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if ((Com9=5) )and(Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=0) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if ((Com9=5) )and(Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
         if ((Com9=5) )and(Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       //***********************
         if ((Com9=6) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
         if ((Com9=6) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       //*************************************
       if ((Com9=7) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=7) )and(Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+((sqrt(((largura/2)*(largura/2))+((altura/2)*(altura/2))))*4)+(quantidade*altura/2);
       end;
       if ((Com9=8) )and (Com8=4) then
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
    if (Com2=4) then
    begin
     perfil:=largura*altura/1.5;
     //metalon da divisao
       if (Com8=0)  then
       met5050:=met5050+((largura+altura));
       if(Com8=1) then
       met4040:=  met4040+((largura+altura));
       if(Com8=2)  then
       met5030G:= met5030G+((altura+largura));
       if(Com8=3)  then
       met5030:= met5030+((largura+altura));
       if(Com8=4) then
       met3030:= met3030+((largura+altura));

    // metalon interno
       if(Com9=0)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (Com8=1)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (Com9=1)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if(Com9=2)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if(Com9=2)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=3) and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if ((Com9=4) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
       if ((Com9=4) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=1)then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if ((Com9=6) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if ((Com9=6) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if ((Com9=7) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and(Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=8) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and ((Com8=3) ) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if ((Com9=8) )and (Com8=4) then
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
    if (Com2=5) then
    begin
    perfil:=largura*altura/1.3;
     //metalon da divisao
       if (Com8=0)  then
       met5050:=met5050+((largura+altura)*2);
       if (Com8=1) then
       met4040:=  met4040+(largura+altura)*2/6;
       if (Com8=2)  then
       met5030G:= met5030G+((altura+largura)*2);
       if (Com8=3)  then
       met5030:= met5030+((largura+altura)*2);
       if (Com8=4)  then
       met3030:= met3030+((largura+altura)*2);

    // metalon interno
       if (Com9=0)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (Com9=1) and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (Com9=1) and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and(Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if ((Com9=4) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
       if ((Com9=4) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and(Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if ((Com9=6) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if ((Com9=6) )and (Com8=4) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if ((Com9=7) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=3) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=8) )and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and(Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if ((Com9=8) )and (Com8=4)  then
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
    if (Com2=6) then
    begin
    perfil:=largura*altura/2;
     //metalon da divisao
       if (Com8=0)  then
       met5050:=met5050+((largura+altura)*2);
       if (Com8=1)  then
       met4040:=  met4040+(largura+altura)*2;
       if (Com8=2)  then
       met5030G:= met5030G+((altura+largura)*2);
       if(Com8=3)  then
       met5030:= met5030+((largura+altura)*2);
       if (Com8=4)  then
       met3030:= met3030+((largura+altura)*2);

    // metalon interno
       if(Com9=0)and(Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (Com9=1) and(Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
       if (Com9=1) and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4040:=met4040+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.04)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2)and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if (Com9=2) and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.14) ;
           espassamento:=espassamento-0.04;
           met4020:=met4020+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
        if ((Com9=3) )and (Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       //................................
        if ((Com9=4) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
        if ((Com9=4) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.15) ;
           espassamento:=espassamento-0.05;
           met5030:=met5030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and (Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
          if ((Com9=5) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
         if ((Com9=5) )and(Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3030:=met3030+(quantidade*altura/2);
       end;
       //***********************
         if ((Com9=6) )and(Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and(Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.07)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
          if ((Com9=6) )and(Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.05)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
         if ((Com9=6) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.03)/quantidade;
          until (espassamento<0.13) ;
           espassamento:=espassamento-0.03;
           met3020:=met3020+(quantidade*altura/2);
       end;
       //*************************************
       if ((Com9=7) )and(Com8=2)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.075)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.055)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=7) )and (Com8=4)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.045)/quantidade;
          until (espassamento<0.125) ;
           espassamento:=espassamento-0.025;
           met2525:=met2525+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=2) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=3)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=0)  then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.08)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
        if ((Com9=8) )and (Com8=1) then
       begin
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura-0.06)/quantidade;
          until (espassamento<0.12) ;
           espassamento:=espassamento-0.02;
           met2020:=met2020+(quantidade*altura/2);
       end;
       if ((Com9=8) )and (Com8=4)  then
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
    if (Com2=7) then
    begin
     perfil:=largura*altura;
     //metalon da divisao
       if (Com9=0) then
       met5050:=met5050+(sqrt(((largura*largura)+(altura*altura)))*10);
       if (Com9=1) then
       met4040:=  met4040+(sqrt(((largura*largura)+(altura*altura)))*10);
       if ((Com9=3) ) then
       met5030G:= met5030G+(sqrt(((largura*largura)+(altura*altura)))*10);
       if ((Com9=4) ) then
       met5030:= met5030+(sqrt(((largura*largura)+(altura*altura)))*10);
       if ((Com9=5) ) then
       met3030:= met3030+(sqrt(((largura*largura)+(altura*altura)))*10);
        eletrodo:=eletrodo+20;
       disco12:=disco12+((largura*0.002)*3);
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+largura;
    end;

    //modelo de port?o 8
    if (Com2=8) then
    begin
     perfil:=largura*altura/1.3;
     //metalon da interno
      if (Com9=0) then
      begin
       met5050:=met5050+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met5050:=met5050+(quantidade*altura/2);
       end;
       if (Com9=1) then
       begin
       met4040:=met4040+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met4040:=met4040+(quantidade*altura/2);
       end;
       if ((Com9=3) ) then
       begin
       met5030G:=met5030G+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met5030G:=met5030G+(quantidade*altura/2);
       end;
       if ((Com9=4) ) then
       begin
       met5030:=met5030+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.3);
           met5030:=met5030+(quantidade*altura/2);
       end;
       if (Com9=5)  then
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
    if (Com2=9) then
    begin
     perfil:=largura*altura/2;
     //metalon da interno
      if (Com9=0) then
       begin
       met5050:=met5050+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met5050:=met5050+altura+((quantidade*altura/2)*3);
       end;
       if(Com9=1) then
       begin
       met4040:=met4040+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met4040:=met4040+altura+(quantidade*altura/2)*3;
       end;
       if ((Com9=3) ) then
       begin
       met5030G:=met5030G+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met5030G:=met5030G+altura+(quantidade*altura/2)*3;
       end;
       if ((Com9=4) ) then
       begin
       met5030:=met5030+(largura*2*1.3)+altura;
          repeat
          quantidade:=quantidade+1;
          espassamento:= (largura)/quantidade;
          until (espassamento<0.45);
           met5030:=met5030+altura+(quantidade*altura/2)*3;
       end;
       if(Com9=5)   then
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
    if (Com2=10) then
    begin
     perfil:=largura*altura/1.7;
     //metalon da interno
      if (Com9=0) then
      met5050:=met5050+((largura*3*1.15)+(altura*7));
       if (Com9=1) then
      met4040:=met4040+((largura*3*1.15)+(altura*7));
      if ((Com9=3) ) then
      met5030G:=met5030G+((largura*3*1.15)+(altura*7));
      if ((Com9=4) ) then
       met5030:=met5030+((largura*3*1.15)+(altura*7));
       if(Com9=5)  then
       met3030:=met3030+((largura*3*1.15)+(altura*7));
        eletrodo:=eletrodo+19;
       disco12:=disco12+((largura*0.008));
       maodeobra:=maodeobra+(largura*altura*12);
       disco7:=disco7+(altura*1.5);
    end;
    //modelo de port?o 11
    if (Com2=11) then
    begin
     perfil:=largura*altura;
     if (Com9=0) then
      met5050:=met5050+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
       if (Com9=1) then
      met4040:=met4040+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
      if ((Com9=3) ) then
      met5030G:=met5030G+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
      if ((Com9=4) ) then
       met5030:=met5030+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
       if(Com9=5)  then
       met3030:=met3030+(sqrt((largura*largura)+(altura*altura))+(altura*1.2));
        eletrodo:=(eletrodo*3)+8+(largura*5);
       disco12:=disco12+((largura*0.007));
       maodeobra:=maodeobra+(largura*altura*15);
       disco7:=disco7+(altura*1.5);
    end;

    //modelo de port?o 12
    if (Com2=12) then
    begin
     perfil:=largura*altura;
     if (Com9=0) then
      met5050:=met5050+(largura*2)+(altura*2);
       if (Com9=1) then
      met4040:=met4040+(largura*2)+(altura*2);
      if ((Com9=3) ) then
      met5030G:=met5030G+(largura*2)+(altura*2);
      if ((Com9=4) ) then
       met5030:=met5030+(largura*2)+(altura*2);
       if (Com9=5)  then
       met3030:=met3030+(largura*2)+(altura*2);
        eletrodo:=(eletrodo*2);
       disco12:=disco12+((largura*0.002));
       maodeobra:=maodeobra+(largura*altura*10);
       disco7:=disco7*1.5;

    end;



     //modelo de port?o 13
    if (Com2=13) then
    begin
     perfil:=largura*altura;
       if (Com9=0) then
      met5050:=met5050+(largura*2.2)+altura;
       if (Com9=1) then
      met4040:=met4040+(largura*2.2)+altura;
       if ((Com9=3) ) then
      met5030G:=met5030G+(largura*2.2)+altura;
       if ((Com9=4) ) then
      met5030:=met5030+(largura*2.2)+altura;
       if(Com9=5)  then
      met3030:=met3030+(largura*2.2)+altura;
      eletrodo:=(eletrodo*2);
      disco12:=disco12+((largura*0.003));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*3;
     end;

        //modelo de port?o 14
    if (Com2=14) then
    begin
     perfil:=largura*(altura-0.1);
       if(Com9=0)then
      met5050:=met5050+(largura*2.2);
       if (Com9=1) then
      met4040:=met4040+(largura*2.2);
       if ((Com9=3) ) then
      met5030G:=met5030G+(largura*2.2);
       if ((Com9=4) ) then
      met5030:=met5030+(largura*2.2);
       if(Com9=5)  then
      met3030:=met3030+(largura*2.2);
      eletrodo:=eletrodo+4;
      disco12:=disco12+((largura*0.001));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*1.1;
     end;

       //modelo de port?o 15
    if (Com2=15) then
    begin
     perfil:=largura*altura;
       if (Com9=0) then
      met5050:=met5050+(largura*4)+(altura*2);
       if (Com9=1) then
      met4040:=met4040+(largura*4)+(altura*2);
       if ((Com9=3) ) then
      met5030G:=met5030G+(largura*4)+(altura*2);
       if ((Com9=4) ) then
      met5030:=met5030+(largura*4)+(altura*2);
       if (Com9=5)  then
      met3030:=met3030+(largura*4)+(altura*2);
      met2020:=3.2;
      eletrodo:=eletrodo+20;
      disco12:=disco12+((largura*0.008));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*1.1;
     end;

       //modelo de port?o 16
    if (Com2=16) then
    begin
     perfil:=largura*altura;
       if (Com9=0) then
      met5050:=met5050+((largura-1)*5)+(altura*2);
       if(Com9=1) then
      met4040:=met4040+((largura-1)*5)+(altura*2);
       if ((Com9=3) ) then
      met5030G:=met5030G+((largura-1)*5)+(altura*2);
       if ((Com9=4) ) then
      met5030:=met5030+((largura-1)*5)+(altura*2);
       if(Com9=5)  then
      met3030:=met3030+((largura-1)*5)+(altura*2);
      met2020:=altura/0.16;
      eletrodo:=eletrodo+20;
      disco12:=disco12+((largura*0.008));
      maodeobra:=maodeobra+(largura*altura*10);
      disco7:=disco7*1.1;
     end;

    if (Com8=4) then
    rodana:=16 else rodana:=24;

    // somando variaveis
  preco:= (met5050*80/6)+ (met5030G*63/6)+ (met5030/6*51)+  (met4040*50/6)+ (met4020*39/6)+ (met3030*40/6)+ (met3020*32/6)+ (met2525*33/6)+ (met2020*25/6)+
  rodana+ guia+  (cantoneira*33/6)+ (eletrodo*0.12)+ pintura+ motor+ maodeobra+ (vergalhao*16/6)+(barrachata*19/6)+
  (discoflep*12)+ (disco12*15)+ (disco7*5)+ (massaplas*10)+ (perfil*45)+ (gonso*3)+ (fechadura*40)+ puxador;
  preco:=preco*1.9;

  com12:=ComboBox12.ItemIndex;
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
          preco:= preco/1.9;
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

 end;

procedure TForm3.Button2Click(Sender: TObject);
begin
close;
end;

end.
