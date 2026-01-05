unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  ExtCtrls, Menus, attabs, tcp_udpport, ISOTCPDriver, PLCBlock, LazUTF8,
  TAGraph, TATransformations, TASources, TASeries, PLCBlockElement, TagBit,
  HMILabel, StrUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    ATTabs1: TATTabs;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Chart1: TChart;
    ColorDialog1: TColorDialog;
    Motor6SpeedLineSeries: TLineSeries;
    Motor1TorqueLineSeries: TLineSeries;
    Motor2TorqueLineSeries: TLineSeries;
    Motor3TorqueLineSeries: TLineSeries;
    Motor4TorqueLineSeries: TLineSeries;
    Motor5TorqueLineSeries: TLineSeries;
    Motor6TorqueLineSeries: TLineSeries;
    Motor1SpeedLineSeries: TLineSeries;
    Motor2SpeedLineSeries: TLineSeries;
    Motor3SpeedLineSeries: TLineSeries;
    Motor4SpeedLineSeries: TLineSeries;
    Motor5SpeedLineSeries: TLineSeries;
    ChartAxisTransformations1: TChartAxisTransformations;
    ChartAxisTransformations1LinearAxisTransform1: TLinearAxisTransform;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DB100_1: TPLCBlock;
    DB100_2: TPLCBlock;
    DB100_3: TPLCBlock;
    DB100_DBB306: TPLCBlockElement;
    DB100_DBB306_0: TTagBit;
    DB100_DBW200: TPLCBlockElement;
    DB100_DBW228: TPLCBlockElement;
    DB112_DBD388_1: TPLCBlockElement;
    DB112_DBD388_2: TPLCBlockElement;
    DB112_DBD388_3: TPLCBlockElement;
    DB112_DBD392_1: TPLCBlockElement;
    DB112_DBD392_2: TPLCBlockElement;
    DB112_DBD392_3: TPLCBlockElement;
    DB112_DBD396_1: TPLCBlockElement;
    DB112_DBD396_2: TPLCBlockElement;
    DB112_DBD396_3: TPLCBlockElement;
    DB112_DBD400_1: TPLCBlockElement;
    DB112_DBD400_2: TPLCBlockElement;
    DB112_DBD400_3: TPLCBlockElement;
    DB112_DBW310_1: TPLCBlockElement;
    DB112_DBW310_2: TPLCBlockElement;
    DB112_DBW310_3: TPLCBlockElement;
    DB112_DBW312_1: TPLCBlockElement;
    DB112_DBW312_2: TPLCBlockElement;
    DB112_DBW312_3: TPLCBlockElement;
    DB112_DBW320_1: TPLCBlockElement;
    DB112_DBW320_2: TPLCBlockElement;
    DB112_DBW320_3: TPLCBlockElement;
    DB112_DBW322_1: TPLCBlockElement;
    DB112_DBW322_2: TPLCBlockElement;
    DB112_DBW322_3: TPLCBlockElement;
    DB112_DBW332_1: TPLCBlockElement;
    DB112_DBW332_2: TPLCBlockElement;
    DB112_DBW332_3: TPLCBlockElement;
    DB112_DBW334_1: TPLCBlockElement;
    DB112_DBW334_2: TPLCBlockElement;
    DB112_DBW334_3: TPLCBlockElement;
    DB112_DBW342_1: TPLCBlockElement;
    DB112_DBW342_2: TPLCBlockElement;
    DB112_DBW342_3: TPLCBlockElement;
    DB112_DBW344_1: TPLCBlockElement;
    DB112_DBW344_2: TPLCBlockElement;
    DB112_DBW344_3: TPLCBlockElement;
    DB1XX1: TPLCBlock;
    DB1XX2: TPLCBlock;
    DB1XX3: TPLCBlock;
    DBStaticXXX1: TPLCBlock;
    DBStaticXXX2: TPLCBlock;
    DBStaticXXX3: TPLCBlock;
    DefaultPort: TPopupMenu;
    Edit5: TEdit;
    Edit6: TEdit;
    DefaultIP: TPopupMenu;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Motor1SpeedChart: TListChartSource;
    Motor1TorqueChart: TListChartSource;
    Motor2SpeedChart: TListChartSource;
    Motor2TorqueChart: TListChartSource;
    Motor3SpeedChart: TListChartSource;
    Motor3TorqueChart: TListChartSource;
    Motor4SpeedChart: TListChartSource;
    Motor4TorqueChart: TListChartSource;
    Motor5SpeedChart: TListChartSource;
    Motor5TorqueChart: TListChartSource;
    Motor6SpeedChart: TListChartSource;
    Motor6: TGroupBox;
    HMILabel1: THMILabel;
    HMILabel10: THMILabel;
    HMILabel11: THMILabel;
    HMILabel12: THMILabel;
    HMILabel13: THMILabel;
    HMILabel14: THMILabel;
    HMILabel15: THMILabel;
    HMILabel16: THMILabel;
    HMILabel17: THMILabel;
    HMILabel18: THMILabel;
    HMILabel19: THMILabel;
    HMILabel2: THMILabel;
    HMILabel20: THMILabel;
    HMILabel21: THMILabel;
    HMILabel22: THMILabel;
    HMILabel23: THMILabel;
    HMILabel24: THMILabel;
    HMILabel25: THMILabel;
    HMILabel26: THMILabel;
    HMILabel27: THMILabel;
    HMILabel28: THMILabel;
    HMILabel29: THMILabel;
    HMILabel3: THMILabel;
    HMILabel30: THMILabel;
    HMILabel31: THMILabel;
    HMILabel32: THMILabel;
    HMILabel33: THMILabel;
    HMILabel34: THMILabel;
    HMILabel35: THMILabel;
    HMILabel36: THMILabel;
    HMILabel37: THMILabel;
    HMILabel38: THMILabel;
    HMILabel39: THMILabel;
    HMILabel4: THMILabel;
    HMILabel40: THMILabel;
    HMILabel41: THMILabel;
    HMILabel42: THMILabel;
    HMILabel43: THMILabel;
    HMILabel5: THMILabel;
    HMILabel6: THMILabel;
    HMILabel7: THMILabel;
    HMILabel8: THMILabel;
    HMILabel9: THMILabel;
    ISOTCPDriver1: TISOTCPDriver;
    Motor1_SpeedActCheckBox: TCheckBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Motor1_TorqueActCheckBox: TCheckBox;
    MB90: TPLCBlockElement;
    MB90_: TPLCBlock;
    MB91: TPLCBlockElement;
    MB91_: TPLCBlock;
    MD40: TPLCBlockElement;
    MD40_: TPLCBlock;
    MD50: TPLCBlockElement;
    MD50_: TPLCBlock;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Motor6TorqueChart: TListChartSource;
    PageControl1: TPageControl;
    FileMenu: TPopupMenu;
    Motor2_TorqueActCheckBox: TCheckBox;
    Shape1: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    StatusBar1: TStatusBar;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TCP_UDPPort1: TTCP_UDPPort;
    Timer1: TTimer;
    Timer2: TTimer;
    Motor2_SpeedActCheckBox: TCheckBox;
    Motor3_SpeedActCheckBox: TCheckBox;
    Motor3_TorqueActCheckBox: TCheckBox;
    Motor4_SpeedActCheckBox: TCheckBox;
    Motor4_TorqueActCheckBox: TCheckBox;
    Motor5_SpeedActCheckBox: TCheckBox;
    Motor5_TorqueActCheckBox: TCheckBox;
    Motor6_SpeedActCheckBox: TCheckBox;
    Motor6_TorqueActCheckBox: TCheckBox;
    procedure ATTabs1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1EditingDone(Sender: TObject);
    procedure ComboBox2EditingDone(Sender: TObject);
    procedure ComboBox3EditingDone(Sender: TObject);
    procedure Edit5EditingDone(Sender: TObject);
    procedure Edit6EditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Motor1_SpeedActCheckBoxEditingDone(Sender: TObject);
    procedure Motor1_TorqueActCheckBoxEditingDone(Sender: TObject);
    procedure Motor2_SpeedActCheckBoxEditingDone(Sender: TObject);
    procedure Motor2_TorqueActCheckBoxEditingDone(Sender: TObject);
    procedure Motor3_SpeedActCheckBoxEditingDone(Sender: TObject);
    procedure Motor3_TorqueActCheckBoxEditingDone(Sender: TObject);
    procedure Motor4_SpeedActCheckBoxEditingDone(Sender: TObject);
    procedure Motor4_TorqueActCheckBoxEditingDone(Sender: TObject);
    procedure Motor5_SpeedActCheckBoxEditingDone(Sender: TObject);
    procedure Motor5_TorqueActCheckBoxEditingDone(Sender: TObject);
    procedure Motor6_SpeedActCheckBoxEditingDone(Sender: TObject);
    procedure Motor6_TorqueActCheckBoxEditingDone(Sender: TObject);
    procedure Shape10Click(Sender: TObject);
    procedure Shape11Click(Sender: TObject);
    procedure Shape12Click(Sender: TObject);
    procedure Shape1Click(Sender: TObject);
    procedure Shape2Click(Sender: TObject);
    procedure Shape3Click(Sender: TObject);
    procedure Shape4Click(Sender: TObject);
    procedure Shape5Click(Sender: TObject);
    procedure Shape6Click(Sender: TObject);
    procedure Shape7Click(Sender: TObject);
    procedure Shape8Click(Sender: TObject);
    procedure Shape9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public
     procedure Log(const s : string);
     procedure Log(Const Fmt : String; const Args : Array of const);
     Function CheckFile(C_DNAME: string; C_FNAME: string; Debug_:TMemo):boolean;
     Function CheckDirectory(C_DNAME: string;Debug_:TMemo):boolean;
     Function DoubleBooleanToStr(DoubleBoolean: double):string;
     function RepairIPAddress(s: string):string;
     procedure AdjustChatrSize();
  end;

