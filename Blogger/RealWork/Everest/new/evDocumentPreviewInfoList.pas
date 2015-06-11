unit evDocumentPreviewInfoList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/new/evDocumentPreviewInfoList.pas"
// �����: 28.03.2008 18:37
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::nevUtils::TevDocumentPreviewInfoList
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevTools,
  l3ProtoDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = IevDocumentPreviewInfo;
 _l3InterfaceRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3InterfaceRefList.imp.pas}
 TevDocumentPreviewInfoList = class(_l3InterfaceRefList_)
 public
 // public methods
   procedure StopAllPreviews;
     {* ���������� ���������� ������ }
 end;//TevDocumentPreviewInfoList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = TevDocumentPreviewInfoList;

{$Include w:\common\components\rtl\Garant\L3\l3InterfaceRefList.imp.pas}

// start class TevDocumentPreviewInfoList

procedure TevDocumentPreviewInfoList.StopAllPreviews;
//#UC START# *48046D0803DA_47ED10AF024F_var*
var
 l_IDX: Integer;
//#UC END# *48046D0803DA_47ED10AF024F_var*
begin
//#UC START# *48046D0803DA_47ED10AF024F_impl*
 for l_IDX := 0 to Count - 1 do
  Items[l_IDX].Preview.Stop;
//#UC END# *48046D0803DA_47ED10AF024F_impl*
end;//TevDocumentPreviewInfoList.StopAllPreviews

end.