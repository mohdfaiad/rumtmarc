unit BaloonWarningUserTypes_remOnlineDead_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_remOnlineDead_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::remOnlineDead
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  BaloonWarningUserTypes_remUnreadConsultations_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� remOnlineDead }
  remOnlineDeadName = 'remOnlineDead';
   { ��������� ������������� ����������������� ���� "" }
  remOnlineDead = TvcmUserType(remUnreadConsultations + 1);

type
  Tkw_FormUserType_remOnlineDead = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� remOnlineDead }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_remOnlineDead
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_remOnlineDead

{$If not defined(NoScripts)}
function Tkw_FormUserType_remOnlineDead.GetInteger: Integer;
 {-}
begin
 Result := remOnlineDead;
end;//Tkw_FormUserType_remOnlineDead.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_remOnlineDead
 Tkw_FormUserType_remOnlineDead.Register('���_�����::remOnlineDead');
{$IfEnd} //not Admin AND not Monitorings

end.