var
  Form1: TForm1;
  Directory_:string;
  FileName_: string;
  Already_Header:boolean;
  File_OK:Boolean;
  Motor1SpeedColor:Tcolor;
  Motor2SpeedColor:Tcolor;
  Motor3SpeedColor:Tcolor;
  Motor4SpeedColor:Tcolor;
  Motor5SpeedColor:Tcolor;
  Motor6SpeedColor:Tcolor;
  Motor1TorqueColor:Tcolor;
  Motor2TorqueColor:Tcolor;
  Motor3TorqueColor:Tcolor;
  Motor4TorqueColor:Tcolor;
  Motor5TorqueColor:Tcolor;
  Motor6TorqueColor:Tcolor;

  Motor1SpeedMin:Double;
  Motor1SpeedMax:Double;
  Motor1TorqueMin:Double;
  Motor1TorqueMax:Double;

  Motor2SpeedMin:Double;
  Motor2SpeedMax:Double;
  Motor2TorqueMin:Double;
  Motor2TorqueMax:Double;

  Motor3SpeedMin:Double;
  Motor3SpeedMax:Double;
  Motor3TorqueMin:Double;
  Motor3TorqueMax:Double;

  Motor4SpeedMin:Double;
  Motor4SpeedMax:Double;
  Motor4TorqueMin:Double;
  Motor4TorqueMax:Double;

  Motor5SpeedMin:Double;
  Motor5SpeedMax:Double;
  Motor5TorqueMin:Double;
  Motor5TorqueMax:Double;

  Motor6SpeedMin:Double;
  Motor6SpeedMax:Double;
  Motor6TorqueMin:Double;
  Motor6TorqueMax:Double;

  Motor7SpeedMin:Double;
  Motor7SpeedMax:Double;
  Motor7TorqueMin:Double;
  Motor7TorqueMax:Double;

  Motor8SpeedMin:Double;
  Motor8SpeedMax:Double;
  Motor8TorqueMin:Double;
  Motor8TorqueMax:Double;

  Motor9SpeedMin:Double;
  Motor9SpeedMax:Double;
  Motor9TorqueMin:Double;
  Motor9TorqueMax:Double;

  Motor10SpeedMin:Double;
  Motor10SpeedMax:Double;
  Motor10TorqueMin:Double;
  Motor10TorqueMax:Double;

  Motor11SpeedMin:Double;
  Motor11SpeedMax:Double;
  Motor11TorqueMin:Double;
  Motor11TorqueMax:Double;

  Motor12SpeedMin:Double;
  Motor12SpeedMax:Double;
  Motor12TorqueMin:Double;
  Motor12TorqueMax:Double;

implementation

{$R *.lfm}

procedure TForm1.AdjustChatrSize();
begin
  if Motor1_SpeedActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor1SpeedMax then Chart1.Extent.YMax:=Motor1SpeedMax;
    if Chart1.Extent.YMin>Motor1SpeedMin then Chart1.Extent.YMin:=Motor1SpeedMin;
  end;
  if Motor2_SpeedActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor2SpeedMax then Chart1.Extent.YMax:=Motor2SpeedMax;
    if Chart1.Extent.YMin>Motor2SpeedMin then Chart1.Extent.YMin:=Motor2SpeedMin;
  end;
  if Motor3_SpeedActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor3SpeedMax then Chart1.Extent.YMax:=Motor3SpeedMax;
    if Chart1.Extent.YMin>Motor3SpeedMin then Chart1.Extent.YMin:=Motor3SpeedMin;
  end;
  if Motor4_SpeedActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor4SpeedMax then Chart1.Extent.YMax:=Motor4SpeedMax;
    if Chart1.Extent.YMin>Motor4SpeedMin then Chart1.Extent.YMin:=Motor4SpeedMin;
  end;
  if Motor5_SpeedActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor5SpeedMax then Chart1.Extent.YMax:=Motor5SpeedMax;
    if Chart1.Extent.YMin>Motor5SpeedMin then Chart1.Extent.YMin:=Motor5SpeedMin;
  end;
  if Motor6_SpeedActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor6SpeedMax then Chart1.Extent.YMax:=Motor6SpeedMax;
    if Chart1.Extent.YMin>Motor6SpeedMin then Chart1.Extent.YMin:=Motor6SpeedMin;
  end;

  if Motor1_TorqueActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor1TorqueMax then Chart1.Extent.YMax:=Motor1TorqueMax;
    if Chart1.Extent.YMin>Motor1TorqueMin then Chart1.Extent.YMin:=Motor1TorqueMin;
  end;
  if Motor2_TorqueActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor2TorqueMax then Chart1.Extent.YMax:=Motor2TorqueMax;
    if Chart1.Extent.YMin>Motor2TorqueMin then Chart1.Extent.YMin:=Motor2TorqueMin;
  end;
  if Motor3_TorqueActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor3TorqueMax then Chart1.Extent.YMax:=Motor3TorqueMax;
    if Chart1.Extent.YMin>Motor3TorqueMin then Chart1.Extent.YMin:=Motor3TorqueMin;
  end;
  if Motor4_TorqueActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor4TorqueMax then Chart1.Extent.YMax:=Motor4TorqueMax;
    if Chart1.Extent.YMin>Motor4TorqueMin then Chart1.Extent.YMin:=Motor4TorqueMin;
  end;
  if Motor5_TorqueActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor5TorqueMax then Chart1.Extent.YMax:=Motor5TorqueMax;
    if Chart1.Extent.YMin>Motor5TorqueMin then Chart1.Extent.YMin:=Motor5TorqueMin;
  end;
  if Motor6_TorqueActCheckBox.Checked then
  begin
    if Chart1.Extent.YMax<Motor6TorqueMax then Chart1.Extent.YMax:=Motor6TorqueMax;
    if Chart1.Extent.YMin>Motor6TorqueMin then Chart1.Extent.YMin:=Motor6TorqueMin;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Motor1SpeedColor:=Shape1.Brush.Color;
  Motor2SpeedColor:=Shape3.Brush.Color;
  Motor3SpeedColor:=Shape5.Brush.Color;
  Motor4SpeedColor:=Shape7.Brush.Color;
  Motor5SpeedColor:=Shape9.Brush.Color;
  Motor6SpeedColor:=Shape11.Brush.Color;
  Motor1TorqueColor:=Shape2.Brush.Color;
  Motor2TorqueColor:=Shape4.Brush.Color;
  Motor3TorqueColor:=Shape6.Brush.Color;
  Motor4TorqueColor:=Shape8.Brush.Color;
  Motor5TorqueColor:=Shape10.Brush.Color;
  Motor6TorqueColor:=Shape12.Brush.Color;

  Motor1SpeedLineSeries.LinePen.Color:=Motor1SpeedColor;
  Motor2SpeedLineSeries.LinePen.Color:=Motor2SpeedColor;
  Motor3SpeedLineSeries.LinePen.Color:=Motor3SpeedColor;
  Motor4SpeedLineSeries.LinePen.Color:=Motor4SpeedColor;
  Motor5SpeedLineSeries.LinePen.Color:=Motor5SpeedColor;
  Motor6SpeedLineSeries.LinePen.Color:=Motor6SpeedColor;

  Motor1TorqueLineSeries.LinePen.Color:=Motor1TorqueColor;
  Motor2TorqueLineSeries.LinePen.Color:=Motor2TorqueColor;
  Motor3TorqueLineSeries.LinePen.Color:=Motor3TorqueColor;
  Motor4TorqueLineSeries.LinePen.Color:=Motor4TorqueColor;
  Motor5TorqueLineSeries.LinePen.Color:=Motor5TorqueColor;
  Motor6TorqueLineSeries.LinePen.Color:=Motor6TorqueColor;

  Motor1SpeedMin:=0;
  Motor1SpeedMax:=0;
  Motor1TorqueMin:=0;
  Motor1TorqueMax:=0;

  Motor2SpeedMin:=0;
  Motor2SpeedMax:=0;
  Motor2TorqueMin:=0;
  Motor2TorqueMax:=0;

  Motor3SpeedMin:=0;
  Motor3SpeedMax:=0;
  Motor3TorqueMin:=0;
  Motor3TorqueMax:=0;

  Motor4SpeedMin:=0;
  Motor4SpeedMax:=0;
  Motor4TorqueMin:=0;
  Motor4TorqueMax:=0;

  Motor5SpeedMin:=0;
  Motor5SpeedMax:=0;
  Motor5TorqueMin:=0;
  Motor5TorqueMax:=0;

  Motor6SpeedMin:=0;
  Motor6SpeedMax:=0;
  Motor6TorqueMin:=0;
  Motor6TorqueMax:=0;

  Motor7SpeedMin:=0;
  Motor7SpeedMax:=0;
  Motor7TorqueMin:=0;
  Motor7TorqueMax:=0;

  Motor8SpeedMin:=0;
  Motor8SpeedMax:=0;
  Motor8TorqueMin:=0;
  Motor8TorqueMax:=0;

  Motor9SpeedMin:=0;
  Motor9SpeedMax:=0;
  Motor9TorqueMin:=0;
  Motor9TorqueMax:=0;

  Motor10SpeedMin:=0;
  Motor10SpeedMax:=0;
  Motor10TorqueMin:=0;
  Motor10TorqueMax:=0;

  Motor11SpeedMin:=0;
  Motor11SpeedMax:=0;
  Motor11TorqueMin:=0;
  Motor11TorqueMax:=0;

  Motor12SpeedMin:=0;
  Motor12SpeedMax:=0;
  Motor12TorqueMin:=0;
  Motor12TorqueMax:=0;

  ATTabs1.GetTabData(0).TabCaption:='Connection';
  ATTabs1.GetTabData(1).TabCaption:='Other';
  ATTabs1.GetTabData(2).TabCaption:='Curve';

  PageControl1.ActivePageIndex:=ATTabs1.TabIndex;

  Already_Header:=false;

  if (FormatDateTime('MM YYYY',Now)<>Directory_) then
  begin
    Directory_:=FormatDateTime('MM YYYY',Now); FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY',Now)+'.CSV';
  end;
  if CheckDirectory(Directory_,Memo1) then begin Application.Terminate; end;

  FileName_:=Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.CSV';

  DB1XX1.MemFile_DB:=(100+ComboBox1.ItemIndex+1);
  DBStaticXXX1.MemFile_DB:=(100+ComboBox1.ItemIndex+1);
  DB1XX2.MemFile_DB:=(100+ComboBox2.ItemIndex+1);
  DBStaticXXX2.MemFile_DB:=(100+ComboBox2.ItemIndex+1);
  DB1XX3.MemFile_DB:=(100+ComboBox3.ItemIndex+1);
  DBStaticXXX3.MemFile_DB:=(100+ComboBox3.ItemIndex+1);
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  //Directory_
  //FileName_
  //SysUtils.ExecuteProcess(UTF8ToSys('explorer.exe'), '/select,C:\Windows\explorer.exe', []);
  SysUtils.ExecuteProcess(UTF8ToSys('explorer.exe'), '/select,'+Directory_, []);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Edit6.Caption:='192.168.54.21';
  Edit6.Caption:=RepairIPAddress(Edit6.Caption);
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
var
  i:integer;
