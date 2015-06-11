{$IfNDef l3UnknownPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/NOT_FINISHED_l3UnknownPrim.imp.pas"
// �����: 2004/09/15 10:01:44
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3UnknownPrim
//
// �����-������� ����������� ������� ������ � �����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define l3UnknownPrim_imp}
 _l3CheckStamp_Parent_ = _l3UnknownPrim_Parent_;
 {$Include ..\L3\l3CheckStamp.imp.pas}
 _RefCountedPrim_Parent_ = _l3CheckStamp_;
 {$Include ..\L3\RefCountedPrim.imp.pas}
 _l3UnknownPrim_ = {mixin} class(_RefCountedPrim_, IUnknown)
  {* �����-������� ����������� ������� ������ � �����������. }
 public
 // realized methods
   function _AddRef: Integer; stdcall;
     {* ����������� ������� ������. }
   function _Release: Integer; stdcall;
     {* ��������� ������� ������. }
   function QueryInterface(const IID: TGUID;
    out Obj): HResult; stdcall;
     {* �������� ������� ��������� � ��������������, ���� ��� ��������. }
 protected
 // protected methods
   procedure ClearFields; virtual;
   procedure BeforeClearFields; virtual;
   procedure BeforeAddToCache; virtual;
     {* �������, ���������� ����� ����������� ������� � ��� ���������� �������������. }
   procedure InitFields; virtual;
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; virtual;
     {* ������� ������, ������������ ����� �� ������� ������� ������ �������� � ��� ���������� �������������. }
   {$IfEnd} //not DesignTimeLibrary
   procedure BeforeFree; virtual;
     {* �������, ���������� ��� ������ ���������� �������� ������ �� 1. ������ false ����� ��������� ����������� �������. }
   {$If defined(l3CheckUnfreedResources)}
   function CheckUnfreedResource(aPtrToResource: Pointer): Boolean; virtual;
     {* �������� �� ������ �� ���� ������� ��������� �� ������������� ��������.
              ���������� ��������� �� �� ���������� ��������� }
   {$IfEnd} //l3CheckUnfreedResources
   function NeedCleanupFields: Boolean; virtual;
 end;//_l3UnknownPrim_

{$Else l3UnknownPrim_imp}

{$Include ..\L3\l3CheckStamp.imp.pas}

{$Include ..\L3\RefCountedPrim.imp.pas}

// start class _l3UnknownPrim_

procedure _l3UnknownPrim_.ClearFields;
//#UC START# *5000565C019C_47913F4E02E0_var*
//#UC END# *5000565C019C_47913F4E02E0_var*
begin
//#UC START# *5000565C019C_47913F4E02E0_impl*
 !!! Needs to be implemented !!!
//#UC END# *5000565C019C_47913F4E02E0_impl*
end;//_l3UnknownPrim_.ClearFields

procedure _l3UnknownPrim_.BeforeClearFields;
//#UC START# *500056650395_47913F4E02E0_var*
//#UC END# *500056650395_47913F4E02E0_var*
begin
//#UC START# *500056650395_47913F4E02E0_impl*
 !!! Needs to be implemented !!!
//#UC END# *500056650395_47913F4E02E0_impl*
end;//_l3UnknownPrim_.BeforeClearFields

procedure _l3UnknownPrim_.BeforeAddToCache;
//#UC START# *479F2B3302C1_47913F4E02E0_var*
//#UC END# *479F2B3302C1_47913F4E02E0_var*
begin
//#UC START# *479F2B3302C1_47913F4E02E0_impl*
 assert(false, '_l3UnknownPrim_.BeforeAddToCache not implemented');
//#UC END# *479F2B3302C1_47913F4E02E0_impl*
end;//_l3UnknownPrim_.BeforeAddToCache

procedure _l3UnknownPrim_.InitFields;
//#UC START# *47A042E100E2_47913F4E02E0_var*
//#UC END# *47A042E100E2_47913F4E02E0_var*
begin
//#UC START# *47A042E100E2_47913F4E02E0_impl*
 assert(false, '_l3UnknownPrim_.InitFields not implemented');
//#UC END# *47A042E100E2_47913F4E02E0_impl*
end;//_l3UnknownPrim_.InitFields

{$If not defined(DesignTimeLibrary)}
class function _l3UnknownPrim_.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_47913F4E02E0_var*
//#UC END# *47A6FEE600FC_47913F4E02E0_var*
begin
//#UC START# *47A6FEE600FC_47913F4E02E0_impl*
 assert(false, '_l3UnknownPrim_.IsCacheable not implemented');
//#UC END# *47A6FEE600FC_47913F4E02E0_impl*
end;//_l3UnknownPrim_.IsCacheable
{$IfEnd} //not DesignTimeLibrary

procedure _l3UnknownPrim_.BeforeFree;
//#UC START# *48B2BE560115_47913F4E02E0_var*
//#UC END# *48B2BE560115_47913F4E02E0_var*
begin
//#UC START# *48B2BE560115_47913F4E02E0_impl*
 !!! Needs to be implemented !!!
//#UC END# *48B2BE560115_47913F4E02E0_impl*
end;//_l3UnknownPrim_.BeforeFree

{$If defined(l3CheckUnfreedResources)}
function _l3UnknownPrim_.CheckUnfreedResource(aPtrToResource: Pointer): Boolean;
//#UC START# *4A4876C403B8_47913F4E02E0_var*
//#UC END# *4A4876C403B8_47913F4E02E0_var*
begin
//#UC START# *4A4876C403B8_47913F4E02E0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4876C403B8_47913F4E02E0_impl*
end;//_l3UnknownPrim_.CheckUnfreedResource
{$IfEnd} //l3CheckUnfreedResources

function _l3UnknownPrim_.NeedCleanupFields: Boolean;
//#UC START# *4AF44EC401EE_47913F4E02E0_var*
//#UC END# *4AF44EC401EE_47913F4E02E0_var*
begin
//#UC START# *4AF44EC401EE_47913F4E02E0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF44EC401EE_47913F4E02E0_impl*
end;//_l3UnknownPrim_.NeedCleanupFields

function _l3UnknownPrim_._AddRef: Integer;
//#UC START# *47913C24007F_47913F4E02E0_var*
//#UC END# *47913C24007F_47913F4E02E0_var*
begin
//#UC START# *47913C24007F_47913F4E02E0_impl*
 assert(false, 'UnknownPrim.AddRef not implemented');
//#UC END# *47913C24007F_47913F4E02E0_impl*
end;//_l3UnknownPrim_._AddRef

function _l3UnknownPrim_._Release: Integer;
//#UC START# *47913C5301A1_47913F4E02E0_var*
//#UC END# *47913C5301A1_47913F4E02E0_var*
begin
//#UC START# *47913C5301A1_47913F4E02E0_impl*
 assert(false, 'UnknownPrim.Release not implemented');
//#UC END# *47913C5301A1_47913F4E02E0_impl*
end;//_l3UnknownPrim_._Release

function _l3UnknownPrim_.QueryInterface(const IID: TGUID;
  out Obj): HResult;
//#UC START# *47913CBF0265_47913F4E02E0_var*
//#UC END# *47913CBF0265_47913F4E02E0_var*
begin
//#UC START# *47913CBF0265_47913F4E02E0_impl*
 assert(false, 'UnknownPrim.QueryInterface not implemented');
//#UC END# *47913CBF0265_47913F4E02E0_impl*
end;//_l3UnknownPrim_.QueryInterface

{$EndIf l3UnknownPrim_imp}