unit report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm2 = class(TForm)
    qckrp1: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    qrlbl1: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
    qrshp5: TQRShape;
    qrshp6: TQRShape;
    qrshp7: TQRShape;
    qrdbtxtid: TQRDBText;
    qrdbtxtnama: TQRDBText;
    qrdbtxttelp: TQRDBText;
    qrdbtxtemail: TQRDBText;
    qrdbtxtalamat: TQRDBText;
    qrdbtxtalamat1: TQRDBText;
    qrdbtxtmember: TQRDBText;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  kustomer, dataModule;

{$R *.dfm}

end.