begin
  Edit5.Caption:='502';
  i:=0;
  Try
    i:=StrToInt(Edit5.Caption);
  except
    On E : EConvertError do
      i:=502;
  end;
  Edit5.Caption:= IntToStr(i);
  TCP_UDPPort1.Port:=i;
end;

procedure TForm1.Motor1_SpeedActCheckBoxEditingDone(Sender: TObject);
begin
  Motor1SpeedLineSeries.Active:=Motor1_SpeedActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor1_TorqueActCheckBoxEditingDone(Sender: TObject);
begin
  Motor1TorqueLineSeries.Active:=Motor1_TorqueActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor2_SpeedActCheckBoxEditingDone(Sender: TObject);
begin
  Motor2SpeedLineSeries.Active:=Motor2_SpeedActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor2_TorqueActCheckBoxEditingDone(Sender: TObject);
begin
  Motor2TorqueLineSeries.Active:=Motor2_TorqueActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor3_SpeedActCheckBoxEditingDone(Sender: TObject);
begin
  Motor3SpeedLineSeries.Active:=Motor3_SpeedActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor3_TorqueActCheckBoxEditingDone(Sender: TObject);
begin
  Motor3TorqueLineSeries.Active:=Motor3_TorqueActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor4_SpeedActCheckBoxEditingDone(Sender: TObject);
begin
  Motor4SpeedLineSeries.Active:=Motor4_SpeedActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor4_TorqueActCheckBoxEditingDone(Sender: TObject);
begin
  Motor4TorqueLineSeries.Active:=Motor4_TorqueActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor5_SpeedActCheckBoxEditingDone(Sender: TObject);
begin
  Motor5SpeedLineSeries.Active:=Motor5_SpeedActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor5_TorqueActCheckBoxEditingDone(Sender: TObject);
begin
  Motor5TorqueLineSeries.Active:=Motor5_TorqueActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor6_SpeedActCheckBoxEditingDone(Sender: TObject);
begin
  Motor6SpeedLineSeries.Active:=Motor6_SpeedActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Motor6_TorqueActCheckBoxEditingDone(Sender: TObject);
begin
  Motor6TorqueLineSeries.Active:=Motor6_TorqueActCheckBox.Checked;
  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;
  AdjustChatrSize();
end;

procedure TForm1.Shape10Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape10.Brush.Color;
  if ColorDialog1.Execute then Shape10.Brush.Color := ColorDialog1.Color;

  Motor5TorqueColor:=Shape10.Brush.Color;
  Motor5TorqueLineSeries.LinePen.Color:=Motor5TorqueColor;

end;

procedure TForm1.Shape11Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape11.Brush.Color;
  if ColorDialog1.Execute then Shape11.Brush.Color := ColorDialog1.Color;

  Motor6SpeedColor:=Shape11.Brush.Color;
  Motor6SpeedLineSeries.LinePen.Color:=Motor6SpeedColor;

end;

procedure TForm1.Shape12Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape12.Brush.Color;
  if ColorDialog1.Execute then Shape12.Brush.Color := ColorDialog1.Color;

  Motor6TorqueColor:=Shape12.Brush.Color;
  Motor6TorqueLineSeries.LinePen.Color:=Motor6TorqueColor;
end;

procedure TForm1.Shape1Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape1.Brush.Color;
  if ColorDialog1.Execute then Shape1.Brush.Color := ColorDialog1.Color;

  Motor1SpeedColor:=Shape1.Brush.Color;
  Motor1SpeedLineSeries.LinePen.Color:=Motor1SpeedColor;

end;

procedure TForm1.Shape2Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape2.Brush.Color;
  if ColorDialog1.Execute then Shape2.Brush.Color := ColorDialog1.Color;

  Motor1TorqueColor:=Shape2.Brush.Color;
  Motor1TorqueLineSeries.LinePen.Color:=Motor1TorqueColor;

end;

procedure TForm1.Shape3Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape3.Brush.Color;
  if ColorDialog1.Execute then Shape3.Brush.Color := ColorDialog1.Color;

  Motor2SpeedColor:=Shape3.Brush.Color;
  Motor2SpeedLineSeries.LinePen.Color:=Motor2SpeedColor;

end;

procedure TForm1.Shape4Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape4.Brush.Color;
  if ColorDialog1.Execute then Shape4.Brush.Color := ColorDialog1.Color;

  Motor2TorqueColor:=Shape4.Brush.Color;
  Motor2TorqueLineSeries.LinePen.Color:=Motor2TorqueColor;

end;

procedure TForm1.Shape5Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape5.Brush.Color;
  if ColorDialog1.Execute then Shape5.Brush.Color := ColorDialog1.Color;

  Motor3SpeedColor:=Shape5.Brush.Color;
  Motor3SpeedLineSeries.LinePen.Color:=Motor3SpeedColor;

