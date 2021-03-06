{$IfNDef nsContextHistoryPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsContextHistoryPrim.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 Core::Base Operations::View::BaseSearch::nsContextHistoryPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nsContextHistoryPrim_imp}
{$If not defined(Admin) AND not defined(Monitorings)}
 _nsContextHistoryPrim_ = {mixin} class(_nsContextHistoryPrim_Parent_)
 private
 // private fields
   f_Subscribers : TInsContextSearchHistoryNotifierList;
   f_Kind : TnsContextHistoryKind;
 private
 // private methods
   procedure NotifySubscribers(const aNewHistory: IvcmStrings);
   function SettingsName: TafwSettingId;
 public
 // realized methods
   procedure AddNotifier(const aNotifier: InsContextSearchHistoryNotifier);
   function History: IvcmStrings;
   procedure RemoveNotifier(const aNotifier: InsContextSearchHistoryNotifier);
   procedure Searched(const aContext: IvcmStrings);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
 public
 // public methods
   constructor Create(aKind: TnsContextHistoryKind); reintroduce;
 end;//_nsContextHistoryPrim_
{$IfEnd} //not Admin AND not Monitorings

{$Else nsContextHistoryPrim_imp}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class _nsContextHistoryPrim_

constructor _nsContextHistoryPrim_.Create(aKind: TnsContextHistoryKind);
//#UC START# *4AD8449003C3_4AD843F802B4_var*
//#UC END# *4AD8449003C3_4AD843F802B4_var*
begin
//#UC START# *4AD8449003C3_4AD843F802B4_impl*
 inherited Create;
 f_Kind := aKind;
//#UC END# *4AD8449003C3_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.Create

procedure _nsContextHistoryPrim_.NotifySubscribers(const aNewHistory: IvcmStrings);
//#UC START# *4AD844B6000D_4AD843F802B4_var*
var
 l_Index: Integer;
//#UC END# *4AD844B6000D_4AD843F802B4_var*
begin
//#UC START# *4AD844B6000D_4AD843F802B4_impl*
 if (f_Subscribers <> nil) then
  for l_Index := 0 to Pred(f_Subscribers.Count) do
   with f_Subscribers[l_Index] do
   begin
    HistoryChanged(aNewHistory);
    ContextSearched;
   end;
//#UC END# *4AD844B6000D_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.NotifySubscribers

function _nsContextHistoryPrim_.SettingsName: TafwSettingId;
//#UC START# *4AD845ED01C4_4AD843F802B4_var*
const
 cMap: array [TnsContextHistoryKind] of TafwSettingId = (pi_FindDocumentContext_Strings, pi_FindInhparmContext_Strings);
//#UC END# *4AD845ED01C4_4AD843F802B4_var*
begin
//#UC START# *4AD845ED01C4_4AD843F802B4_impl*
 Result := cMap[f_Kind];
//#UC END# *4AD845ED01C4_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.SettingsName

procedure _nsContextHistoryPrim_.AddNotifier(const aNotifier: InsContextSearchHistoryNotifier);
//#UC START# *4AD849C4011B_4AD843F802B4_var*
//#UC END# *4AD849C4011B_4AD843F802B4_var*
begin
//#UC START# *4AD849C4011B_4AD843F802B4_impl*
 if (f_Subscribers = nil) then
  f_Subscribers := TInsContextSearchHistoryNotifierList.Make;
 if f_Subscribers.IndexOf(aNotifier) = -1 then
  f_Subscribers.Add(aNotifier);
//#UC END# *4AD849C4011B_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.AddNotifier

function _nsContextHistoryPrim_.History: IvcmStrings;
//#UC START# *4AD849CA03CF_4AD843F802B4_var*
//#UC END# *4AD849CA03CF_4AD843F802B4_var*
begin
//#UC START# *4AD849CA03CF_4AD843F802B4_impl*
 Result := afw.PermanentSettings.LoadStrings(SettingsName);
//#UC END# *4AD849CA03CF_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.History

procedure _nsContextHistoryPrim_.RemoveNotifier(const aNotifier: InsContextSearchHistoryNotifier);
//#UC START# *4AD849CF0148_4AD843F802B4_var*
//#UC END# *4AD849CF0148_4AD843F802B4_var*
begin
//#UC START# *4AD849CF0148_4AD843F802B4_impl*
 if (f_Subscribers <> nil) then
  f_Subscribers.Remove(aNotifier);
//#UC END# *4AD849CF0148_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.RemoveNotifier

procedure _nsContextHistoryPrim_.Searched(const aContext: IvcmStrings);
//#UC START# *4AD849D20384_4AD843F802B4_var*
var
 l_NewHistory: TvcmStringList;
 l_OldHistory: IvcmStrings;

 procedure lp_AddContext(const aSource: IvcmStrings);
 var
  l_Idx: Integer;
  l_Dummy: Integer;
 begin
  for l_Idx := 0 to aSource.Count - 1 do
  begin
   if l_NewHistory.Count = cContextHistoryItems then
    Break;
   if not l_NewHistory.FindData(l3Str(aSource.ItemC[l_Idx]), l_Dummy, l3_siCaseUnsensitive) then
    l_NewHistory.Add(aSource.ItemC[l_Idx]);
  end;
 end;
//#UC END# *4AD849D20384_4AD843F802B4_var*
begin
//#UC START# *4AD849D20384_4AD843F802B4_impl*
 if Assigned(aContext) then
 begin
  l_OldHistory := History;
  l_NewHistory := TvcmStringList.Create;
  try
   lp_AddContext(aContext);
   if l_NewHistory.Count < cContextHistoryItems then
    lp_AddContext(l_OldHistory);
   if l_NewHistory.Count > 0 then
    afw.PermanentSettings.SaveStrings(SettingsName, l_NewHistory);
   NotifySubscribers(l_NewHistory);
  finally
   FreeAndNil(l_NewHistory);
  end;
 end;
//#UC END# *4AD849D20384_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.Searched

procedure _nsContextHistoryPrim_.Cleanup;
//#UC START# *479731C50290_4AD843F802B4_var*
//#UC END# *479731C50290_4AD843F802B4_var*
begin
//#UC START# *479731C50290_4AD843F802B4_impl*
 FreeAndNil(f_Subscribers);
 inherited Cleanup;
//#UC END# *479731C50290_4AD843F802B4_impl*
end;//_nsContextHistoryPrim_.Cleanup

{$IfEnd} //not Admin AND not Monitorings

{$EndIf nsContextHistoryPrim_imp}
