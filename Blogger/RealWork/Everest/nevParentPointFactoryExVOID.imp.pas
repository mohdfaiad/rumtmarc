{$IfNDef nevParentPointFactoryExVOID_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/nevParentPointFactoryExVOID.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::Cursors::nevParentPointFactoryExVOID
//
// ����������� ���������� MnevParentPointFactoryEx
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nevParentPointFactoryExVOID_imp}
 _nevParentPointFactoryExVOID_ = {mixin} class(_nevParentPointFactoryExVOID_Parent_)
  {* ����������� ���������� MnevParentPointFactoryEx }
 public
 // realized methods
   function PointToParentByLevel(aLevel: Integer = 0): InevBasePoint;
   function PointToTypedParent(aParentType: Integer): InevBasePoint;
 end;//_nevParentPointFactoryExVOID_

{$Else nevParentPointFactoryExVOID_imp}

// start class _nevParentPointFactoryExVOID_

function _nevParentPointFactoryExVOID_.PointToParentByLevel(aLevel: Integer = 0): InevBasePoint;
//#UC START# *49D243600057_49D2586502F8_var*
//#UC END# *49D243600057_49D2586502F8_var*
begin
//#UC START# *49D243600057_49D2586502F8_impl*
 Result := nil;
 Assert(false);
//#UC END# *49D243600057_49D2586502F8_impl*
end;//_nevParentPointFactoryExVOID_.PointToParentByLevel

function _nevParentPointFactoryExVOID_.PointToTypedParent(aParentType: Integer): InevBasePoint;
//#UC START# *49D2437302B2_49D2586502F8_var*
//#UC END# *49D2437302B2_49D2586502F8_var*
begin
//#UC START# *49D2437302B2_49D2586502F8_impl*
 Result := nil;
 Assert(false);
//#UC END# *49D2437302B2_49D2586502F8_impl*
end;//_nevParentPointFactoryExVOID_.PointToTypedParent

{$EndIf nevParentPointFactoryExVOID_imp}