end;

procedure TForm1.Shape6Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape6.Brush.Color;
  if ColorDialog1.Execute then Shape6.Brush.Color := ColorDialog1.Color;

  Motor3TorqueColor:=Shape6.Brush.Color;
  Motor3TorqueLineSeries.LinePen.Color:=Motor3TorqueColor;

end;

procedure TForm1.Shape7Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape7.Brush.Color;
  if ColorDialog1.Execute then Shape7.Brush.Color := ColorDialog1.Color;

  Motor4SpeedColor:=Shape7.Brush.Color;
  Motor4SpeedLineSeries.LinePen.Color:=Motor4SpeedColor;

end;

procedure TForm1.Shape8Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape8.Brush.Color;
  if ColorDialog1.Execute then Shape8.Brush.Color := ColorDialog1.Color;

  Motor4TorqueColor:=Shape8.Brush.Color;
  Motor4TorqueLineSeries.LinePen.Color:=Motor4TorqueColor;

end;

procedure TForm1.Shape9Click(Sender: TObject);
begin
  ColorDialog1.Color:=Shape9.Brush.Color;
  if ColorDialog1.Execute then Shape9.Brush.Color := ColorDialog1.Color;

  Motor5SpeedColor:=Shape9.Brush.Color;
  Motor5SpeedLineSeries.LinePen.Color:=Motor5SpeedColor;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  fileout : TextFile;

