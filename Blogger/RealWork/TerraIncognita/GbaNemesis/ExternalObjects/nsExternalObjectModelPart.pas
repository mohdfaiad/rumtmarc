unit nsExternalObjectModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ExternalObjects"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/ExternalObjects/nsExternalObjectModelPart.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 ������� ����������� ���������� �������::LegalDomain::ExternalObjects::Implementation::nsExternalObjectModelPart
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  l3Interfaces,
  ActiveX
  ;

type
 TnsGetGenOutputStruct = record
   rStream : IStream;
   rName : Il3CString;
 end;//TnsGetGenOutputStruct

function TnsGetGenOutputStruct_Create(const aStream: IStream): TnsGetGenOutputStruct; overload;
function TnsGetGenOutputStruct_Create(const aName: Il3CString): TnsGetGenOutputStruct; overload;

implementation


function TnsGetGenOutputStruct_Create(const aStream: IStream): TnsGetGenOutputStruct;
//#UC START# *512CD7E60330_512CD73E01E6_var*
//#UC END# *512CD7E60330_512CD73E01E6_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *512CD7E60330_512CD73E01E6_impl*
 Result.rStream := aStream;
//#UC END# *512CD7E60330_512CD73E01E6_impl*
end;//TnsGetGenOutputStruct.Create



function TnsGetGenOutputStruct_Create(const aName: Il3CString): TnsGetGenOutputStruct;
//#UC START# *512CD80201BC_512CD73E01E6_var*
//#UC END# *512CD80201BC_512CD73E01E6_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *512CD80201BC_512CD73E01E6_impl*
 Result.rName := aName;
//#UC END# *512CD80201BC_512CD73E01E6_impl*
end;//TnsGetGenOutputStruct.Create

end.