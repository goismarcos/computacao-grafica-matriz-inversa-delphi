unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    btn: TButton;
    x: TEdit;
    y: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  saidax, saiday: Integer;
implementation

{$R *.dfm}

procedure TForm1.btnClick(Sender: TObject);
var
entrada: array[0..2] of integer;
saida: array[0..2] of integer;
matriz: array[0..2] of array[0..2] of integer;
i, j, x1, y1, saidax, saiday: Integer;
begin
  //zerando as variaveis de saida, para não ter lixo de memoria
  saida[0] := 0;
  saida[1] := 0;
  saida[2] := 0;
  //setando valores dos campos x e y, para uma variavel auxiliar
  x1 := StrToInt(x.Text);
  y1 := StrToInt(y.Text);

  if((x1 > 150) or (y1 > 150) or (x1 < -150) or (y1 < -150) ) then
  begin
    showmessage('Informe valores entre -150 e 150 para x e y!');
  end;

  //setando a matriz original
  entrada[0] := x1;
  entrada[1] := y1;
  entrada[2] := 1;

  //estrutura de repeticao para preencher a matriz inversa
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      //se for a diagonal principal recebe 1
      if(i = j) then
        matriz[i][j] := 1
      //se for a linha 2 coluna 0 ou linha 2 coluna recebe 150
      else if( ((i=2) AND (j =0)) OR ((i=2) AND (j =1)) )then
        matriz[i][j] := 150
      //senao recebe 0
      else
        matriz[i][j] := 0;
    end;
  end;

  //estrutura de repeticao para multiplicacao da matriz original com a inversa
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      //matriz de saida recebendo os valores da multiplicacao
      saida[i] := saida[i] +  ( (entrada[j]) * (matriz[j][i]));
    end;
  end;

  //condição para que os pontos fiquem de acordo com cada ponto x e y

  //se x e o y for positivo ou os dois forem negativos ao mesmo tempo
  if(((entrada[0] >= 0) and (entrada[1] >=0)) or  ((entrada[0] < 0) and (entrada[1] < 0))) then
  begin
      saidax :=  (saida[0]) ;
      //rederecionando o valor de y
      saiday :=  (saida[1]-(y1*2)) ;
  end
  //se apenas o valor de x for negativo
  else if((entrada[0] < 0))then
  begin
     saidax :=  (saida[0]);
     //rederecionando o valor de y
     saiday :=  (saida[1])-(y1*2) ;
  end
  //se apenas ovalor de y for negativo
  else if((entrada[1] < 0))  then
  begin
      saidax :=  (saida[0]);
      //rederecionando o valor de y
      saiday :=  (saida[1])+(y1*-2) ;
  end;

  //setando na imagem o ponto definido
  Image1.Canvas.Pixels[saidax+1,saiday-1]:= rgb(255,0,0);
  Image1.Canvas.Pixels[saidax-1,saiday+1]:= rgb(255,0,0);
  Image1.Canvas.Pixels[saidax-1,saiday-1]:= rgb(255,0,0);
  Image1.Canvas.Pixels[saidax+1,saiday+1]:= rgb(255,0,0);
  Image1.Canvas.Pixels[saidax,saiday]:= rgb(255,0,0);
end;

procedure TForm1.Button1Click(Sender: TObject);
var i : integer;
begin
  //Limpando grafico
  Image1.Picture := nil;
  //estrutura de repeticao para riscar a linha x e y do grafico
  for i := 0 to 300 do
    Image1.Canvas.Pixels[150,i]:= rgb(0,0,0);
  for i := 0 to 300 do
    Image1.Canvas.Pixels[i,150]:= rgb(0,0,0);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
i: integer;
begin
  //estrutura de repeticao para riscar a linha x e y do grafico
  for i := 0 to 300 do
    Image1.Canvas.Pixels[150,i]:= rgb(0,0,0);
  for i := 0 to 300 do
    Image1.Canvas.Pixels[i,150]:= rgb(0,0,0);
end;

end.