begin
  if not TCP_UDPPort1.Active then
  begin
    Timer1.Enabled:=false;
    try CloseFile(fileout); except on E: EInOutError do log('147: TCP_UDPPort1 not Active'); end;
    Button3.Caption:='Start record';
    exit;
  end;
   //FormatFloat('####0.00',DB1_DBD68.Value)
  if(not Already_Header)  then
  begin
    try
      AssignFile(fileout, FileName_);
      rewrite (fileout);
      writeln(fileout,
      ComboBox1.Text+'L_Static='+','+DB112_DBD388_1.Value.ToString +','+
      ComboBox1.Text+'L_Dynamic='+','+DB112_DBD396_1.Value.ToString +','+
      ComboBox1.Text+'R_Static='+','+DB112_DBD392_1.Value.ToString +','+
      ComboBox1.Text+'R_Dynamic='+','+DB112_DBD400_1.Value.ToString +','+
      ComboBox2.Text+'L_Static='+','+DB112_DBD388_2.Value.ToString +','+
      ComboBox2.Text+'L_Dynamic='+','+DB112_DBD396_2.Value.ToString +','+
      ComboBox2.Text+'R_Static='+','+DB112_DBD392_2.Value.ToString +','+
      ComboBox2.Text+'R_Dynamic='+','+DB112_DBD400_2.Value.ToString +','+
      ComboBox3.Text+'L_Static='+','+DB112_DBD388_3.Value.ToString +','+
      ComboBox3.Text+'R_Dynamic='+','+DB112_DBD396_3.Value.ToString +','+
      ComboBox3.Text+'L_Static='+','+DB112_DBD392_3.Value.ToString +','+
      ComboBox3.Text+'R_Dynamic='+','+DB112_DBD400_3.Value.ToString);
      writeln(fileout, 'Date,Time,'+
      ComboBox1.Text+'L_SpeedSet'+','+ComboBox1.Text+'L_TorqueSet'+','+
      ComboBox1.Text+'L_SpeedAct'+','+ComboBox1.Text+'L_TorqueAct,'+
      ComboBox1.Text+'R_SpeedSet'+','+ComboBox1.Text+'R_TorqueSet'+','+
      ComboBox1.Text+'R_SpeedAct'+','+ComboBox1.Text+'R_TorqueAct,'+
      ComboBox2.Text+'L_SpeedSet'+','+ComboBox2.Text+'L_TorqueSet'+','+
      ComboBox2.Text+'L_SpeedAct'+','+ComboBox2.Text+'L_TorqueAct,'+
      ComboBox2.Text+'R_SpeedSet'+','+ComboBox2.Text+'R_TorqueSet'+','+
      ComboBox2.Text+'R_SpeedAct'+','+ComboBox2.Text+'R_TorqueAct,'+
      ComboBox3.Text+'L_SpeedSet'+','+ComboBox3.Text+'L_TorqueSet'+','+
      ComboBox3.Text+'L_SpeedAct'+','+ComboBox3.Text+'L_TorqueAct,'+
      ComboBox3.Text+'R_SpeedSet'+','+ComboBox3.Text+'R_TorqueSet'+','+
      ComboBox3.Text+'R_SpeedAct'+','+ComboBox3.Text+'R_TorqueAct'+','+

      'MainDrive_SpeedSet'+','+'MainDrive_SpeedAct'+','+
      'MainDrive_Start'+','+
      'InternalLength'+','+'ExternalLength'+','+
      'InternalTorqueRamp'+','+'ExternalTorqueRamp');

      CloseFile(fileout);
      Already_Header:=true;
    except
      on E: EInOutError do
      begin
        log('AssignFile line 175: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
        File_OK:=False;
        Button3.Caption:='Start record';
        Timer1.Enabled:=false;
        exit;
      end;
    end;
  end;

  //if File_OK then showmessage('File_OK=OK');
  //if not File_OK then showmessage('File_OK=not OK');
  //Timer3.Enabled:=False;

   try
     AssignFile(fileout, FileName_);
     Append(fileout);
     writeln(fileout, FormatDateTime('DD/MM/YYYY',Now)+','+FormatDateTime('hh:nn:ss',Now)+','+
     DB112_DBW310_1.Value.ToString+','+DB112_DBW312_1.Value.ToString+','+
     DB112_DBW320_1.Value.ToString+','+DB112_DBW322_1.Value.ToString+','+
     DB112_DBW332_1.Value.ToString+','+DB112_DBW334_1.Value.ToString+','+
     DB112_DBW342_1.Value.ToString+','+DB112_DBW344_1.Value.ToString+','+
     DB112_DBW310_2.Value.ToString+','+DB112_DBW312_2.Value.ToString+','+
     DB112_DBW320_2.Value.ToString+','+DB112_DBW322_2.Value.ToString+','+
     DB112_DBW332_2.Value.ToString+','+DB112_DBW334_2.Value.ToString+','+
     DB112_DBW342_2.Value.ToString+','+DB112_DBW344_2.Value.ToString+','+
     DB112_DBW310_3.Value.ToString+','+DB112_DBW312_3.Value.ToString+','+
     DB112_DBW320_3.Value.ToString+','+DB112_DBW322_3.Value.ToString+','+
     DB112_DBW332_3.Value.ToString+','+DB112_DBW334_3.Value.ToString+','+
     DB112_DBW342_3.Value.ToString+','+DB112_DBW344_3.Value.ToString+','+

     DB100_DBW200.Value.ToString+','+DB100_DBW228.Value.ToString+','+
     DB100_DBB306_0.Value.ToString+','+
     FormatFloat('0.00',MD40.Value)+','+FormatFloat('0.00',MD50.Value)+','+
     MB90.Value.ToString+','+MB91.Value.ToString);

     CloseFile(fileout);
   except
     on E: EInOutError do
      begin
        log('AssignFile line 207: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
        File_OK:=False;
        Button3.Caption:='Start record';
        Timer1.Enabled:=false;
        exit;
      end;
   end;

//   try         //FloatToStr(Int(Random(1*10)))
//     if not TCP_UDPPort1.Active then
//     begin
//       writeln(fileout, FormatDateTime('DD/MM/YYYY',Now)+','+FormatDateTime('hh:nn:ss',Now)+',-,-,-,-,-,-,-');
//     end;
//     if TCP_UDPPort1.Active then
//     begin
//       //FormatFloat('####0.00',DB3_DBD12.Value)//FloatToStr(Q1_7.Value)
//       //Date,                             Time,                           I_DC,                                    V_DC,                                    V_Out,                                   LineSpeed,                                Power_Out,                                PowerSetSpecPower,                       SpecificPower
//       //FormatDateTime('DD/MM/YYYY',Now), FormatDateTime('hh:nn:ss',Now), FormatFloat('####0.00',DB1_DBD68.Value), FormatFloat('####0.00',DB1_DBD72.Value), FormatFloat('####0.00',DB1_DBD76.Value), FormatFloat('####0.00',DB1_DBD252.Value), FormatFloat('####0.00',DB1_DBD258.Value), FormatFloat('####0.00',DB1_DBD48.Value), FormatFloat('####0.00',DB1_DBD278.Value)
//       writeln(fileout, FormatDateTime('DD/MM/YYYY',Now)+','+FormatDateTime('hh:nn:ss',Now)+','+FormatFloat('####0.00',DB1_DBD68.Value)+','+FormatFloat('####0.00',DB1_DBD72.Value)+','+FormatFloat('####0.00',DB1_DBD76.Value)+','+FormatFloat('####0.00',DB1_DBD252.Value)+','+FormatFloat('####0.00',DB1_DBD258.Value)+','+FormatFloat('####0.00',DB1_DBD48.Value)+','+FormatFloat('####0.00',DB1_DBD278.Value));
//     end;
//     CloseFile(fileout);
//   except
//     //on E: EInOutError do
//     //showmessage('Append: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
//   end;
//
//   Randomize();
//
//  MaxRecordTime:=60*60*12;
//  if Motor1SpeedChart.Count >= MaxRecordTime then
//  begin
//    for i:=0 to MaxRecordTime-2 do
//    begin
//      Motor1SpeedChart.Item[i]^.Y:=Motor1SpeedChart.Item[i+1]^.Y;
//      Motor1SpeedChart.Item[i]^.Text:=Motor1SpeedChart.Item[i+1]^.Text;
//
//      Motor4SpeedChart.Item[i]^.Y:=Motor4SpeedChart.Item[i+1]^.Y;
//      Motor4SpeedChart.Item[i]^.Text:=Motor4SpeedChart.Item[i+1]^.Text;
//
//      Motor5SpeedChart.Item[i]^.Y:=Motor5SpeedChart.Item[i+1]^.Y;
//      Motor5SpeedChart.Item[i]^.Text:=Motor5SpeedChart.Item[i+1]^.Text;
//
//    end;
//    Motor1SpeedChart.Delete(MaxRecordTime-1);
//    Motor4SpeedChart.Delete(MaxRecordTime-1);
//    Motor5SpeedChart.Delete(MaxRecordTime-1);
//  end;
//
//
//  Txt:=FormatDateTime('hh',  Now)+':'+FormatDateTime('nn',  Now)+':'+FormatDateTime('ss',  Now);
//
//  if TCP_UDPPort1.Active then Ra:= DB1_DBD68.Value;
//  if not TCP_UDPPort1.Active then Ra:=0.0;
//  if ChartSimulate then Ra:= Int(Random(1*1000));
//  if Chart1.Extent.YMax<Ra then Chart1.Extent.YMax:=Ra+1;
//  if Chart1.Extent.YMin>Ra then Chart1.Extent.YMin:=Ra-1;
//  if Motor1SpeedChart.Count < MaxRecordTime then Motor1SpeedChart.Add(Motor1SpeedChart.Count,Ra,Txt,clBlue);    //Motor1_SpeedActCheckBox  DB1_DBD68
//
//  if TCP_UDPPort1.Active then Ra:= DB1_DBD72.Value;
//  if not TCP_UDPPort1.Active then Ra:=0.0;
//  if ChartSimulate then Ra:= Int(Random(1*1000));
//  if Chart1.Extent.YMax<Ra then Chart1.Extent.YMax:=Ra+1;
//  if Chart1.Extent.YMin>Ra then Chart1.Extent.YMin:=Ra-1;
//  if Motor4SpeedChart.Count < MaxRecordTime then Motor2SpeedChart.Add(Motor2SpeedChart.Count,Ra,Txt,clMaroon); //V_DC  DB1_DBD72
//
//  if TCP_UDPPort1.Active then Ra:= DB1_DBD76.Value;
//  if not TCP_UDPPort1.Active then Ra:=0.0;
//  if ChartSimulate then Ra:= Int(Random(1*1000));
//  if Chart1.Extent.YMax<Ra then Chart1.Extent.YMax:=Ra+1;
//  if Chart1.Extent.YMin>Ra then Chart1.Extent.YMin:=Ra-1;
//  if Motor5SpeedChart.Count < MaxRecordTime then Motor3SpeedChart.Add(Motor3SpeedChart.Count,Ra,Txt,clFuchsia);   //LineSpeed  DB1_DBD76
//
//  if TCP_UDPPort1.Active then Ra:= DB1_DBD252.Value;
//  if not TCP_UDPPort1.Active then Ra:=0.0;
//  if ChartSimulate then Ra:= Int(Random(1*1000));
//  if Chart1.Extent.YMax<Ra then Chart1.Extent.YMax:=Ra+1;
//  if Chart1.Extent.YMin>Ra then Chart1.Extent.YMin:=Ra-1;
//  if Motor5SpeedChart.Count < MaxRecordTime then Motor4SpeedChart.Add(Motor4SpeedChart.Count,Ra,Txt,clGreen);   //Power_Out  DB1_DBD252
//
//  if TCP_UDPPort1.Active then Ra:= DB1_DBD258.Value;
//  if not TCP_UDPPort1.Active then Ra:=0.0;
//  if ChartSimulate then Ra:= Int(Random(1*1000));
//  if Chart1.Extent.YMax<Ra then Chart1.Extent.YMax:=Ra+1;
//  if Chart1.Extent.YMin>Ra then Chart1.Extent.YMin:=Ra-1;
//  if Motor5SpeedChart.Count < MaxRecordTime then Motor5SpeedChart.Add(Motor5SpeedChart.Count,Ra,Txt,clRed);   //V_Out  DB1_DBD258
//
//If (Motor1SpeedChart.Count>240) and (Chart1.Tag = 0) then
//  begin
//    Chart1.BottomAxis.Range.Max:=Motor1SpeedChart.Count;
//    //Chart1.BottomAxis.Range.UseMax:=True;
//    Chart1.BottomAxis.Range.Min:=Motor1SpeedChart.Count-240;
//    //Chart1.BottomAxis.Range.UseMin:=True;
//    Chart1.Extent.XMin:=Motor1SpeedChart.Count-240;  Chart1.Extent.XMax:=Motor1SpeedChart.Count;
//  end;
//  If (Motor1SpeedChart.Count<=240) and (Chart1.Tag = 0) then
//  begin
//    if(Motor1SpeedChart.Count<=60)then
//    Chart1.BottomAxis.Range.Max:=60;
//    if(Motor1SpeedChart.Count>60)then
//    Chart1.BottomAxis.Range.Max:=Motor1SpeedChart.Count;
//    Chart1.BottomAxis.Range.Min:=0;
//    Chart1.Extent.XMin:=0;
//    if(Motor1SpeedChart.Count<=60)then
//    Chart1.Extent.XMax:=60;
//    if(Motor1SpeedChart.Count>60)then
//    Chart1.Extent.XMax:=Motor1SpeedChart.Count;
//  end;
//
//  if not TCP_UDPPort1.Active then
//  begin
//    HMI_Speed.Visible:=false;
//    HMI_Idc.Visible:=false;
//    HMI_Vdc.Visible:=false;
//    HMI_Vout.Visible:=false;
//    HMI_PwrOut.Visible:=false;
//    HMILabel1.Visible:=false;
//    HMI_SpecificPowerAct.Visible:=false;
//    ProgressBar_PwrOut.Position:= round(0);
//    ProgressBar_PL.Position:= round(0);
//    ProgressBar_ACT.Position:= round(0);
//    Shape_Emergency.Visible:=false;
//    Shape_OzoneSuction.Visible:=false;
//    Shape_VccFault.Visible:=false;
//    Shape_ThermalSwitch.Visible:=false;
//    Shape_OverloadIdc.Visible:=false;
//    Shape_HVDischarge.Visible:=false;
//    Shape_InterlockCor.Visible:=false;
//    Shape_LowSpeed.Visible:=false;
//    Shape_StationOpen.Visible:=false;
//    Shape_PowerAlarm.Visible:=false;
//  end;
//  if TCP_UDPPort1.Active then
//  begin
//    HMI_Speed.Visible:=true;
//    HMI_Idc.Visible:=true;
//    HMI_Vdc.Visible:=true;
//    HMI_Vout.Visible:=true;
//    HMI_PwrOut.Visible:=true;
//    HMILabel1.Visible:=true;
//    HMI_SpecificPowerAct.Visible:=true;
//    ProgressBar_PwrOut.Position:= round(DB1_DBD258.Value);
//    ProgressBar_PL.Position:= round(DB1_DBD48.Value);
//    ProgressBar_ACT.Position:= round(DB1_DBD278.Value);
//    Shape_Emergency.Visible:=true;
//    Shape_OzoneSuction.Visible:=true;
//    Shape_VccFault.Visible:=true;
//    Shape_ThermalSwitch.Visible:=true;
//    Shape_OverloadIdc.Visible:=true;
//    Shape_HVDischarge.Visible:=true;
//    Shape_InterlockCor.Visible:=true;
//    Shape_LowSpeed.Visible:=true;
//    Shape_StationOpen.Visible:=true;
//    Shape_PowerAlarm.Visible:=true;
//    if DB1_DBB30_bit1.Value>0 then Shape_Emergency.Brush.Color:=clRed;
//    if DB1_DBB30_bit1.Value=0 then Shape_Emergency.Brush.Color:=clWhite;
//    if DB1_DBB30_bit0.Value>0 then Shape_OzoneSuction.Brush.Color:=clRed;
//    if DB1_DBB30_bit0.Value=0 then Shape_OzoneSuction.Brush.Color:=clWhite;
//    if DB1_DBB26_bit2.Value>0 then Shape_VccFault.Brush.Color:=clRed;
//    if DB1_DBB26_bit2.Value=0 then Shape_VccFault.Brush.Color:=clWhite;
//    if DB1_DBB26_bit3.Value>0 then Shape_ThermalSwitch.Brush.Color:=clRed;
//    if DB1_DBB26_bit3.Value=0 then Shape_ThermalSwitch.Brush.Color:=clWhite;
//    if DB1_DBB34_bit0.Value>0 then Shape_OverloadIdc.Brush.Color:=clRed;
//    if DB1_DBB34_bit0.Value=0 then Shape_OverloadIdc.Brush.Color:=clWhite;
//    if DB1_DBB38_bit0.Value>0 then Shape_HVDischarge.Brush.Color:=clRed;
//    if DB1_DBB38_bit0.Value=0 then Shape_HVDischarge.Brush.Color:=clWhite;
//    if DB1_DBB38_bit1.Value>0 then Shape_InterlockCor.Brush.Color:=clRed;
//    if DB1_DBB38_bit1.Value=0 then Shape_InterlockCor.Brush.Color:=clWhite;
//
//    if DB1_DBB22_bit3.Value>0 then Shape_LowSpeed.Brush.Color:=clYellow;
//    if DB1_DBB22_bit3.Value=0 then Shape_LowSpeed.Brush.Color:=clWhite;
//    if DB1_DBB22_bit1.Value>0 then Shape_StationOpen.Brush.Color:=clYellow;
//    if DB1_DBB22_bit1.Value=0 then Shape_StationOpen.Brush.Color:=clWhite;
//    if DB1_DBB22_bit6.Value>0 then Shape_PowerAlarm.Brush.Color:=clYellow;
//    if DB1_DBB22_bit6.Value=0 then Shape_PowerAlarm.Brush.Color:=clWhite;
//
//  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  i:integer;
  //MaxRecordTime:integer;
  //Txt:String;

  MaxRecordTime:integer;
  Txt:String;
  Ra:Double;
  ChartSimulate: boolean;
begin
   Randomize();

  MaxRecordTime:=60*60*12;
  if Motor1SpeedChart.Count >= MaxRecordTime then
  begin
    for i:=0 to MaxRecordTime-2 do
    begin
      Motor1SpeedChart.Item[i]^.Y:=Motor1SpeedChart.Item[i+1]^.Y;
      Motor1SpeedChart.Item[i]^.Text:=Motor1SpeedChart.Item[i+1]^.Text;

      Motor2SpeedChart.Item[i]^.Y:=Motor2SpeedChart.Item[i+1]^.Y;
      Motor2SpeedChart.Item[i]^.Text:=Motor2SpeedChart.Item[i+1]^.Text;

      Motor3SpeedChart.Item[i]^.Y:=Motor3SpeedChart.Item[i+1]^.Y;
      Motor3SpeedChart.Item[i]^.Text:=Motor3SpeedChart.Item[i+1]^.Text;

      Motor4SpeedChart.Item[i]^.Y:=Motor4SpeedChart.Item[i+1]^.Y;
      Motor4SpeedChart.Item[i]^.Text:=Motor4SpeedChart.Item[i+1]^.Text;

      Motor5SpeedChart.Item[i]^.Y:=Motor5SpeedChart.Item[i+1]^.Y;
      Motor5SpeedChart.Item[i]^.Text:=Motor5SpeedChart.Item[i+1]^.Text;

      Motor6SpeedChart.Item[i]^.Y:=Motor6SpeedChart.Item[i+1]^.Y;
      Motor6SpeedChart.Item[i]^.Text:=Motor6SpeedChart.Item[i+1]^.Text;

      Motor1TorqueChart.Item[i]^.Y:=Motor1TorqueChart.Item[i+1]^.Y;
      Motor1TorqueChart.Item[i]^.Text:=Motor1TorqueChart.Item[i+1]^.Text;

      Motor2TorqueChart.Item[i]^.Y:=Motor2TorqueChart.Item[i+1]^.Y;
      Motor2TorqueChart.Item[i]^.Text:=Motor2TorqueChart.Item[i+1]^.Text;

      Motor3TorqueChart.Item[i]^.Y:=Motor3TorqueChart.Item[i+1]^.Y;
      Motor3TorqueChart.Item[i]^.Text:=Motor3TorqueChart.Item[i+1]^.Text;

      Motor4TorqueChart.Item[i]^.Y:=Motor4TorqueChart.Item[i+1]^.Y;
      Motor4TorqueChart.Item[i]^.Text:=Motor4TorqueChart.Item[i+1]^.Text;

      Motor5TorqueChart.Item[i]^.Y:=Motor5TorqueChart.Item[i+1]^.Y;
      Motor5TorqueChart.Item[i]^.Text:=Motor5TorqueChart.Item[i+1]^.Text;

      Motor6TorqueChart.Item[i]^.Y:=Motor6TorqueChart.Item[i+1]^.Y;
      Motor6TorqueChart.Item[i]^.Text:=Motor6TorqueChart.Item[i+1]^.Text;
    end;
    Motor1SpeedChart.Delete(MaxRecordTime-1);
    Motor2SpeedChart.Delete(MaxRecordTime-1);
    Motor3SpeedChart.Delete(MaxRecordTime-1);
    Motor4SpeedChart.Delete(MaxRecordTime-1);
    Motor5SpeedChart.Delete(MaxRecordTime-1);
    Motor6SpeedChart.Delete(MaxRecordTime-1);
    Motor1TorqueChart.Delete(MaxRecordTime-1);
    Motor2TorqueChart.Delete(MaxRecordTime-1);
    Motor3TorqueChart.Delete(MaxRecordTime-1);
    Motor4TorqueChart.Delete(MaxRecordTime-1);
    Motor5TorqueChart.Delete(MaxRecordTime-1);
    Motor6TorqueChart.Delete(MaxRecordTime-1);
  end;

  ChartSimulate:=true;
  Txt:=FormatDateTime('hh',  Now)+':'+FormatDateTime('nn',  Now)+':'+FormatDateTime('ss',  Now);

  Ra:= DB112_DBW320_1.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*950));
  if Motor1SpeedMax<Ra then Motor1SpeedMax:=Ra+1;
  if Motor1SpeedMin>Ra then Motor1SpeedMin:=Ra-1;
  if Motor1SpeedChart.Count < MaxRecordTime then Motor1SpeedChart.Add(Motor1SpeedChart.Count,Ra,Txt);   //,Motor1SpeedColor);

  Ra:= DB112_DBW342_1.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*900));
  if Motor2SpeedMax<Ra then Motor2SpeedMax:=Ra+1;
  if Motor2SpeedMin>Ra then Motor2SpeedMin:=Ra-1;
  if Motor2SpeedChart.Count < MaxRecordTime then Motor2SpeedChart.Add(Motor2SpeedChart.Count,Ra,Txt);   //,Motor2SpeedColor);

  Ra:= DB112_DBW320_2.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*850));
  if Motor3SpeedMax<Ra then Motor3SpeedMax:=Ra+1;
  if Motor3SpeedMin>Ra then Motor3SpeedMin:=Ra-1;
  if Motor3SpeedChart.Count < MaxRecordTime then Motor3SpeedChart.Add(Motor3SpeedChart.Count,Ra,Txt);  //,Motor3SpeedColor);

  Ra:= DB112_DBW342_2.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*800));
  if Motor4SpeedMax<Ra then Motor4SpeedMax:=Ra+1;
  if Motor4SpeedMin>Ra then Motor4SpeedMin:=Ra-1;
  if Motor4SpeedChart.Count < MaxRecordTime then Motor4SpeedChart.Add(Motor4SpeedChart.Count,Ra,Txt);  //,Motor4SpeedColor);

  Ra:= DB112_DBW320_3.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*750));
  if Motor5SpeedMax<Ra then Motor5SpeedMax:=Ra+1;
  if Motor5SpeedMin>Ra then Motor5SpeedMin:=Ra-1;
  if Motor5SpeedChart.Count < MaxRecordTime then Motor5SpeedChart.Add(Motor5SpeedChart.Count,Ra,Txt); //,Motor5SpeedColor);

  Ra:= DB112_DBW342_3.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*700));
  if Motor6SpeedMax<Ra then Motor6SpeedMax:=Ra+1;
  if Motor6SpeedMin>Ra then Motor6SpeedMin:=Ra-1;
  if Motor6SpeedChart.Count < MaxRecordTime then Motor6SpeedChart.Add(Motor6SpeedChart.Count,Ra,Txt);  //,Motor6SpeedColor);


  Ra:= DB112_DBW322_1.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*20));
  if Motor1TorqueMax<Ra then Motor1TorqueMax:=Ra+1;
  if Motor1TorqueMin>Ra then Motor1TorqueMin:=Ra-1;
  if Motor1TorqueChart.Count < MaxRecordTime then Motor1TorqueChart.Add(Motor1TorqueChart.Count,Ra,Txt);  //,Motor1TorqueColor);

  Ra:= DB112_DBW344_1.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*18));
  if Motor2TorqueMax<Ra then Motor2TorqueMax:=Ra+1;
  if Motor2TorqueMin>Ra then Motor2TorqueMin:=Ra-1;
  if Motor2TorqueChart.Count < MaxRecordTime then Motor2TorqueChart.Add(Motor2TorqueChart.Count,Ra,Txt);   //,Motor2TorqueColor);

  Ra:= DB112_DBW322_2.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*16));
  if Motor3TorqueMax<Ra then Motor3TorqueMax:=Ra+1;
  if Motor3TorqueMin>Ra then Motor3TorqueMin:=Ra-1;
  if Motor3TorqueChart.Count < MaxRecordTime then Motor3TorqueChart.Add(Motor3TorqueChart.Count,Ra,Txt); //,Motor3TorqueColor);

  Ra:= DB112_DBW344_2.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*14));
  if Motor4TorqueMax<Ra then Motor4TorqueMax:=Ra+1;
  if Motor4TorqueMin>Ra then Motor4TorqueMin:=Ra-1;
  if Motor4TorqueChart.Count < MaxRecordTime then Motor4TorqueChart.Add(Motor4TorqueChart.Count,Ra,Txt);  //,Motor4TorqueColor);

  Ra:= DB112_DBW322_3.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*12));
  if Motor5TorqueMax<Ra then Motor5TorqueMax:=Ra+1;
  if Motor5TorqueMin>Ra then Motor5TorqueMin:=Ra-1;
  if Motor5TorqueChart.Count < MaxRecordTime then Motor5TorqueChart.Add(Motor5TorqueChart.Count,Ra,Txt);   //,Motor5TorqueColor);

  Ra:= DB112_DBW344_3.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*10));
  if Motor6TorqueMax<Ra then Motor6TorqueMax:=Ra+1;
  if Motor6TorqueMin>Ra then Motor6TorqueMin:=Ra-1;
  if Motor6TorqueChart.Count < MaxRecordTime then Motor6TorqueChart.Add(Motor6TorqueChart.Count,Ra,Txt);    //,Motor6TorqueColor);

  AdjustChatrSize();

  If (Motor1SpeedChart.Count>1800) and (Chart1.Tag = 0) then
  begin
    Chart1.BottomAxis.Range.Max:=Motor1SpeedChart.Count;
    //Chart1.BottomAxis.Range.UseMax:=True;
    Chart1.BottomAxis.Range.Min:=Motor1SpeedChart.Count-1800;
    //Chart1.BottomAxis.Range.UseMin:=True;
    Chart1.Extent.XMin:=Motor1SpeedChart.Count-1800;  Chart1.Extent.XMax:=Motor1SpeedChart.Count;
  end;
  If (Motor1SpeedChart.Count<=1800) and (Chart1.Tag = 0) then
  begin
    if(Motor1SpeedChart.Count<=60)then
    Chart1.BottomAxis.Range.Max:=60;
    if(Motor1SpeedChart.Count>60)then
    Chart1.BottomAxis.Range.Max:=Motor1SpeedChart.Count;
    Chart1.BottomAxis.Range.Min:=0;
    Chart1.Extent.XMin:=0;
    if(Motor1SpeedChart.Count<=60)then
    Chart1.Extent.XMax:=60;
    if(Motor1SpeedChart.Count>60)then
    Chart1.Extent.XMax:=Motor1SpeedChart.Count;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit6.Caption:=RepairIPAddress(Edit6.Caption);
  TCP_UDPPort1.Host:=Edit6.Caption;
  Memo1.Append('TCP_UDPPort1 = Active');
  Edit5.Enabled:=false;
  Edit6.Enabled:=false;
  TCP_UDPPort1.Active:=true;
