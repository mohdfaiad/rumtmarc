unit NOT_FINISHED_nevFontPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/new/NOT_FINISHED_nevFontPrim.pas"
// �����: 20.05.2005 19:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParagraphsImplementation::TnevFontPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  l3CacheableBase,
  nevTools,
  l3Interfaces,
  nevBase
  ;

type
 TnevFontPrim = class(Tl3CacheableBase, InevFontPrim)
 protected
 // realized methods
   function SubFont(const aFont: InevFontPrim): Boolean;
     {* �������� �����. }
   function AsFont(CorrectItalic: Boolean): Il3Font;
     {* ����������� � Il3Font. }
   function GetParam(ItemIndex: TnevFontParam): Integer;
   procedure Set2Font(const aFont: Il3Font;
     CorrectItalic: Boolean);
     {* ����������� ���� Il3Font. }
   function Empty: Boolean;
   procedure MakeFontArray(BlockFont: Boolean);
   procedure InitFromTag(const aTag: InevTag);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
 end;//TnevFontPrim

implementation

// start class TnevFontPrim

function TnevFontPrim.SubFont(const aFont: InevFontPrim): Boolean;
//#UC START# *47C68D460114_48D1088D0147_var*
//#UC END# *47C68D460114_48D1088D0147_var*
begin
//#UC START# *47C68D460114_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68D460114_48D1088D0147_impl*
end;//TnevFontPrim.SubFont

function TnevFontPrim.AsFont(CorrectItalic: Boolean): Il3Font;
//#UC START# *47C68D5C02A2_48D1088D0147_var*
//#UC END# *47C68D5C02A2_48D1088D0147_var*
begin
//#UC START# *47C68D5C02A2_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68D5C02A2_48D1088D0147_impl*
end;//TnevFontPrim.AsFont

function TnevFontPrim.GetParam(ItemIndex: TnevFontParam): Integer;
//#UC START# *47C68DCA018A_48D1088D0147_var*
//#UC END# *47C68DCA018A_48D1088D0147_var*
begin
//#UC START# *47C68DCA018A_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68DCA018A_48D1088D0147_impl*
end;//TnevFontPrim.GetParam

procedure TnevFontPrim.Set2Font(const aFont: Il3Font;
  CorrectItalic: Boolean);
//#UC START# *47C68DD30320_48D1088D0147_var*
//#UC END# *47C68DD30320_48D1088D0147_var*
begin
//#UC START# *47C68DD30320_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68DD30320_48D1088D0147_impl*
end;//TnevFontPrim.Set2Font

function TnevFontPrim.Empty: Boolean;
//#UC START# *47C68DE50208_48D1088D0147_var*
//#UC END# *47C68DE50208_48D1088D0147_var*
begin
//#UC START# *47C68DE50208_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68DE50208_48D1088D0147_impl*
end;//TnevFontPrim.Empty

procedure TnevFontPrim.MakeFontArray(BlockFont: Boolean);
//#UC START# *47C68DEF0358_48D1088D0147_var*
//#UC END# *47C68DEF0358_48D1088D0147_var*
begin
//#UC START# *47C68DEF0358_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68DEF0358_48D1088D0147_impl*
end;//TnevFontPrim.MakeFontArray

procedure TnevFontPrim.InitFromTag(const aTag: InevTag);
//#UC START# *47C68DF90039_48D1088D0147_var*
//#UC END# *47C68DF90039_48D1088D0147_var*
begin
//#UC START# *47C68DF90039_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68DF90039_48D1088D0147_impl*
end;//TnevFontPrim.InitFromTag

procedure TnevFontPrim.Cleanup;
//#UC START# *479731C50290_48D1088D0147_var*
//#UC END# *479731C50290_48D1088D0147_var*
begin
//#UC START# *479731C50290_48D1088D0147_impl*
 !!! Needs to be implemented !!!
//#UC END# *479731C50290_48D1088D0147_impl*
end;//TnevFontPrim.Cleanup

end.