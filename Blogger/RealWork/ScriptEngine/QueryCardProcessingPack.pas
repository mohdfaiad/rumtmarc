unit QueryCardProcessingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/QueryCardProcessingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::QueryCardProcessing::QueryCardProcessingPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwPopQueryCardAttributeSetWithLogicOperation,
  kwPopQueryCardSetAttribute,
  kwPopQueryCardAttributeSetCollapsed,
  kwPopQueryCardAttributeSetFocus,
  kwPopQueryCardAttributeGetFocus,
  kwPopQueryCardAttributeGetCollapsed,
  kwPopQueryCardAttributeGetLogicOperation,
  kwPopQueryCardAttributeIsLogicOperationEnabled,
  kwPopQueryCardGetCurrentReqName
  ;

{$IfEnd} //not NoScripts
end.