end;

procedure TForm1.ATTabs1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=ATTabs1.TabIndex;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  Timer2.Enabled:=false;
  Memo1.Append('TCP_UDPPort1 = Deactive');
  Edit5.Enabled:=true;
  Edit6.Enabled:=true;
  TCP_UDPPort1.Active:=false;
  Button3.Caption:='Start record';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i:integer;
  fileout : TextFile;

begin
  if not TCP_UDPPort1.Active then
  begin
    Timer1.Enabled:=false;
    Timer2.Enabled:=false;
    try CloseFile(fileout); except on E: EInOutError do log('416: TCP_UDPPort1 not Active'); end;
    Button3.Caption:='Start record';
    exit;
  end;

  if (Timer1.Enabled) then
  begin
    Timer1.Enabled:=false;
    Timer2.Enabled:=false;
    Button3.Caption:='Start record';
    exit;
  end;

  Button3.Caption:='Stop record';

  Already_Header:=false;

  if (FormatDateTime('MM YYYY',Now)<>Directory_) then
  begin
    Directory_:=FormatDateTime('MM YYYY',Now); FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.CSV';
  end;
  if CheckDirectory(Directory_,Memo1) then begin Application.Terminate; end;

  FileName_:=Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.CSV';
  i:=0;

  if FileExists(FileName_) Then
  while((File_OK = False) and (i<10000)) do
  begin
    i:=i+1;
    FileName_:=Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'_'+IntToStr(i)+'.CSV';
    if Not FileExists(FileName_) Then  File_OK:=True;
  end;

  if Not FileExists(FileName_) Then
  begin
    try
      AssignFile(fileout, FileName_);
      rewrite (fileout);
      writeln(fileout,
      ComboBox1.Text+'L_Static='+','+DB112_DBD388_1.Value.ToString +','+
      ComboBox1.Text+'L_Dynamic='+','+DB112_DBD396_1.Value.ToString +','+
      ComboBox1.Text+'R_Static='+','+DB112_DBD392_1.Value.ToString +','+
      ComboBox1.Text+'R_Dynamic='+','+DB112_DBD400_1.Value.ToString +','+
      ComboBox2.Text+'L_Static='+','+DB112_DBD388_2.Value.ToString +','+
      ComboBox2.Text+'L_Dynamic='+','+DB112_DBD396_2.Value.ToString +','+
      ComboBox2.Text+'R_Static='+','+DB112_DBD392_2.Value.ToString +','+
      ComboBox2.Text+'R_Dynamic='+','+DB112_DBD400_2.Value.ToString +','+
      ComboBox3.Text+'L_Static='+','+DB112_DBD388_3.Value.ToString +','+
      ComboBox3.Text+'R_Dynamic='+','+DB112_DBD396_3.Value.ToString +','+
      ComboBox3.Text+'L_Static='+','+DB112_DBD392_3.Value.ToString +','+
      ComboBox3.Text+'R_Dynamic='+','+DB112_DBD400_3.Value.ToString);
      writeln(fileout, 'Date,Time,'+
      ComboBox1.Text+'L_SpeedSet'+','+ComboBox1.Text+'L_TorqueSet'+','+
      ComboBox1.Text+'L_SpeedAct'+','+ComboBox1.Text+'L_TorqueAct,'+
      ComboBox1.Text+'R_SpeedSet'+','+ComboBox1.Text+'R_TorqueSet'+','+
      ComboBox1.Text+'R_SpeedAct'+','+ComboBox1.Text+'R_TorqueAct,'+
      ComboBox2.Text+'L_SpeedSet'+','+ComboBox2.Text+'L_TorqueSet'+','+
      ComboBox2.Text+'L_SpeedAct'+','+ComboBox2.Text+'L_TorqueAct,'+
      ComboBox2.Text+'R_SpeedSet'+','+ComboBox2.Text+'R_TorqueSet'+','+
      ComboBox2.Text+'R_SpeedAct'+','+ComboBox2.Text+'R_TorqueAct,'+
      ComboBox3.Text+'L_SpeedSet'+','+ComboBox3.Text+'L_TorqueSet'+','+
      ComboBox3.Text+'L_SpeedAct'+','+ComboBox3.Text+'L_TorqueAct,'+
      ComboBox3.Text+'R_SpeedSet'+','+ComboBox3.Text+'R_TorqueSet'+','+
      ComboBox3.Text+'R_SpeedAct'+','+ComboBox3.Text+'R_TorqueAct'+','+

      'MainDrive_SpeedSet'+','+'MainDrive_SpeedAct'+','+
      'MainDrive_Start'+','+
      'InternalLength'+','+'ExternalLength'+','+
      'InternalTorqueRamp'+','+'ExternalTorqueRamp');

      CloseFile(fileout);
      Already_Header:=true;
      File_OK:=True;
    except
      on E: EInOutError do
      begin
        log('AssignFile line 473: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
        Already_Header:=false;
        File_OK:=False;
        Timer1.Enabled:=false;
        Timer2.Enabled:=false;
        Button3.Caption:='Start record';
        exit;
      end;
    end;
  end;

  try
    AssignFile(fileout, FileName_);
    //CloseFile(fileout);
  except
    on E: EInOutError do
    begin
      log('AssignFile line 489: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
      File_OK:=False;
      Timer1.Enabled:=false;
      Timer2.Enabled:=false;
      Button3.Caption:='Start record';
      exit;
    end;
  end;


  //if File_OK then showmessage('File_OK=OK');
  //if not File_OK then showmessage('File_OK=not OK');
  //Timer3.Enabled:=False;

  log(FileName_);

  Timer1.Enabled:=true;

  Motor1SpeedChart.Clear;
  Motor2SpeedChart.Clear;
  Motor3SpeedChart.Clear;
  Motor4SpeedChart.Clear;
  Motor5SpeedChart.Clear;
  Motor6SpeedChart.Clear;

  Motor1TorqueChart.Clear;
  Motor2TorqueChart.Clear;
  Motor3TorqueChart.Clear;
  Motor4TorqueChart.Clear;
  Motor5TorqueChart.Clear;
  Motor6TorqueChart.Clear;

  Chart1.Extent.YMax:=2;
  Chart1.Extent.YMin:=0;

  Timer2.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Motor1SpeedChart.Clear;
  Motor2SpeedChart.Clear;
  Motor3SpeedChart.Clear;
  Motor4SpeedChart.Clear;
  Motor5SpeedChart.Clear;
  Motor6SpeedChart.Clear;

  Motor1TorqueChart.Clear;
  Motor2TorqueChart.Clear;
  Motor3TorqueChart.Clear;
  Motor4TorqueChart.Clear;
  Motor5TorqueChart.Clear;
  Motor6TorqueChart.Clear;
  Timer2.Enabled:=true;
end;

procedure TForm1.ComboBox1EditingDone(Sender: TObject);
begin
  DB1XX1.MemFile_DB:=(100+ComboBox1.ItemIndex+1);
  DBStaticXXX1.MemFile_DB:=(100+ComboBox1.ItemIndex+1);
end;

procedure TForm1.ComboBox2EditingDone(Sender: TObject);
begin
  DB1XX2.MemFile_DB:=(100+ComboBox2.ItemIndex+1);
  DBStaticXXX2.MemFile_DB:=(100+ComboBox2.ItemIndex+1);
end;

procedure TForm1.ComboBox3EditingDone(Sender: TObject);
begin
  DB1XX3.MemFile_DB:=(100+ComboBox3.ItemIndex+1);
  DBStaticXXX3.MemFile_DB:=(100+ComboBox3.ItemIndex+1);
end;

procedure TForm1.Edit5EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Try
    i:=StrToInt(Edit5.Caption);
  except
    On E : EConvertError do
      i:=502;
  end;
  Edit5.Caption:= IntToStr(i);
  TCP_UDPPort1.Port:=i;
end;

procedure TForm1.Edit6EditingDone(Sender: TObject);
begin
  Edit6.Caption:=RepairIPAddress(Edit6.Caption);
end;

procedure TForm1.Log(const s : string);
begin
  Memo1.Lines.Add(s);
end;

procedure TForm1.Log(const Fmt : String; const Args : array of const);
begin
  Log(Format(Fmt,Args));
end;

Function TForm1.CheckFile(C_DNAME: string; C_FNAME: string; Debug_:TMemo):boolean; //True=Error
var
  tfOut: TextFile;
begin
  result:= false;

  if(C_DNAME<>'')then
  if Not DirectoryExists(C_DNAME) Then
  begin
    {$I-}
    //{$I-} or {$IOCHECKS OFF}
    //{$I-} rewrite (f); {$I+}
    //if IOResult<>0 then begin Writeln ('Error opening file: "file.txt"'); exit; end;
    mkdir(C_DNAME);
    {$I+}
    if IOResult<>0 then
    begin
      Debug_.Append('Directory '+C_DNAME+' error occurred. Details: '+ EInOutError.ClassName);
      ShowMessage('Cannot create '+C_DNAME+' directory. Details: '+ EInOutError.ClassName);
      result:= true;
    end;
  end;

  if(C_FNAME<>'')then
  if DirectoryExists(C_DNAME) Then
  If Not FileExists(C_FNAME) Then
  begin
    AssignFile(tfOut, C_FNAME);
    {$I+}
    try
      rewrite(tfOut);
      CloseFile(tfOut);
    except
      on E: EInOutError do
      begin
        Debug_.Append('File '+C_FNAME+' handling error occurred. Details: '+ EInOutError.ClassName);
        showmessage('File '+C_FNAME+' handling error occurred. Details: '+ E.ClassName+ '/'+ E.Message);
        result:= true;
      end;
    end;
  end;

end;

Function TForm1.CheckDirectory(C_DNAME: string;Debug_:TMemo):boolean; //True=Error
begin
  result:= false;

  if(C_DNAME<>'')then
  if Not DirectoryExists(C_DNAME) Then
  begin
    {$I-}
    //{$I-} or {$IOCHECKS OFF}
    //{$I-} rewrite (f); {$I+}
    //if IOResult<>0 then begin Writeln ('Error opening file: "file.txt"'); exit; end;
    mkdir(C_DNAME);
    {$I+}
    if IOResult<>0 then
    begin
      Debug_.Append('Directory '+C_DNAME+' error occurred. Details: '+ EInOutError.ClassName);
      ShowMessage('Cannot create '+C_DNAME+' directory. Details: '+ EInOutError.ClassName);
      result:= true;
    end;
  end;

end;
Function TForm1.DoubleBooleanToStr(DoubleBoolean: double):string;
begin
  result:='False';
  if DoubleBoolean<=0 then result:='False';
  if DoubleBoolean>0 then result:='True';
end;

function TForm1.RepairIPAddress(s: string):string;
var
  i:integer;
  k:integer;
  s2:string;
  c:integer;
  A_s: TStringArray;
begin

  //Edit1.Text:=chr(ord('0'));
  //Edit1.Text:=IntToStr(ord('9');

  s:=Trim(s);
  //s:=leftstr(s,15);

  s2:='';
  for i:=1 to length(s) do
  begin
    if (((ord(s[i]) >= 48) and (ord(s[i]) <= 57)) or (s[i] = '.')) then s2:=s2+s[i];
  end;
  s:=s2;

  if length(s) = 0 then s:=s+'0.0.0.0';

  if (s[1] = '.') then s:='0'+s;

  k:=0;
  for i:=1 to length(s) do
  begin
    if(s[i] = '.') then k:=k+1;
  end;
  if k=0 then s:=s+'.0.0.0';
  if k=1 then s:=s+'.0.0';
  if k=2 then s:=s+'.0';
  if s[length(s)]='.' then s:=s+'0';

  k:=0;
  c:=0;
  s2:='';
  for i:=1 to length(s) do
  begin
    if(s[i] = '.') then begin k:=k+1; c:=0; end;
    if (k>3) then
      begin
        s2:=s2;
      end
    else
      begin
        if not(s[i] = '.')then c:=c+1;
        if (c<=3) then s2:=s2+s[i];
      end;
  end;
  s:=s2;

  A_s:=SplitString(s,'.');

  k:=0;
  Try
    k:=StrToInt(A_s[0]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=IntToStr(k);

  k:=0;
  Try
    k:=StrToInt(A_s[1]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=s+'.'+IntToStr(k);

  k:=0;
  Try
    k:=StrToInt(A_s[2]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=s+'.'+IntToStr(k);

  k:=0;
  Try
    k:=StrToInt(A_s[3]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=s+'.'+IntToStr(k);

  result := s;
end;

end.

