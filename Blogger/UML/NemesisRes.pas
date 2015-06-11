unit NemesisRes;

interface

uses
...
  ;

type
TNemesisRes = {final} class(TPrimNemesisRes)
 {* [$90440042] }
protected
   procedure RegisterFormSetFactories; override;
   class procedure RegisterModules(aMain: TvcmMainForm); override;
...
end;//TNemesisRes


implementation

uses
  moCompareEditions,
  moInternetAgent,
  moFolders,
  moChat,
  moWorkJournal,
  moMonitorings,
  moCommon,
  moDocument,
  moList,
  moDiction,
  moTips,
  moInpharm,
  moRubricator,
  moSettings,
  moMainMenu,
  moConsultations,
  moBaseSearch,
  moFilters,
  moUnderControl,
  moDocumentListFromFile,
  moChangesBetweenEditions,
  moSearch,
  moAAC,
...
  fsCompareEditions,
  fsInternetAgent,
  fsFolders,
  fsAutoreferat,
  fsAutoreferatAfterSearch,
  fsDocument,
  fsDocumentWithFlash,
  fsList,
  fsDiction,
  fsTips,
  fsMedicDiction,
  fsMedicFirmDocument,
  fsDrugDocument,
  fsDrugList,
  fsMedicFirmList,
  fsSimpleMainMenu,
  fsSendConsultation,
  fsConsultation,
  fsViewChangedFragments,
  fsSituationSearch,
  fsSituationFilter,
  fsAACContents,
  fsAAC
  ;

// start class TNemesisRes

procedure TNemesisRes.RegisterFormSetFactories;
begin
 inherited;
 RegisterFormSetFactory(Tfs_CompareEditions);
 RegisterFormSetFactory(Tfs_InternetAgent);
 RegisterFormSetFactory(Tfs_Folders);
 RegisterFormSetFactory(Tfs_Autoreferat);
 RegisterFormSetFactory(Tfs_AutoreferatAfterSearch);
 RegisterFormSetFactory(Tfs_Document);
 RegisterFormSetFactory(Tfs_DocumentWithFlash);
 RegisterFormSetFactory(Tfs_List);
 RegisterFormSetFactory(Tfs_Diction);
 RegisterFormSetFactory(Tfs_Tips);
 RegisterFormSetFactory(Tfs_MedicDiction);
 RegisterFormSetFactory(Tfs_MedicFirmDocument);
 RegisterFormSetFactory(Tfs_DrugDocument);
 RegisterFormSetFactory(Tfs_DrugList);
 RegisterFormSetFactory(Tfs_MedicFirmList);
 RegisterFormSetFactory(Tfs_SimpleMainMenu);
 RegisterFormSetFactory(Tfs_SendConsultation);
 RegisterFormSetFactory(Tfs_Consultation);
 RegisterFormSetFactory(Tfs_ViewChangedFragments);
 RegisterFormSetFactory(Tfs_SituationSearch);
 RegisterFormSetFactory(Tfs_SituationFilter);
 RegisterFormSetFactory(Tfs_AACContents);
 RegisterFormSetFactory(Tfs_AAC);
end;

class procedure TNemesisRes.RegisterModules(aMain: TvcmMainForm);
begin
 inherited;
 aMain.RegisterModule(Tmo_CompareEditions);
 aMain.RegisterModule(Tmo_InternetAgent);
 aMain.RegisterModule(Tmo_Folders);
 aMain.RegisterModule(Tmo_Chat);
 aMain.RegisterModule(Tmo_WorkJournal);
 aMain.RegisterModule(Tmo_Monitorings);
 aMain.RegisterModule(Tmo_Common);
 aMain.RegisterModule(Tmo_Document);
 aMain.RegisterModule(Tmo_List);
 aMain.RegisterModule(Tmo_Diction);
 aMain.RegisterModule(Tmo_Tips);
 aMain.RegisterModule(Tmo_Inpharm);
 aMain.RegisterModule(Tmo_Rubricator);
 aMain.RegisterModule(Tmo_Settings);
 aMain.RegisterModule(Tmo_MainMenu);
 aMain.RegisterModule(Tmo_Consultations);
 aMain.RegisterModule(Tmo_BaseSearch);
 aMain.RegisterModule(Tmo_Filters);
 aMain.RegisterModule(Tmo_UnderControl);
 aMain.RegisterModule(Tmo_DocumentListFromFile);
 aMain.RegisterModule(Tmo_ChangesBetweenEditions);
 aMain.RegisterModule(Tmo_Search);
 aMain.RegisterModule(Tmo_AAC);
end;

var
 g_opcode_Document_ShowJurorComments : TvcmOpID;
 g_opcode_Document_ShowUserComments : TvcmOpID;
 g_opcode_Document_ShowVersionComments : TvcmOpID;
 g_opcode_Finder_GotoPara : TvcmOpID;
 g_opcode_Finder_DisableForceDrawFocusRect : TvcmOpID;
 g_opcode_File_Print : TvcmOpID;
 g_opcode_File_PrintDialog : TvcmOpID;
 g_opcode_File_PrintPreview : TvcmOpID;
 g_opcode_File_Save : TvcmOpID;
 g_opcode_Document_OpenEditionLocalLink : TvcmOpID;
 g_opcode_ControlCenter_Refresh : TvcmOpID;
 g_opcode_Document_SetPosition : TvcmOpID;
 g_opcode_RightEdition_ReturnToDocument : TvcmOpID;
 g_opcode_RightEdition_SetFocusToText : TvcmOpID;
 g_opcode_RightEdition_IsCurrentPara : TvcmOpID;
 g_opcode_Document_GetParaForPositionning : TvcmOpID;
 g_opcode_Edition_PrevChange : TvcmOpID;
 g_opcode_Edition_NextChange : TvcmOpID;
 g_opcode_Edition_ReturnToDocument : TvcmOpID;
 g_opcode_Document_ViewChangedFragments : TvcmOpID;
 g_opcode_Redactions_OpenRedactionListFrmAct : TvcmOpID;
 g_opcode_Redactions_RedactionOnID : TvcmOpID;
 g_opcode_Redactions_ActualRedaction : TvcmOpID;
 g_opcode_Redactions_PrevRedaction : TvcmOpID;
 g_opcode_Redactions_NextRedaction : TvcmOpID;
 g_opcode_Scalable_ChangeScale : TvcmOpID;
 g_opcode_Scalable_CanChangeScale : TvcmOpID;
 g_module_opcode_InternetAgent_InternetAgent : TvcmMOpID;
 g_opcode_Result_Cancel : TvcmOpID;
 g_opcode_FoldersControl_EditElement : TvcmOpID;
 g_opcode_FoldersControl_DeleteElement : TvcmOpID;
 g_opcode_Result_Ok : TvcmOpID;
 g_opcode_AdditionInfo_Show : TvcmOpID;
 g_opcode_AdditionInfo_Hide : TvcmOpID;
 g_opcode_AdditionInfo_SetCaption : TvcmOpID;
 g_opcode_AdditionInfo_Close : TvcmOpID;
 g_opcode_Switcher_BecomeActive : TvcmOpID;
 g_opcode_ResultExt_Ok : TvcmOpID;
 g_opcode_ResultExt_Append : TvcmOpID;
 g_opcode_ResultExt_Cancel : TvcmOpID;
 g_opcode_FolderElement_SetState : TvcmOpID;
 g_opcode_Tree_ExpandAll : TvcmOpID;
 g_opcode_Tree_CollapseAll : TvcmOpID;
 g_opcode_Tree_Wrap : TvcmOpID;
 g_opcode_FolderElement_InternalEditByFoldersNode : TvcmOpID;
 g_opcode_FolderElement_InternalDelete : TvcmOpID;
 g_opcode_FolderElement_InternalEdit : TvcmOpID;
 g_opcode_FolderElement_DisableFilter : TvcmOpID;
 g_opcode_SavedQuery_SetFilterState : TvcmOpID;
 g_opcode_Folders_SetCurrent : TvcmOpID;
 g_opcode_Folders_FiltrateByFilterInfo : TvcmOpID;
 g_opcode_Folders_TryOpenConsultationAnswer : TvcmOpID;
 g_opcode_Folders_OpenMyConsultations : TvcmOpID;
 g_opcode_Folders_SetInfoContent : TvcmOpID;
 g_opcode_FolderElement_GetState : TvcmOpID;
 g_opcode_FolderElement_SetLoadInfo : TvcmOpID;
 g_opcode_FolderElement_SetContent : TvcmOpID;
 g_opcode_FolderElement_SetSaveInfo : TvcmOpID;
 g_opcode_FolderElement_ResetModificationOnDelete : TvcmOpID;
 g_opcode_FolderElement_SetFocus : TvcmOpID;
 g_opcode_FolderElement_Redraw : TvcmOpID;
 g_opcode_FolderElement_DisableSecurityPage : TvcmOpID;
 g_opcode_UsersRights_UpdateRights : TvcmOpID;
 g_opcode_UsersRights_FolderShareChanged : TvcmOpID;
 g_opcode_Result_ExternalOk : TvcmOpID;
 g_opcode_Loadable_Load : TvcmOpID;
 g_module_opcode_Folders_MyInformation : TvcmMOpID;
 g_module_opcode_Folders_MyConsultations : TvcmMOpID;
 g_module_opcode_Folders_UnderControlOpenFrmAct : TvcmMOpID;
 g_module_opcode_Folders_OpenFrmAct : TvcmMOpID;
 g_opcode_List_SetNewContent : TvcmOpID;
 g_opcode_Result_OkExt : TvcmOpID;
 g_module_opcode_Chat_OpenContactList : TvcmMOpID;
 g_module_opcode_WorkJournal_OpenJournal : TvcmMOpID;
 g_opcode_System_CommonDataChanged : TvcmOpID;
 g_opcode_DateInterval_OpenInt : TvcmOpID;
 g_opcode_Form_RequestClose : TvcmOpID;
 g_module_opcode_Monitorings_OpenNewsLine : TvcmMOpID;
 g_module_opcode_Monitorings_OpenLegislationReview : TvcmMOpID;
 g_module_opcode_Common_ComplectInfo : TvcmMOpID;
 g_module_opcode_Common_PageSetup : TvcmMOpID;
 g_module_opcode_Common_ShowEULA : TvcmMOpID;
 g_module_opcode_Common_OpenMainMenuByButton : TvcmMOpID;
 g_module_opcode_Common_OpenMainMenuNew : TvcmMOpID;
 g_module_opcode_Common_TasksPanel : TvcmMOpID;
 g_module_opcode_Common_LetterToDevelopers : TvcmMOpID;
 g_opcode_Navigator_SetCurrent : TvcmOpID;
 g_module_opcode_Common_OpenRubricator : TvcmMOpID;
 g_module_opcode_Common_OpenInformation : TvcmMOpID;
 g_module_opcode_Common_get_navigator : TvcmMOpID;
 g_module_opcode_Common_OpenIntranet : TvcmMOpID;
 g_opcode_PrintParams_UpdatePrinter : TvcmOpID;
 g_opcode_Rubricator_SetListRoot : TvcmOpID;
 g_opcode_Rubricator_InitListRoot : TvcmOpID;
 g_opcode_Rubricator_Synchronize : TvcmOpID;
 g_opcode_Rubricator_GetRoot : TvcmOpID;
 g_opcode_Document_GetAttributesFrmAct : TvcmOpID;
 g_opcode_Document_OpenCorrespondentList : TvcmOpID;
 g_opcode_Document_OpenRespondentList : TvcmOpID;
 g_opcode_Document_GetRelatedDocFrmAct : TvcmOpID;
 g_opcode_Document_GetCorrespondentList : TvcmOpID;
 g_opcode_Document_GetRespondentList : TvcmOpID;
 g_opcode_Document_AttributesCanBeClosed : TvcmOpID;
 g_opcode_Document_CommonDocumentOpenNewWindow : TvcmOpID;
 g_opcode_Document_GetCorrespondentListExFrmAct : TvcmOpID;
 g_opcode_Document_GetRespondentListExFrmAct : TvcmOpID;
 g_opcode_Document_DocumentIsUseful : TvcmOpID;
 g_opcode_Document_DocumentIsUseless : TvcmOpID;
 g_opcode_Document_PrevDocumentInList : TvcmOpID;
 g_opcode_Document_NextDocumentInList : TvcmOpID;
 g_opcode_Document_ReturnToList : TvcmOpID;
 g_opcode_Document_CompareEditions : TvcmOpID;
 g_opcode_System_TimeMachineStateChange : TvcmOpID;
 g_opcode_Document_FindExplanation : TvcmOpID;
 g_opcode_Document_SetActive : TvcmOpID;
 g_opcode_Document_ExportBlock : TvcmOpID;
 g_opcode_Document_GetCurrentPosition : TvcmOpID;
 g_opcode_Document_SelectBlock : TvcmOpID;
 g_opcode_Document_CopyBlock : TvcmOpID;
 g_opcode_Document_PrintBlock : TvcmOpID;
 g_opcode_Document_PrintDialogBlock : TvcmOpID;
 g_opcode_Document_PreviewBlock : TvcmOpID;
 g_opcode_Document_ShowRespondentListToPart : TvcmOpID;
 g_opcode_Document_ShowCorrespondentListToPart : TvcmOpID;
 g_opcode_Document_ModifyBookmarkNotify : TvcmOpID;
 g_opcode_Document_AddBookmarkFromContents : TvcmOpID;
 g_opcode_Document_OpenNotSureTopic : TvcmOpID;
 g_opcode_Document_GotoPara : TvcmOpID;
 g_opcode_TimeMachine_TimeMachineOnOffNew : TvcmOpID;
 g_opcode_TimeMachine_TimeMachineOnOff : TvcmOpID;
 g_opcode_TimeMachine_TimeMachineOffAndReset : TvcmOpID;
 g_opcode_DocumentBlockHeader_UserCR1 : TvcmOpID;
 g_opcode_DocumentBlockHeader_UserCR2 : TvcmOpID;
 g_opcode_DocumentBlockHeader_GetTypedCorrespondentList : TvcmOpID;
 g_opcode_DocumentBlockHeader_AddBookmark : TvcmOpID;
 g_opcode_DocumentBlockHeader_ToMSWord : TvcmOpID;
 g_opcode_DocumentBlockHeader_Print : TvcmOpID;
 g_opcode_DocumentBlockHeader_PrintDialog : TvcmOpID;
 g_opcode_Text_AddUserComment : TvcmOpID;
 g_opcode_Text_DeleteBookmark : TvcmOpID;
 g_opcode_Text_EditBookmark : TvcmOpID;
 g_opcode_Text_AddBookmark : TvcmOpID;
 g_opcode_Text_OpenNewWindow : TvcmOpID;
 g_opcode_DocumentSubPanel_UpdateSubPanel : TvcmOpID;
 g_opcode_BaseSearchPresentationHolder_GetBaseSearchPresentation : TvcmOpID;
 g_opcode_Switcher_SetFirstPageActive : TvcmOpID;
 g_opcode_AACTextContainer_GetVScrollBar : TvcmOpID;
 g_opcode_AACTextContainer_SetJumpTo : TvcmOpID;
 g_opcode_ContentsValidator_IsDocumentAdornmentsChanged : TvcmOpID;
 g_opcode_Editions_SetCurrent : TvcmOpID;
 g_opcode_Contents_SetCurrent : TvcmOpID;
 g_opcode_Contents_MoveCurrent : TvcmOpID;
 g_opcode_Contents_HasUserComments : TvcmOpID;
 g_opcode_Contents_HasBookmarks : TvcmOpID;
 g_opcode_Contents_ToggleContentsVisibility : TvcmOpID;
 g_opcode_Contents_IsContentsVisible : TvcmOpID;
 g_opcode_Comment_Changed : TvcmOpID;
 g_opcode_Picture_InitNewContent : TvcmOpID;
 g_module_opcode_Document_OpenDocOnNumber : TvcmMOpID;
 g_opcode_Warning_BecomeActive : TvcmOpID;
 g_opcode_Warning_SwitchActive : TvcmOpID;
 g_opcode_SynchroView_BecomeActive : TvcmOpID;
 g_opcode_List_GetDeList : TvcmOpID;
 g_opcode_List_SetCurrentVisible : TvcmOpID;
 g_opcode_List_SwitchToFullList : TvcmOpID;
 g_opcode_List_GetDsList : TvcmOpID;
 g_opcode_Filterable_Add : TvcmOpID;
 g_opcode_Filterable_Delete : TvcmOpID;
 g_opcode_Filterable_ClearAll : TvcmOpID;
 g_opcode_Filterable_Refresh : TvcmOpID;
 g_opcode_Filterable_GetListType : TvcmOpID;
 g_opcode_Selection_Analize : TvcmOpID;
 g_opcode_LocalList_SearchInList : TvcmOpID;
 g_opcode_Filters_FiltersListOpen : TvcmOpID;
 g_opcode_List_Sort : TvcmOpID;
 g_opcode_Filters_InternalClear : TvcmOpID;
 g_opcode_Filter_Activate : TvcmOpID;
 g_opcode_Filter_ActivateNode : TvcmOpID;
 g_opcode_ListInfo_BecomeActive : TvcmOpID;
 g_opcode_Filters_DeselectAll : TvcmOpID;
 g_module_opcode_Diction_OpenDict : TvcmMOpID;
 g_opcode_Query_ClearAll : TvcmOpID;
 g_opcode_Query_SetList : TvcmOpID;
 g_opcode_Query_GetList : TvcmOpID;
 g_opcode_SearchParameters_IsQueryEmpty : TvcmOpID;
 g_opcode_SearchParameters_GetQuery : TvcmOpID;
 g_opcode_SearchParameters_IsQuerySaved : TvcmOpID;
 g_opcode_SearchParameters_SetQuery : TvcmOpID;
 g_opcode_SearchParameters_ClearQuery : TvcmOpID;
 g_opcode_SearchParameter_QueryNotSaved : TvcmOpID;
 g_opcode_SearchParameter_ClearMistakes : TvcmOpID;
 g_opcode_SearchParameter_QuerySaved : TvcmOpID;
 g_opcode_Attribute_DefaultAction : TvcmOpID;
 g_opcode_Attribute_LogicOr : TvcmOpID;
 g_opcode_Attribute_LogicAnd : TvcmOpID;
 g_opcode_Attribute_LogicNot : TvcmOpID;
 g_opcode_Attribute_LogicOrShortcut : TvcmOpID;
 g_module_opcode_Tips_ShowDayTips : TvcmMOpID;
 g_module_opcode_Inpharm_MedicDiction : TvcmMOpID;
 g_module_opcode_Inpharm_MedicFirms : TvcmMOpID;
 g_module_opcode_Inpharm_DrugList : TvcmMOpID;
 g_module_opcode_Inpharm_MedicMainMenu : TvcmMOpID;
 g_opcode_StyleEditor_ReloadStyleTable : TvcmOpID;
 g_opcode_StyleEditor_RestoreStyleTable : TvcmOpID;
 g_opcode_StyleEditor_SaveStyleTable : TvcmOpID;
 g_opcode_StyleEditor_SetNewContent : TvcmOpID;
 g_opcode_StyleEditor_ReloadStylesTree : TvcmOpID;
 g_module_opcode_Settings_OpenStyleEditorAsModal : TvcmMOpID;
 g_module_opcode_Settings_AutoLogin : TvcmMOpID;
 g_module_opcode_Settings_SelectConfig : TvcmMOpID;
 g_module_opcode_Settings_OpenConfList : TvcmMOpID;
 g_module_opcode_Settings_LoadActiveSettings : TvcmMOpID;
 g_module_opcode_Settings_UserProperties : TvcmMOpID;
 g_opcode_Filters_GetSelected : TvcmOpID;
 g_module_opcode_DocumentListFromFile_OpenDocumentListFromFile : TvcmMOpID;
 g_module_opcode_Search_PublishSourceSearch : TvcmMOpID;
 g_module_opcode_Search_InpharmSearch : TvcmMOpID;
 g_module_opcode_Search_StartENO : TvcmMOpID;
 g_module_opcode_Search_DocumentsWithoutClass : TvcmMOpID;
 g_module_opcode_Search_DocumentsWithoutIncluded : TvcmMOpID;
 g_module_opcode_Search_DocumentsWithoutKey : TvcmMOpID;
 g_module_opcode_Search_BaseSearch : TvcmMOpID;
 g_module_opcode_Search_OpenConsult : TvcmMOpID;
 g_module_opcode_Search_AllSearch : TvcmMOpID;
 g_opcode_AttributeTree_SetParent : TvcmOpID;
 g_opcode_AttributeTree_ExtSetRoot : TvcmOpID;
 g_opcode_AttributeTree_SetRoot : TvcmOpID;
 g_opcode_ContextParams_ContextChanged : TvcmOpID;
 g_module_opcode_Search_OpenKeyWordSearch : TvcmMOpID;
 g_module_opcode_Search_AttributeSearch : TvcmMOpID;
 g_opcode_AttributeTree_ExternalCharPressed : TvcmOpID;
 g_opcode_AttributeTree_SetCurrent : TvcmOpID;
 g_opcode_AttributeTree_DropAllLogicSelection : TvcmOpID;
 g_opcode_AttributeTree_Invalidate : TvcmOpID;
 g_opcode_AttributeTree_DropLogicSelection : TvcmOpID;
 g_opcode_AttributeTree_LoadQuery : TvcmOpID;
 g_opcode_AttributeTree_SetOneLevelCurrent : TvcmOpID;
 g_opcode_AttributeTree_AddNodeIfEmpty : TvcmOpID;

procedure TNemesisRes.Loaded;
begin
 inherited;
 PublishModule(Tmo_CompareEditions, '��������� ��������');
 PublishModule(Tmo_InternetAgent, '��������-�����');
 PublishModule(Tmo_Folders, '�����');
 PublishModule(Tmo_Chat, '���');
 PublishModule(Tmo_WorkJournal, '������ ������');
 PublishModule(Tmo_Monitorings, '�����������');
 PublishModule(Tmo_Common, '����');
 PublishModule(Tmo_Document, '��������');
 PublishModule(Tmo_List, '������');
 PublishModule(Tmo_Diction, '�������� �������');
 PublishModule(Tmo_Tips, '����� ���');
 PublishModule(Tmo_Inpharm, '������');
 PublishModule(Tmo_Rubricator, '�������� ���������');
 PublishModule(Tmo_Settings, '���������');
 PublishModule(Tmo_MainMenu, '�������� ����');
 PublishModule(Tmo_Consultations, '������������');
 PublishModule(Tmo_BaseSearch, '������� �����');
 PublishModule(Tmo_Filters, '�������');
 PublishModule(Tmo_UnderControl, '��������� �� ��������');
 PublishModule(Tmo_DocumentListFromFile, '������ ���������� �� �����');
 PublishModule(Tmo_ChangesBetweenEditions, '�������� ������ ���������� ����������');
 PublishModule(Tmo_Search, '�����');
 PublishModule(Tmo_AAC, '���������� ���������');
 g_opcode_Document_ShowJurorComments :=
  PublishOperation(en_Document,
                    op_ShowJurorComments,
                    en_capDocument,
                    op_capShowJurorComments);
  with PublishOperationState(en_Document, op_ShowJurorComments, 'Hide') do
  begin
   st_user_Document_ShowJurorComments_Hide := StateIndex;
   Caption := '������ ����������� �������';
   Checked := true;
  end;//with PublishOperationState(en_Document, op_ShowJurorComments, 'Hide')
  with PublishOperationState(en_Document, op_ShowJurorComments, 'Show') do
  begin
   st_user_Document_ShowJurorComments_Show := StateIndex;
   Caption := '�������� ����������� �������';
  end;//with PublishOperationState(en_Document, op_ShowJurorComments, 'Show')
 g_opcode_Document_ShowUserComments :=
  PublishOperation(en_Document,
                    op_ShowUserComments,
                    en_capDocument,
                    op_capShowUserComments);
  with PublishOperationState(en_Document, op_ShowUserComments, 'Hide') do
  begin
   st_user_Document_ShowUserComments_Hide := StateIndex;
   Caption := '������ ��� �����������';
   Checked := true;
  end;//with PublishOperationState(en_Document, op_ShowUserComments, 'Hide')
  with PublishOperationState(en_Document, op_ShowUserComments, 'Show') do
  begin
   st_user_Document_ShowUserComments_Show := StateIndex;
   Caption := '�������� ��� �����������';
  end;//with PublishOperationState(en_Document, op_ShowUserComments, 'Show')
 PublishOperation(en_Document,
                    op_ShowTechComments,
                    en_capDocument,
                    op_capShowTechComments);
  with PublishOperationState(en_Document, op_ShowTechComments, 'Hide') do
  begin
   st_user_Document_ShowTechComments_Hide := StateIndex;
   Checked := true;
  end;//with PublishOperationState(en_Document, op_ShowTechComments, 'Hide')
  with PublishOperationState(en_Document, op_ShowTechComments, 'Show') do
  begin
   st_user_Document_ShowTechComments_Show := StateIndex;
  end;//with PublishOperationState(en_Document, op_ShowTechComments, 'Show')
 g_opcode_Document_ShowVersionComments :=
  PublishOperation(en_Document,
                    op_ShowVersionComments,
                    en_capDocument,
                    op_capShowVersionComments);
  with PublishOperationState(en_Document, op_ShowVersionComments, 'Hide') do
  begin
   st_user_Document_ShowVersionComments_Hide := StateIndex;
   Caption := '��������� ���������� �� ���������� ���������';
   Checked := true;
  end;//with PublishOperationState(en_Document, op_ShowVersionComments, 'Hide')
  with PublishOperationState(en_Document, op_ShowVersionComments, 'Show') do
  begin
   st_user_Document_ShowVersionComments_Show := StateIndex;
   Caption := '�������� ���������� �� ���������� ���������';
  end;//with PublishOperationState(en_Document, op_ShowVersionComments, 'Show')
 PublishOperation(en_Document,
                    op_ShowCommentsGroup,
                    en_capDocument,
                    op_capShowCommentsGroup);
 PublishOperation(en_SubPanelSettings,
                    op_ShowSpecial,
                    en_capSubPanelSettings,
                    op_capShowSpecial);
 PublishOperation(en_SubPanelSettings,
                    op_ShowInfo,
                    en_capSubPanelSettings,
                    op_capShowInfo);
 g_opcode_Finder_GotoPara :=
  PublishInternalOperation(en_Finder,
                    op_GotoPara,
                    en_capFinder,
                    op_capGotoPara);
 g_opcode_Finder_DisableForceDrawFocusRect :=
  PublishInternalOperation(en_Finder,
                    op_DisableForceDrawFocusRect,
                    en_capFinder,
                    op_capDisableForceDrawFocusRect);
 PublishOperation(en_File,
                    op_ToMSWord,
                    en_capFile,
                    op_capToMSWord);
 PublishOperation(en_File,
                    op_SendMailAsAttachment,
                    en_capFile,
                    op_capSendMailAsAttachment, true);
 g_opcode_File_Print :=
  PublishOperation(en_File,
                    op_Print,
                    en_capFile,
                    op_capPrint);
 g_opcode_File_PrintDialog :=
  PublishOperation(en_File,
                    op_PrintDialog,
                    en_capFile,
                    op_capPrintDialog);
 g_opcode_File_PrintPreview :=
  PublishOperation(en_File,
                    op_PrintPreview,
                    en_capFile,
                    op_capPrintPreview);
 g_opcode_File_Save :=
  PublishOperation(en_File,
                    op_Save,
                    en_capFile,
                    op_capSave);
 g_opcode_Document_OpenEditionLocalLink :=
  PublishInternalOperation(en_Document,
                    op_OpenEditionLocalLink,
                    en_capDocument,
                    op_capOpenEditionLocalLink);
 PublishOperation(en_Edit,
                    op_Copy,
                    en_capEdit,
                    op_capCopy);
  with PublishOperationState(en_Edit, op_Copy, 'AttributesCopy') do
  begin
   st_user_Edit_Copy_AttributesCopy := StateIndex;
   Caption := '���������� ��� �������� ��������� � ����� ������';
  end;//with PublishOperationState(en_Edit, op_Copy, 'AttributesCopy')
 PublishOperation(en_Edit,
                    op_Cut,
                    en_capEdit,
                    op_capCut);
 PublishOperation(en_Edit,
                    op_FindContext,
                    en_capEdit,
                    op_capFindContext);
 PublishOperation(en_Edit,
                    op_FindNext,
                    en_capEdit,
                    op_capFindNext);
 PublishOperation(en_Edit,
                    op_Paste,
                    en_capEdit,
                    op_capPaste);
 PublishOperation(en_Edit,
                    op_Undo,
                    en_capEdit,
                    op_capUndo);
 PublishOperation(en_Edit,
                    op_Redo,
                    en_capEdit,
                    op_capRedo);
 PublishOperation(en_Edit,
                    op_SelectAll,
                    en_capEdit,
                    op_capSelectAll);
 PublishOperation(en_Edit,
                    op_Deselect,
                    en_capEdit,
                    op_capDeselect);
 PublishOperation(en_Edit,
                    op_FindPrev,
                    en_capEdit,
                    op_capFindPrev);
 g_opcode_ControlCenter_Refresh :=
  PublishInternalOperation(en_ControlCenter,
                    op_Refresh,
                    en_capControlCenter,
                    op_capRefresh);
 g_opcode_Document_SetPosition :=
  PublishInternalOperation(en_Document,
                    op_SetPosition,
                    en_capDocument,
                    op_capSetPosition);
 PublishOperation(en_HyperLink,
                    op_Open,
                    en_capHyperLink,
                    op_capOpen);
 PublishOperation(en_HyperLink,
                    op_OpenNewWindow,
                    en_capHyperLink,
                    op_capOpenNewWindow);
 PublishOperation(en_HyperLink,
                    op_NextHyperLink,
                    en_capHyperLink,
                    op_capNextHyperLink);
 PublishOperation(en_HyperLink,
                    op_PrevHyperLink,
                    en_capHyperLink,
                    op_capPrevHyperLink);
 PublishOperation(en_HyperLink,
                    op_Delete,
                    en_capHyperLink,
                    op_capDelete, true);
 g_opcode_RightEdition_ReturnToDocument :=
  PublishInternalOperation(en_RightEdition,
                    op_ReturnToDocument,
                    en_capRightEdition,
                    op_capReturnToDocument);
 g_opcode_RightEdition_SetFocusToText :=
  PublishInternalOperation(en_RightEdition,
                    op_SetFocusToText,
                    en_capRightEdition,
                    op_capSetFocusToText);
 g_opcode_RightEdition_IsCurrentPara :=
  PublishInternalOperation(en_RightEdition,
                    op_IsCurrentPara,
                    en_capRightEdition,
                    op_capIsCurrentPara);
 g_opcode_Document_GetParaForPositionning :=
  PublishInternalOperation(en_Document,
                    op_GetParaForPositionning,
                    en_capDocument,
                    op_capGetParaForPositionning);
 g_opcode_Edition_PrevChange :=
  PublishOperation(en_Edition,
                    op_PrevChange,
                    en_capEdition,
                    op_capPrevChange);
 g_opcode_Edition_NextChange :=
  PublishOperation(en_Edition,
                    op_NextChange,
                    en_capEdition,
                    op_capNextChange);
 g_opcode_Edition_ReturnToDocument :=
  PublishOperation(en_Edition,
                    op_ReturnToDocument,
                    en_capEdition,
                    op_capReturnToDocument);
 g_opcode_Document_ViewChangedFragments :=
  PublishOperation(en_Document,
                    op_ViewChangedFragments,
                    en_capDocument,
                    op_capViewChangedFragments);
 g_opcode_Redactions_OpenRedactionListFrmAct :=
  PublishOperation(en_Redactions,
                    op_OpenRedactionListFrmAct,
                    en_capRedactions,
                    op_capOpenRedactionListFrmAct);
  with PublishOperationState(en_Redactions, op_OpenRedactionListFrmAct, 'ChooseAnotherEditions') do
  begin
   st_user_Redactions_OpenRedactionListFrmAct_ChooseAnotherEditions := StateIndex;
   Caption := '������� ������ ��������';
  end;//with PublishOperationState(en_Redactions, op_OpenRedactionListFrmAct, 'ChooseAnotherEditions')
 g_opcode_Redactions_RedactionOnID :=
  PublishInternalOperation(en_Redactions,
                    op_RedactionOnID,
                    en_capRedactions,
                    op_capRedactionOnID);
 g_opcode_Redactions_ActualRedaction :=
  PublishOperation(en_Redactions,
                    op_ActualRedaction,
                    en_capRedactions,
                    op_capActualRedaction);
 g_opcode_Redactions_PrevRedaction :=
  PublishOperation(en_Redactions,
                    op_PrevRedaction,
                    en_capRedactions,
                    op_capPrevRedaction);
 g_opcode_Redactions_NextRedaction :=
  PublishOperation(en_Redactions,
                    op_NextRedaction,
                    en_capRedactions,
                    op_capNextRedaction);
 PublishOperation(en_Edit,
                    op_Delete,
                    en_capEdit,
                    op_capDelete);
  with PublishOperationState(en_Edit, op_Delete, 'Controlled') do
  begin
   st_user_Edit_Delete_Controlled := StateIndex;
   Caption := '����� � ��������';
  end;//with PublishOperationState(en_Edit, op_Delete, 'Controlled')
 {$If defined(Admin)}
  with PublishOperationState(en_Edit, op_Delete, 'User') do
  begin
   st_user_Edit_Delete_User := StateIndex;
   Caption := '������� ������������';
   ImageIndex := 149;
  end;//with PublishOperationState(en_Edit, op_Delete, 'User')
 {$IfEnd} //Admin
 {$If defined(Admin)}
  with PublishOperationState(en_Edit, op_Delete, 'MultiUsers') do
  begin
   st_user_Edit_Delete_MultiUsers := StateIndex;
   Caption := '������� ���������� �������������';
   ImageIndex := 149;
  end;//with PublishOperationState(en_Edit, op_Delete, 'MultiUsers')
 {$IfEnd} //Admin
 {$If defined(Admin)}
  with PublishOperationState(en_Edit, op_Delete, 'Group') do
  begin
   st_user_Edit_Delete_Group := StateIndex;
   Caption := '������� ������';
   ImageIndex := 193;
  end;//with PublishOperationState(en_Edit, op_Delete, 'Group')
 {$IfEnd} //Admin
  with PublishOperationState(en_Edit, op_Delete, 'Contact') do
  begin
   st_user_Edit_Delete_Contact := StateIndex;
   Caption := '������� ������������';
  end;//with PublishOperationState(en_Edit, op_Delete, 'Contact')
 g_opcode_Scalable_ChangeScale :=
  PublishInternalOperation(en_Scalable,
                    op_ChangeScale,
                    en_capScalable,
                    op_capChangeScale);
 g_opcode_Scalable_CanChangeScale :=
  PublishInternalOperation(en_Scalable,
                    op_CanChangeScale,
                    en_capScalable,
                    op_capCanChangeScale);
 g_module_opcode_InternetAgent_InternetAgent := 
  PublishModuleOperation(Tmo_InternetAgent, 'InternetAgent', '������� ������');
 g_opcode_Result_Cancel :=
  PublishOperation(en_Result,
                    op_Cancel,
                    en_capResult,
                    op_capCancel);
 g_opcode_FoldersControl_EditElement :=
  PublishInternalOperation(en_FoldersControl,
                    op_EditElement,
                    en_capFoldersControl,
                    op_capEditElement);
 g_opcode_FoldersControl_DeleteElement :=
  PublishInternalOperation(en_FoldersControl,
                    op_DeleteElement,
                    en_capFoldersControl,
                    op_capDeleteElement);
 g_opcode_Result_Ok :=
  PublishOperation(en_Result,
                    op_Ok,
                    en_capResult,
                    op_capOk);
  with PublishOperationState(en_Result, op_Ok, 'Search') do
  begin
   st_user_Result_Ok_Search := StateIndex;
   Caption := '������';
   Hint := '�������� ����� �� ��������� ����������';
  end;//with PublishOperationState(en_Result, op_Ok, 'Search')
  with PublishOperationState(en_Result, op_Ok, 'Print') do
  begin
   st_user_Result_Ok_Print := StateIndex;
   Caption := '������';
   ImageIndex := 3;
  end;//with PublishOperationState(en_Result, op_Ok, 'Print')
  with PublishOperationState(en_Result, op_Ok, 'AttributesSelect') do
  begin
   st_user_Result_Ok_AttributesSelect := StateIndex;
   Caption := '����������� ����� ���������';
  end;//with PublishOperationState(en_Result, op_Ok, 'AttributesSelect')
  with PublishOperationState(en_Result, op_Ok, 'ConsultationMark') do
  begin
   st_user_Result_Ok_ConsultationMark := StateIndex;
   Caption := '�������';
  end;//with PublishOperationState(en_Result, op_Ok, 'ConsultationMark')
  with PublishOperationState(en_Result, op_Ok, 'Analize') do
  begin
   st_user_Result_Ok_Analize := StateIndex;
   Caption := '���������';
  end;//with PublishOperationState(en_Result, op_Ok, 'Analize')
 PublishOperation(en_Result,
                    op_Append,
                    en_capResult,
                    op_capAppend);
 g_opcode_AdditionInfo_Show :=
  PublishInternalOperation(en_AdditionInfo,
                    op_Show,
                    en_capAdditionInfo,
                    op_capShow);
 g_opcode_AdditionInfo_Hide :=
  PublishInternalOperation(en_AdditionInfo,
                    op_Hide,
                    en_capAdditionInfo,
                    op_capHide);
 g_opcode_AdditionInfo_SetCaption :=
  PublishInternalOperation(en_AdditionInfo,
                    op_SetCaption,
                    en_capAdditionInfo,
                    op_capSetCaption);
 g_opcode_AdditionInfo_Close :=
  PublishInternalOperation(en_AdditionInfo,
                    op_Close,
                    en_capAdditionInfo,
                    op_capClose);
 g_opcode_Switcher_BecomeActive :=
  PublishInternalOperation(en_Switcher,
                    op_BecomeActive,
                    en_capSwitcher,
                    op_capBecomeActive);
 g_opcode_ResultExt_Ok :=
  PublishOperation(en_ResultExt,
                    op_Ok,
                    en_capResultExt,
                    op_capOk);
  with PublishOperationState(en_ResultExt, op_Ok, 'None') do
  begin
   st_user_ResultExt_Ok_None := StateIndex;
   Hint := '����������� �����';
   Enabled := false;
  end;//with PublishOperationState(en_ResultExt, op_Ok, 'None')
  with PublishOperationState(en_ResultExt, op_Ok, 'NewFolder') do
  begin
   st_user_ResultExt_Ok_NewFolder := StateIndex;
   Hint := '������� �����';
  end;//with PublishOperationState(en_ResultExt, op_Ok, 'NewFolder')
  with PublishOperationState(en_ResultExt, op_Ok, 'Edit') do
  begin
   st_user_ResultExt_Ok_Edit := StateIndex;
   Hint := '��������� ����������������� ���������';
  end;//with PublishOperationState(en_ResultExt, op_Ok, 'Edit')
  with PublishOperationState(en_ResultExt, op_Ok, 'Load') do
  begin
   st_user_ResultExt_Ok_Load := StateIndex;
   Caption := '���������';
   Hint := '��������� ��������� �������';
  end;//with PublishOperationState(en_ResultExt, op_Ok, 'Load')
  with PublishOperationState(en_ResultExt, op_Ok, 'Select') do
  begin
   st_user_ResultExt_Ok_Select := StateIndex;
   Hint := '����������� ����� ��������';
  end;//with PublishOperationState(en_ResultExt, op_Ok, 'Select')
  with PublishOperationState(en_ResultExt, op_Ok, 'FolderSave') do
  begin
   st_user_ResultExt_Ok_FolderSave := StateIndex;
   Caption := '���������';
   Hint := '��������� ������� � ������� �����';
   ImageIndex := 22;
  end;//with PublishOperationState(en_ResultExt, op_Ok, 'FolderSave')
 g_opcode_ResultExt_Append :=
  PublishOperation(en_ResultExt,
                    op_Append,
                    en_capResultExt,
                    op_capAppend);
  with PublishOperationState(en_ResultExt, op_Append, 'Bookmark') do
  begin
   st_user_ResultExt_Append_Bookmark := StateIndex;
   Hint := '�������� ����� �������� � ���������� ������������ ����� �������';
  end;//with PublishOperationState(en_ResultExt, op_Append, 'Bookmark')
  with PublishOperationState(en_ResultExt, op_Append, 'List') do
  begin
   st_user_ResultExt_Append_List := StateIndex;
   Hint := '�������� ����� ������ � ���������� ������������ ����� �������';
  end;//with PublishOperationState(en_ResultExt, op_Append, 'List')
  with PublishOperationState(en_ResultExt, op_Append, 'Query') do
  begin
   st_user_ResultExt_Append_Query := StateIndex;
   Hint := '�������� ����� ������ � ���������� ������������ ����� �������';
  end;//with PublishOperationState(en_ResultExt, op_Append, 'Query')
 g_opcode_ResultExt_Cancel :=
  PublishOperation(en_ResultExt,
                    op_Cancel,
                    en_capResultExt,
                    op_capCancel);
  with PublishOperationState(en_Result, op_Cancel, 'Close') do
  begin
   st_user_Result_Cancel_Close := StateIndex;
   Caption := '�������';
  end;//with PublishOperationState(en_Result, op_Cancel, 'Close')
 g_opcode_FolderElement_SetState :=
  PublishInternalOperation(en_FolderElement,
                    op_SetState,
                    en_capFolderElement,
                    op_capSetState);
 g_opcode_Tree_ExpandAll :=
  PublishOperation(en_Tree,
                    op_ExpandAll,
                    en_capTree,
                    op_capExpandAll);
 g_opcode_Tree_CollapseAll :=
  PublishOperation(en_Tree,
                    op_CollapseAll,
                    en_capTree,
                    op_capCollapseAll);
 g_opcode_Tree_Wrap :=
  PublishOperation(en_Tree,
                    op_Wrap,
                    en_capTree,
                    op_capWrap);
 PublishOperation(en_SavedQuery,
                    op_OpenQuery,
                    en_capSavedQuery,
                    op_capOpenQuery);
 PublishOperation(en_SavedQuery,
                    op_ExecuteQuery,
                    en_capSavedQuery,
                    op_capExecuteQuery);
 PublishOperation(en_Folders,
                    op_Filtrate,
                    en_capFolders,
                    op_capFiltrate);
 PublishOperation(en_Folder,
                    op_New,
                    en_capFolder,
                    op_capNew);
 PublishOperation(en_Folder,
                    op_AddToControl,
                    en_capFolder,
                    op_capAddToControl);
 PublishOperation(en_Folder,
                    op_DelFromControl,
                    en_capFolder,
                    op_capDelFromControl);
 PublishOperation(en_Folder,
                    op_SetShare,
                    en_capFolder,
                    op_capSetShare);
 PublishOperation(en_Folder,
                    op_ExportToXML,
                    en_capFolder,
                    op_capExportToXML);
 PublishOperation(en_Folder,
                    op_ImportFromXML,
                    en_capFolder,
                    op_capImportFromXML);
 PublishOperation(en_FolderElement,
                    op_Edit,
                    en_capFolderElement,
                    op_capEdit);
 PublishOperation(en_FolderElement,
                    op_EditExt,
                    en_capFolderElement,
                    op_capEditExt);
 PublishOperation(en_FolderElement,
                    op_Open,
                    en_capFolderElement,
                    op_capOpen);
 PublishOperation(en_FolderElement,
                    op_OpenNewWindow,
                    en_capFolderElement,
                    op_capOpenNewWindow);
 PublishOperation(en_FolderElement,
                    op_ControlStatus,
                    en_capFolderElement,
                    op_capControlStatus);
 PublishOperation(en_FolderElement,
                    op_ExportForIntegration,
                    en_capFolderElement,
                    op_capExportForIntegration);
 PublishOperation(en_SavedQuery,
                    op_CreateFilter,
                    en_capSavedQuery,
                    op_capCreateFilter);
 PublishOperation(en_Consultation,
                    op_Open,
                    en_capConsultation,
                    op_capOpen);
 PublishOperation(en_Consultation,
                    op_GiveMark,
                    en_capConsultation,
                    op_capGiveMark);
 PublishOperation(en_Consultation,
                    op_ShowConsultationInfo,
                    en_capConsultation,
                    op_capShowConsultationInfo);
 PublishOperation(en_Consultation,
                    op_ImportConsultation,
                    en_capConsultation,
                    op_capImportConsultation);
 g_opcode_FolderElement_InternalEditByFoldersNode :=
  PublishInternalOperation(en_FolderElement,
                    op_InternalEditByFoldersNode,
                    en_capFolderElement,
                    op_capInternalEditByFoldersNode);
 g_opcode_FolderElement_InternalDelete :=
  PublishInternalOperation(en_FolderElement,
                    op_InternalDelete,
                    en_capFolderElement,
                    op_capInternalDelete);
 g_opcode_FolderElement_InternalEdit :=
  PublishInternalOperation(en_FolderElement,
                    op_InternalEdit,
                    en_capFolderElement,
                    op_capInternalEdit);
 g_opcode_FolderElement_DisableFilter :=
  PublishInternalOperation(en_FolderElement,
                    op_DisableFilter,
                    en_capFolderElement,
                    op_capDisableFilter);
 g_opcode_SavedQuery_SetFilterState :=
  PublishInternalOperation(en_SavedQuery,
                    op_SetFilterState,
                    en_capSavedQuery,
                    op_capSetFilterState);
 g_opcode_Folders_SetCurrent :=
  PublishInternalOperation(en_Folders,
                    op_SetCurrent,
                    en_capFolders,
                    op_capSetCurrent);
 g_opcode_Folders_FiltrateByFilterInfo :=
  PublishInternalOperation(en_Folders,
                    op_FiltrateByFilterInfo,
                    en_capFolders,
                    op_capFiltrateByFilterInfo);
 g_opcode_Folders_TryOpenConsultationAnswer :=
  PublishInternalOperation(en_Folders,
                    op_TryOpenConsultationAnswer,
                    en_capFolders,
                    op_capTryOpenConsultationAnswer);
 g_opcode_Folders_OpenMyConsultations :=
  PublishInternalOperation(en_Folders,
                    op_OpenMyConsultations,
                    en_capFolders,
                    op_capOpenMyConsultations);
 g_opcode_Folders_SetInfoContent :=
  PublishInternalOperation(en_Folders,
                    op_SetInfoContent,
                    en_capFolders,
                    op_capSetInfoContent);
 g_opcode_FolderElement_GetState :=
  PublishInternalOperation(en_FolderElement,
                    op_GetState,
                    en_capFolderElement,
                    op_capGetState);
 g_opcode_FolderElement_SetLoadInfo :=
  PublishInternalOperation(en_FolderElement,
                    op_SetLoadInfo,
                    en_capFolderElement,
                    op_capSetLoadInfo);
 g_opcode_FolderElement_SetContent :=
  PublishInternalOperation(en_FolderElement,
                    op_SetContent,
                    en_capFolderElement,
                    op_capSetContent);
 g_opcode_FolderElement_SetSaveInfo :=
  PublishInternalOperation(en_FolderElement,
                    op_SetSaveInfo,
                    en_capFolderElement,
                    op_capSetSaveInfo);
 g_opcode_FolderElement_ResetModificationOnDelete :=
  PublishInternalOperation(en_FolderElement,
                    op_ResetModificationOnDelete,
                    en_capFolderElement,
                    op_capResetModificationOnDelete);
 g_opcode_FolderElement_SetFocus :=
  PublishInternalOperation(en_FolderElement,
                    op_SetFocus,
                    en_capFolderElement,
                    op_capSetFocus);
 g_opcode_FolderElement_Redraw :=
  PublishInternalOperation(en_FolderElement,
                    op_Redraw,
                    en_capFolderElement,
                    op_capRedraw);
 g_opcode_FolderElement_DisableSecurityPage :=
  PublishInternalOperation(en_FolderElement,
                    op_DisableSecurityPage,
                    en_capFolderElement,
                    op_capDisableSecurityPage);
 g_opcode_UsersRights_UpdateRights :=
  PublishInternalOperation(en_UsersRights,
                    op_UpdateRights,
                    en_capUsersRights,
                    op_capUpdateRights);
 g_opcode_UsersRights_FolderShareChanged :=
  PublishInternalOperation(en_UsersRights,
                    op_FolderShareChanged,
                    en_capUsersRights,
                    op_capFolderShareChanged);
 g_opcode_Result_ExternalOk :=
  PublishInternalOperation(en_Result,
                    op_ExternalOk,
                    en_capResult,
                    op_capExternalOk);
 g_opcode_Loadable_Load :=
  PublishInternalOperation(en_Loadable,
                    op_Load,
                    en_capLoadable,
                    op_capLoad);
 g_module_opcode_Folders_MyInformation := 
  PublishModuleOperation(Tmo_Folders, 'MyInformation', '��� ����������');
 g_module_opcode_Folders_MyConsultations := 
  PublishModuleOperation(Tmo_Folders, 'MyConsultations', '��� ������������');
 g_module_opcode_Folders_UnderControlOpenFrmAct := 
  PublishModuleOperation(Tmo_Folders, 'UnderControlOpenFrmAct', '��������� �� ��������');
 g_module_opcode_Folders_OpenFrmAct := 
  PublishModuleOperation(Tmo_Folders, 'OpenFrmAct', '��� ���������');
 g_opcode_List_SetNewContent :=
  PublishInternalOperation(en_List,
                    op_SetNewContent,
                    en_capList,
                    op_capSetNewContent);
 PublishOperation(en_Chat,
                    op_History,
                    en_capChat,
                    op_capHistory);
 PublishOperation(en_Chat,
                    op_UserFilter,
                    en_capChat,
                    op_capUserFilter);
 PublishOperation(en_Chat,
                    op_OpenChatWindow,
                    en_capChat,
                    op_capOpenChatWindow);
 PublishOperation(en_Chat,
                    op_Add,
                    en_capChat,
                    op_capAdd);
 g_opcode_Result_OkExt :=
  PublishOperation(en_Result,
                    op_OkExt,
                    en_capResult,
                    op_capOkExt);
  with PublishOperationState(en_Result, op_OkExt, 'Search') do
  begin
   st_user_Result_OkExt_Search := StateIndex;
   Caption := '������';
   Hint := '�������� ����� �� ��������� ����������';
  end;//with PublishOperationState(en_Result, op_OkExt, 'Search')
  with PublishOperationState(en_Result, op_OkExt, 'Save') do
  begin
   st_user_Result_OkExt_Save := StateIndex;
   Caption := '���������';
   Hint := '���������';
  end;//with PublishOperationState(en_Result, op_OkExt, 'Save')
  with PublishOperationState(en_Result, op_OkExt, 'AttributesSelect') do
  begin
   st_user_Result_OkExt_AttributesSelect := StateIndex;
  end;//with PublishOperationState(en_Result, op_OkExt, 'AttributesSelect')
  with PublishOperationState(en_Result, op_OkExt, 'Consult') do
  begin
   st_user_Result_OkExt_Consult := StateIndex;
   Caption := '��������� ������';
   ImageIndex := 154;
  end;//with PublishOperationState(en_Result, op_OkExt, 'Consult')
  with PublishOperationState(en_Result, op_OkExt, 'Chat') do
  begin
   st_user_Result_OkExt_Chat := StateIndex;
   Caption := '��������� (Ctrl+Enter)';
  end;//with PublishOperationState(en_Result, op_OkExt, 'Chat')
 PublishOperation(en_Chat,
                    op_ClearHistory,
                    en_capChat,
                    op_capClearHistory);
 g_module_opcode_Chat_OpenContactList := 
  PublishModuleOperation(Tmo_Chat, 'OpenContactList', '');
 PublishOperation(en_Journal,
                    op_Clear,
                    en_capJournal,
                    op_capClear);
 g_module_opcode_WorkJournal_OpenJournal := 
  PublishModuleOperation(Tmo_WorkJournal, 'OpenJournal', '');
 PublishOperation(en_NewsThemes,
                    op_SelectCurrent,
                    en_capNewsThemes,
                    op_capSelectCurrent);
 PublishOperation(en_DateInterval,
                    op_Open,
                    en_capDateInterval,
                    op_capOpen);
 g_opcode_System_CommonDataChanged :=
  PublishInternalOperation(en_System,
                    op_CommonDataChanged,
                    en_capSystem,
                    op_capCommonDataChanged);
 g_opcode_DateInterval_OpenInt :=
  PublishInternalOperation(en_DateInterval,
                    op_OpenInt,
                    en_capDateInterval,
                    op_capOpenInt);
 g_opcode_Form_RequestClose :=
  PublishInternalOperation(en_Form,
                    op_RequestClose,
                    en_capForm,
                    op_capRequestClose);
 g_module_opcode_Monitorings_OpenNewsLine := 
  PublishModuleOperation(Tmo_Monitorings, 'OpenNewsLine', '��������� �����');
 g_module_opcode_Monitorings_OpenLegislationReview := 
  PublishModuleOperation(Tmo_Monitorings, 'OpenLegislationReview', '����� ��������� ����������������');
 g_module_opcode_Common_ComplectInfo := 
  PublishModuleOperation(Tmo_Common, 'ComplectInfo', '���������� � ���������');
 g_module_opcode_Common_PageSetup := 
  PublishModuleOperation(Tmo_Common, 'PageSetup', '��������� ��������...');
 g_module_opcode_Common_ShowEULA := 
  PublishModuleOperation(Tmo_Common, 'ShowEULA', '������� �������������');
 g_module_opcode_Common_OpenMainMenuByButton := 
  PublishModuleOperation(Tmo_Common, 'OpenMainMenuByButton', '�������� ���� ������� ������');
 g_module_opcode_Common_OpenMainMenuNew := 
  PublishModuleOperation(Tmo_Common, 'OpenMainMenuNew', '�������� ����', true);
 PublishOperation(en_Fake,
                    op_Fake,
                    en_capFake,
                    op_capFake);
 g_module_opcode_Common_TasksPanel := 
  PublishModuleOperation(Tmo_Common, 'TasksPanel', '������ �����');
 g_module_opcode_Common_LetterToDevelopers := 
  PublishModuleOperation(Tmo_Common, 'LetterToDevelopers', '������ �������������', true);
 PublishOperation(en_NavigatorElement,
                    op_Info,
                    en_capNavigatorElement,
                    op_capInfo);
 PublishOperation(en_NavigatorElement,
                    op_Execute,
                    en_capNavigatorElement,
                    op_capExecute);
 g_opcode_Navigator_SetCurrent :=
  PublishInternalOperation(en_Navigator,
                    op_SetCurrent,
                    en_capNavigator,
                    op_capSetCurrent);
 g_module_opcode_Common_OpenRubricator := 
  PublishModuleOperation(Tmo_Common, 'OpenRubricator', '�������� ���������');
 g_module_opcode_Common_OpenInformation := 
  PublishModuleOperation(Tmo_Common, 'OpenInformation', '���������� ����������');
 g_module_opcode_Common_get_navigator := 
  PublishModuleOperation(Tmo_Common, 'get_navigator', '���� (�������)', true);
 g_module_opcode_Common_OpenIntranet := 
  PublishModuleOperation(Tmo_Common, 'OpenIntranet', '');
 g_opcode_PrintParams_UpdatePrinter :=
  PublishInternalOperation(en_PrintParams,
                    op_UpdatePrinter,
                    en_capPrintParams,
                    op_capUpdatePrinter);
 g_opcode_Rubricator_SetListRoot :=
  PublishInternalOperation(en_Rubricator,
                    op_SetListRoot,
                    en_capRubricator,
                    op_capSetListRoot);
 g_opcode_Rubricator_InitListRoot :=
  PublishInternalOperation(en_Rubricator,
                    op_InitListRoot,
                    en_capRubricator,
                    op_capInitListRoot);
 g_opcode_Rubricator_Synchronize :=
  PublishInternalOperation(en_Rubricator,
                    op_Synchronize,
                    en_capRubricator,
                    op_capSynchronize);
 g_opcode_Rubricator_GetRoot :=
  PublishInternalOperation(en_Rubricator,
                    op_GetRoot,
                    en_capRubricator,
                    op_capGetRoot);
 PublishOperation(en_File,
                    op_SaveToFolder,
                    en_capFile,
                    op_capSaveToFolder);
 PublishOperation(en_File,
                    op_LoadFromFolder,
                    en_capFile,
                    op_capLoadFromFolder);
 g_opcode_Document_GetAttributesFrmAct :=
  PublishOperation(en_Document,
                    op_GetAttributesFrmAct,
                    en_capDocument,
                    op_capGetAttributesFrmAct);
  with PublishOperationState(en_Document, op_GetAttributesFrmAct, 'Picture') do
  begin
   st_user_Document_GetAttributesFrmAct_Picture := StateIndex;
   Caption := '���������� � ��������';
  end;//with PublishOperationState(en_Document, op_GetAttributesFrmAct, 'Picture')
 g_opcode_Document_OpenCorrespondentList :=
  PublishInternalOperation(en_Document,
                    op_OpenCorrespondentList,
                    en_capDocument,
                    op_capOpenCorrespondentList);
 g_opcode_Document_OpenRespondentList :=
  PublishInternalOperation(en_Document,
                    op_OpenRespondentList,
                    en_capDocument,
                    op_capOpenRespondentList);
 g_opcode_Document_GetRelatedDocFrmAct :=
  PublishOperation(en_Document,
                    op_GetRelatedDocFrmAct,
                    en_capDocument,
                    op_capGetRelatedDocFrmAct);
 g_opcode_Document_GetCorrespondentList :=
  PublishOperation(en_Document,
                    op_GetCorrespondentList,
                    en_capDocument,
                    op_capGetCorrespondentList);
 g_opcode_Document_GetRespondentList :=
  PublishOperation(en_Document,
                    op_GetRespondentList,
                    en_capDocument,
                    op_capGetRespondentList);
 g_opcode_Document_AttributesCanBeClosed :=
  PublishInternalOperation(en_Document,
                    op_AttributesCanBeClosed,
                    en_capDocument,
                    op_capAttributesCanBeClosed);
 g_opcode_Document_CommonDocumentOpenNewWindow :=
  PublishInternalOperation(en_Document,
                    op_CommonDocumentOpenNewWindow,
                    en_capDocument,
                    op_capCommonDocumentOpenNewWindow);
 g_opcode_Document_GetCorrespondentListExFrmAct :=
  PublishOperation(en_Document,
                    op_GetCorrespondentListExFrmAct,
                    en_capDocument,
                    op_capGetCorrespondentListExFrmAct);
 g_opcode_Document_GetRespondentListExFrmAct :=
  PublishOperation(en_Document,
                    op_GetRespondentListExFrmAct,
                    en_capDocument,
                    op_capGetRespondentListExFrmAct);
 g_opcode_Document_DocumentIsUseful :=
  PublishOperation(en_Document,
                    op_DocumentIsUseful,
                    en_capDocument,
                    op_capDocumentIsUseful);
 g_opcode_Document_DocumentIsUseless :=
  PublishOperation(en_Document,
                    op_DocumentIsUseless,
                    en_capDocument,
                    op_capDocumentIsUseless);
 g_opcode_Document_PrevDocumentInList :=
  PublishOperation(en_Document,
                    op_PrevDocumentInList,
                    en_capDocument,
                    op_capPrevDocumentInList);
 g_opcode_Document_NextDocumentInList :=
  PublishOperation(en_Document,
                    op_NextDocumentInList,
                    en_capDocument,
                    op_capNextDocumentInList);
 g_opcode_Document_ReturnToList :=
  PublishOperation(en_Document,
                    op_ReturnToList,
                    en_capDocument,
                    op_capReturnToList);
 PublishOperation(en_Document,
                    op_AddToControl,
                    en_capDocument,
                    op_capAddToControl);
  with PublishOperationState(en_Document, op_AddToControl, 'RemoveFromControl') do
  begin
   st_user_Document_AddToControl_RemoveFromControl := StateIndex;
   Caption := '����� � ��������';
   Checked := true;
  end;//with PublishOperationState(en_Document, op_AddToControl, 'RemoveFromControl')
 PublishOperation(en_Document,
                    op_UserCR1,
                    en_capDocument,
                    op_capUserCR1);
  with PublishOperationState(en_Document, op_UserCR1, 'Corr') do
  begin
   st_user_Document_UserCR1_Corr := StateIndex;
   ImageIndex := 18;
  end;//with PublishOperationState(en_Document, op_UserCR1, 'Corr')
 PublishOperation(en_Document,
                    op_UserCR2,
                    en_capDocument,
                    op_capUserCR2);
  with PublishOperationState(en_Document, op_UserCR2, 'Corr') do
  begin
   st_user_Document_UserCR2_Corr := StateIndex;
   ImageIndex := 18;
  end;//with PublishOperationState(en_Document, op_UserCR2, 'Corr')
 PublishOperation(en_Document,
                    op_AddBookmark,
                    en_capDocument,
                    op_capAddBookmark);
 PublishOperation(en_Document,
                    op_GetGraphicImage,
                    en_capDocument,
                    op_capGetGraphicImage);
 PublishOperation(en_File,
                    op_MakeHyperlinkToDocument,
                    en_capFile,
                    op_capMakeHyperlinkToDocument);
 PublishOperation(en_Text,
                    op_MakeHyperlinkToDocument,
                    en_capText,
                    op_capMakeHyperlinkToDocument);
 PublishOperation(en_Document,
                    op_MakeHyperlinkToDocument,
                    en_capDocument,
                    op_capMakeHyperlinkToDocument);
 PublishOperation(en_Openable,
                    op_OpenInNewWindow,
                    en_capOpenable,
                    op_capOpenInNewWindow);
 PublishOperation(en_SubPanelSettings,
                    op_Show,
                    en_capSubPanelSettings,
                    op_capShow);
 PublishOperation(en_Reminder,
                    op_RemWarnJuror,
                    en_capReminder,
                    op_capRemWarnJuror);
 PublishOperation(en_Reminder,
                    op_RemWarnTimeMachineOn,
                    en_capReminder,
                    op_capRemWarnTimeMachineOn);
 PublishOperation(en_Reminder,
                    op_RemWarnRedaction,
                    en_capReminder,
                    op_capRemWarnRedaction);
 PublishOperation(en_Reminder,
                    op_RemWarnOnControl,
                    en_capReminder,
                    op_capRemWarnOnControl);
 PublishOperation(en_Reminder,
                    op_RemWarnIsAbolished,
                    en_capReminder,
                    op_capRemWarnIsAbolished);
 PublishOperation(en_Reminder,
                    op_RemWarnTimeMachineException,
                    en_capReminder,
                    op_capRemWarnTimeMachineException);
 PublishOperation(en_Reminder,
                    op_RemWarnPreActive,
                    en_capReminder,
                    op_capRemWarnPreActive);
 PublishOperation(en_Reminder,
                    op_RemWarnTimeMachineWarning,
                    en_capReminder,
                    op_capRemWarnTimeMachineWarning);
 PublishOperation(en_Reminder,
                    op_ViewInactualDocument,
                    en_capReminder,
                    op_capViewInactualDocument);
 PublishOperation(en_Document,
                    op_ChangesButton,
                    en_capDocument,
                    op_capChangesButton);
 PublishOperation(en_SubsPanel,
                    op_CopySubNumber,
                    en_capSubsPanel,
                    op_capCopySubNumber);
 g_opcode_Document_CompareEditions :=
  PublishOperation(en_Document,
                    op_CompareEditions,
                    en_capDocument,
                    op_capCompareEditions);
  with PublishOperationState(en_Document, op_CompareEditions, 'ShowChanges') do
  begin
   st_user_Document_CompareEditions_ShowChanges := StateIndex;
   Caption := '�������� ���������';
  end;//with PublishOperationState(en_Document, op_CompareEditions, 'ShowChanges')
 g_opcode_System_TimeMachineStateChange :=
  PublishInternalOperation(en_System,
                    op_TimeMachineStateChange,
                    en_capSystem,
                    op_capTimeMachineStateChange, true);
 g_opcode_Document_FindExplanation :=
  PublishInternalOperation(en_Document,
                    op_FindExplanation,
                    en_capDocument,
                    op_capFindExplanation);
 PublishOperation(en_Selection,
                    op_InsertHyperlink,
                    en_capSelection,
                    op_capInsertHyperlink, true);
  with PublishOperationState(en_Selection, op_InsertHyperlink, 'ModifyLink', true) do
  begin
   st_user_Selection_InsertHyperlink_ModifyLink := StateIndex;
   Caption := '�������� ������...';
  end;//with PublishOperationState(en_Selection, op_InsertHyperlink, 'ModifyLink', true)
 PublishOperation(en_Selection,
                    op_FindInDict,
                    en_capSelection,
                    op_capFindInDict);
 g_opcode_Document_SetActive :=
  PublishInternalOperation(en_Document,
                    op_SetActive,
                    en_capDocument,
                    op_capSetActive);
 g_opcode_Document_ExportBlock :=
  PublishInternalOperation(en_Document,
                    op_ExportBlock,
                    en_capDocument,
                    op_capExportBlock);
 g_opcode_Document_GetCurrentPosition :=
  PublishInternalOperation(en_Document,
                    op_GetCurrentPosition,
                    en_capDocument,
                    op_capGetCurrentPosition);
 g_opcode_Document_SelectBlock :=
  PublishInternalOperation(en_Document,
                    op_SelectBlock,
                    en_capDocument,
                    op_capSelectBlock);
 g_opcode_Document_CopyBlock :=
  PublishInternalOperation(en_Document,
                    op_CopyBlock,
                    en_capDocument,
                    op_capCopyBlock);
 g_opcode_Document_PrintBlock :=
  PublishInternalOperation(en_Document,
                    op_PrintBlock,
                    en_capDocument,
                    op_capPrintBlock);
 g_opcode_Document_PrintDialogBlock :=
  PublishInternalOperation(en_Document,
                    op_PrintDialogBlock,
                    en_capDocument,
                    op_capPrintDialogBlock);
 g_opcode_Document_PreviewBlock :=
  PublishInternalOperation(en_Document,
                    op_PreviewBlock,
                    en_capDocument,
                    op_capPreviewBlock);
 g_opcode_Document_ShowRespondentListToPart :=
  PublishInternalOperation(en_Document,
                    op_ShowRespondentListToPart,
                    en_capDocument,
                    op_capShowRespondentListToPart);
 g_opcode_Document_ShowCorrespondentListToPart :=
  PublishInternalOperation(en_Document,
                    op_ShowCorrespondentListToPart,
                    en_capDocument,
                    op_capShowCorrespondentListToPart);
 g_opcode_Document_ModifyBookmarkNotify :=
  PublishInternalOperation(en_Document,
                    op_ModifyBookmarkNotify,
                    en_capDocument,
                    op_capModifyBookmarkNotify);
 g_opcode_Document_AddBookmarkFromContents :=
  PublishInternalOperation(en_Document,
                    op_AddBookmarkFromContents,
                    en_capDocument,
                    op_capAddBookmarkFromContents);
 g_opcode_Document_OpenNotSureTopic :=
  PublishInternalOperation(en_Document,
                    op_OpenNotSureTopic,
                    en_capDocument,
                    op_capOpenNotSureTopic);
 g_opcode_Document_GotoPara :=
  PublishInternalOperation(en_Document,
                    op_GotoPara,
                    en_capDocument,
                    op_capGotoPara);
 g_opcode_TimeMachine_TimeMachineOnOffNew :=
  PublishOperation(en_TimeMachine,
                    op_TimeMachineOnOffNew,
                    en_capTimeMachine,
                    op_capTimeMachineOnOffNew);
  with PublishOperationState(en_TimeMachine, op_TimeMachineOnOffNew, 'MachineOn') do
  begin
   st_user_TimeMachine_TimeMachineOnOffNew_MachineOn := StateIndex;
  end;//with PublishOperationState(en_TimeMachine, op_TimeMachineOnOffNew, 'MachineOn')
  with PublishOperationState(en_TimeMachine, op_TimeMachineOnOffNew, 'MachineOff') do
  begin
   st_user_TimeMachine_TimeMachineOnOffNew_MachineOff := StateIndex;
   Caption := '��������� ������ �������/�������� ����';
   ImageIndex := 110;
  end;//with PublishOperationState(en_TimeMachine, op_TimeMachineOnOffNew, 'MachineOff')
 g_opcode_TimeMachine_TimeMachineOnOff :=
  PublishInternalOperation(en_TimeMachine,
                    op_TimeMachineOnOff,
                    en_capTimeMachine,
                    op_capTimeMachineOnOff);
 g_opcode_TimeMachine_TimeMachineOffAndReset :=
  PublishInternalOperation(en_TimeMachine,
                    op_TimeMachineOffAndReset,
                    en_capTimeMachine,
                    op_capTimeMachineOffAndReset);
 PublishOperation(en_Edit,
                    op_ToggleFoundWords,
                    en_capEdit,
                    op_capToggleFoundWords);
 PublishOperation(en_DocumentBlock,
                    op_GetTypedCorrespondentList,
                    en_capDocumentBlock,
                    op_capGetTypedCorrespondentList);
  with PublishOperationState(en_DocumentBlock, op_GetTypedCorrespondentList, 'InText') do
  begin
   st_user_DocumentBlock_GetTypedCorrespondentList_InText := StateIndex;
   Caption := '������ �� ��������:';
  end;//with PublishOperationState(en_DocumentBlock, op_GetTypedCorrespondentList, 'InText')
 PublishOperation(en_DocumentBlock,
                    op_PrintPreview,
                    en_capDocumentBlock,
                    op_capPrintPreview);
 PublishOperation(en_DocumentBlock,
                    op_Select,
                    en_capDocumentBlock,
                    op_capSelect);
 PublishOperation(en_DocumentBlock,
                    op_GetCorrespondentList,
                    en_capDocumentBlock,
                    op_capGetCorrespondentList);
 PublishOperation(en_DocumentBlock,
                    op_GetRespondentList,
                    en_capDocumentBlock,
                    op_capGetRespondentList);
 PublishOperation(en_DocumentBlock,
                    op_GetTypedRespondentList,
                    en_capDocumentBlock,
                    op_capGetTypedRespondentList);
 PublishOperation(en_DocumentBlock,
                    op_ToMSWord,
                    en_capDocumentBlock,
                    op_capToMSWord);
 PublishOperation(en_DocumentBlock,
                    op_PrintDialog,
                    en_capDocumentBlock,
                    op_capPrintDialog);
 PublishOperation(en_DocumentBlock,
                    op_Copy,
                    en_capDocumentBlock,
                    op_capCopy);
 PublishOperation(en_DocumentBlock,
                    op_Print,
                    en_capDocumentBlock,
                    op_capPrint);
 PublishOperation(en_Document,
                    op_GetAnnotationDocFrmAct,
                    en_capDocument,
                    op_capGetAnnotationDocFrmAct);
 PublishOperation(en_Document,
                    op_SimilarDocuments,
                    en_capDocument,
                    op_capSimilarDocuments);
 g_opcode_DocumentBlockHeader_UserCR1 :=
  PublishOperation(en_DocumentBlockHeader,
                    op_UserCR1,
                    en_capDocumentBlockHeader,
                    op_capUserCR1);
  with PublishOperationState(en_DocumentBlockHeader, op_UserCR1, 'Corr') do
  begin
   st_user_DocumentBlockHeader_UserCR1_Corr := StateIndex;
   ImageIndex := 18;
  end;//with PublishOperationState(en_DocumentBlockHeader, op_UserCR1, 'Corr')
 g_opcode_DocumentBlockHeader_UserCR2 :=
  PublishOperation(en_DocumentBlockHeader,
                    op_UserCR2,
                    en_capDocumentBlockHeader,
                    op_capUserCR2);
  with PublishOperationState(en_DocumentBlockHeader, op_UserCR2, 'Corr') do
  begin
   st_user_DocumentBlockHeader_UserCR2_Corr := StateIndex;
   ImageIndex := 18;
  end;//with PublishOperationState(en_DocumentBlockHeader, op_UserCR2, 'Corr')
 g_opcode_DocumentBlockHeader_GetTypedCorrespondentList :=
  PublishOperation(en_DocumentBlockHeader,
                    op_GetTypedCorrespondentList,
                    en_capDocumentBlockHeader,
                    op_capGetTypedCorrespondentList);
 g_opcode_DocumentBlockHeader_AddBookmark :=
  PublishOperation(en_DocumentBlockHeader,
                    op_AddBookmark,
                    en_capDocumentBlockHeader,
                    op_capAddBookmark);
 g_opcode_DocumentBlockHeader_ToMSWord :=
  PublishOperation(en_DocumentBlockHeader,
                    op_ToMSWord,
                    en_capDocumentBlockHeader,
                    op_capToMSWord);
 g_opcode_DocumentBlockHeader_Print :=
  PublishOperation(en_DocumentBlockHeader,
                    op_Print,
                    en_capDocumentBlockHeader,
                    op_capPrint);
 g_opcode_DocumentBlockHeader_PrintDialog :=
  PublishOperation(en_DocumentBlockHeader,
                    op_PrintDialog,
                    en_capDocumentBlockHeader,
                    op_capPrintDialog);
 PublishOperation(en_Text,
                    op_AddToControl,
                    en_capText,
                    op_capAddToControl);
  with PublishOperationState(en_Text, op_AddToControl, 'RemoveFromControl') do
  begin
   st_user_Text_AddToControl_RemoveFromControl := StateIndex;
   Caption := '����� � ��������';
   Checked := true;
  end;//with PublishOperationState(en_Text, op_AddToControl, 'RemoveFromControl')
 PublishOperation(en_Selection,
                    op_ShowCorrespondentListToPart,
                    en_capSelection,
                    op_capShowCorrespondentListToPart);
 PublishOperation(en_Selection,
                    op_ShowRespondentListToPart,
                    en_capSelection,
                    op_capShowRespondentListToPart);
 PublishOperation(en_WarnOnControl,
                    op_ClearStatusSettings,
                    en_capWarnOnControl,
                    op_capClearStatusSettings);
 PublishOperation(en_WarnOnControl,
                    op_ShowChanges,
                    en_capWarnOnControl,
                    op_capShowChanges);
 PublishOperation(en_WarnOnControl,
                    op_ClearStatus,
                    en_capWarnOnControl,
                    op_capClearStatus);
 PublishOperation(en_TasksPanel,
                    op_TimeMachineOnOff,
                    en_capTasksPanel,
                    op_capTimeMachineOnOff);
  with PublishOperationState(en_TasksPanel, op_TimeMachineOnOff, 'On') do
  begin
   st_user_TasksPanel_TimeMachineOnOff_On := StateIndex;
   Caption := '�������� ������ �������';
   ImageIndex := 111;
  end;//with PublishOperationState(en_TasksPanel, op_TimeMachineOnOff, 'On')
  with PublishOperationState(en_TasksPanel, op_TimeMachineOnOff, 'Off') do
  begin
   st_user_TasksPanel_TimeMachineOnOff_Off := StateIndex;
   Caption := '��������� ������ �������';
  end;//with PublishOperationState(en_TasksPanel, op_TimeMachineOnOff, 'Off')
 PublishOperation(en_Document,
                    op_OpenContentsFrmAct,
                    en_capDocument,
                    op_capOpenContentsFrmAct);
  with PublishOperationState(en_Document, op_OpenContentsFrmAct, 'Drug') do
  begin
   st_user_Document_OpenContentsFrmAct_Drug := StateIndex;
   Caption := '��������� ���������';
  end;//with PublishOperationState(en_Document, op_OpenContentsFrmAct, 'Drug')
 PublishOperation(en_Document,
                    op_ShowDocumentPicture,
                    en_capDocument,
                    op_capShowDocumentPicture);
 PublishOperation(en_Document,
                    op_DocumentSynchroOpenWindow,
                    en_capDocument,
                    op_capDocumentSynchroOpenWindow, true);
 PublishOperation(en_Document,
                    op_DocumentSynchroOpenNewWindow,
                    en_capDocument,
                    op_capDocumentSynchroOpenNewWindow, true);
 PublishOperation(en_Document,
                    op_DictListOpenFrmAct,
                    en_capDocument,
                    op_capDictListOpenFrmAct);
 PublishOperation(en_Document,
                    op_GotoBookmark,
                    en_capDocument,
                    op_capGotoBookmark);
 PublishOperation(en_Document,
                    op_LiteratureListForDictionary,
                    en_capDocument,
                    op_capLiteratureListForDictionary);
 PublishOperation(en_Document,
                    op_OpenProducedDrugList,
                    en_capDocument,
                    op_capOpenProducedDrugList);
 PublishOperation(en_Document,
                    op_OpenSimilarDrugList,
                    en_capDocument,
                    op_capOpenSimilarDrugList);
 PublishOperation(en_ExternalObject,
                    op_Open,
                    en_capExternalObject,
                    op_capOpen);
 PublishOperation(en_ExternalObject,
                    op_Save,
                    en_capExternalObject,
                    op_capSave);
 PublishOperation(en_WarnRedaction,
                    op_ShowInfo,
                    en_capWarnRedaction,
                    op_capShowInfo, true);
  with PublishOperationState(en_WarnRedaction, op_ShowInfo, 'Hide', true) do
  begin
   st_user_WarnRedaction_ShowInfo_Hide := StateIndex;
   Caption := '������ ����� ��������������';
  end;//with PublishOperationState(en_WarnRedaction, op_ShowInfo, 'Hide', true)
 PublishOperation(en_WarnRedaction,
                    op_OpenActualRedaction,
                    en_capWarnRedaction,
                    op_capOpenActualRedaction, true);
 PublishOperation(en_WarnTimeMachine,
                    op_ShowInfo,
                    en_capWarnTimeMachine,
                    op_capShowInfo);
  with PublishOperationState(en_WarnTimeMachine, op_ShowInfo, 'Hide') do
  begin
   st_user_WarnTimeMachine_ShowInfo_Hide := StateIndex;
   Caption := '������ ����� ��������������';
  end;//with PublishOperationState(en_WarnTimeMachine, op_ShowInfo, 'Hide')
 PublishOperation(en_WarnTimeMachine,
                    op_TimeMachineOnOffNew,
                    en_capWarnTimeMachine,
                    op_capTimeMachineOnOffNew);
  with PublishOperationState(en_WarnTimeMachine, op_TimeMachineOnOffNew, 'MachineOn') do
  begin
   st_user_WarnTimeMachine_TimeMachineOnOffNew_MachineOn := StateIndex;
   Caption := '�������� ������ �������';
   ImageIndex := 111;
  end;//with PublishOperationState(en_WarnTimeMachine, op_TimeMachineOnOffNew, 'MachineOn')
  with PublishOperationState(en_WarnTimeMachine, op_TimeMachineOnOffNew, 'MachineOff') do
  begin
   st_user_WarnTimeMachine_TimeMachineOnOffNew_MachineOff := StateIndex;
   Caption := '��������� ������ �������/�������� ����';
  end;//with PublishOperationState(en_WarnTimeMachine, op_TimeMachineOnOffNew, 'MachineOff')
 PublishOperation(en_WarnJuror,
                    op_ShowInfo,
                    en_capWarnJuror,
                    op_capShowInfo, true);
  with PublishOperationState(en_WarnJuror, op_ShowInfo, 'Hide', true) do
  begin
   st_user_WarnJuror_ShowInfo_Hide := StateIndex;
   Caption := '������ ����� ��������������';
  end;//with PublishOperationState(en_WarnJuror, op_ShowInfo, 'Hide', true)
 PublishOperation(en_UserCommentIcon,
                    op_HideShow,
                    en_capUserCommentIcon,
                    op_capHideShow);
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'GarantHidden') do
  begin
   st_user_UserCommentIcon_HideShow_GarantHidden := StateIndex;
   Caption := '�������� ����������� �������';
   ImageIndex := 207;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'GarantHidden')
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'GarantShown') do
  begin
   st_user_UserCommentIcon_HideShow_GarantShown := StateIndex;
   Caption := '������ ����������� �������';
   ImageIndex := 207;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'GarantShown')
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'UserShown') do
  begin
   st_user_UserCommentIcon_HideShow_UserShown := StateIndex;
   Caption := '������ ��� �����������';
   ImageIndex := 50;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'UserShown')
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'UserHidden') do
  begin
   st_user_UserCommentIcon_HideShow_UserHidden := StateIndex;
   Caption := '�������� ��� �����������';
   ImageIndex := 50;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'UserHidden')
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'Invisible') do
  begin
   st_user_UserCommentIcon_HideShow_Invisible := StateIndex;
   Visible := false;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'Invisible')
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'VersionShown') do
  begin
   st_user_UserCommentIcon_HideShow_VersionShown := StateIndex;
   Caption := '��������� ���������� �� ���������� ���������';
   ImageIndex := 206;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'VersionShown')
  with PublishOperationState(en_UserCommentIcon, op_HideShow, 'VersionHidden') do
  begin
   st_user_UserCommentIcon_HideShow_VersionHidden := StateIndex;
   Caption := '�������� ���������� �� ���������� ���������';
   ImageIndex := 206;
  end;//with PublishOperationState(en_UserCommentIcon, op_HideShow, 'VersionHidden')
 PublishOperation(en_UserCommentIcon,
                    op_Delete,
                    en_capUserCommentIcon,
                    op_capDelete);
 PublishOperation(en_UserComment,
                    op_Delete,
                    en_capUserComment,
                    op_capDelete);
 g_opcode_Text_AddUserComment :=
  PublishOperation(en_Text,
                    op_AddUserComment,
                    en_capText,
                    op_capAddUserComment);
 g_opcode_Text_DeleteBookmark :=
  PublishOperation(en_Text,
                    op_DeleteBookmark,
                    en_capText,
                    op_capDeleteBookmark);
 g_opcode_Text_EditBookmark :=
  PublishOperation(en_Text,
                    op_EditBookmark,
                    en_capText,
                    op_capEditBookmark);
 g_opcode_Text_AddBookmark :=
  PublishOperation(en_Text,
                    op_AddBookmark,
                    en_capText,
                    op_capAddBookmark);
 g_opcode_Text_OpenNewWindow :=
  PublishOperation(en_Text,
                    op_OpenNewWindow,
                    en_capText,
                    op_capOpenNewWindow);
 g_opcode_DocumentSubPanel_UpdateSubPanel :=
  PublishInternalOperation(en_DocumentSubPanel,
                    op_UpdateSubPanel,
                    en_capDocumentSubPanel,
                    op_capUpdateSubPanel);
 PublishOperation(en_DocumentBlockBookmarks,
                    op_AddBookmark,
                    en_capDocumentBlockBookmarks,
                    op_capAddBookmark);
 PublishOperation(en_IntranetSourcePoint,
                    op_GoToIntranet,
                    en_capIntranetSourcePoint,
                    op_capGoToIntranet);
 PublishOperation(en_Picture,
                    op_Open,
                    en_capPicture,
                    op_capOpen);
 PublishOperation(en_Picture,
                    op_OpenNewWindow,
                    en_capPicture,
                    op_capOpenNewWindow);
 g_opcode_BaseSearchPresentationHolder_GetBaseSearchPresentation :=
  PublishInternalOperation(en_BaseSearchPresentationHolder,
                    op_GetBaseSearchPresentation,
                    en_capBaseSearchPresentationHolder,
                    op_capGetBaseSearchPresentation);
 g_opcode_Switcher_SetFirstPageActive :=
  PublishInternalOperation(en_Switcher,
                    op_SetFirstPageActive,
                    en_capSwitcher,
                    op_capSetFirstPageActive);
 g_opcode_AACTextContainer_GetVScrollBar :=
  PublishInternalOperation(en_AACTextContainer,
                    op_GetVScrollBar,
                    en_capAACTextContainer,
                    op_capGetVScrollBar);
 g_opcode_AACTextContainer_SetJumpTo :=
  PublishInternalOperation(en_AACTextContainer,
                    op_SetJumpTo,
                    en_capAACTextContainer,
                    op_capSetJumpTo);
 g_opcode_ContentsValidator_IsDocumentAdornmentsChanged :=
  PublishInternalOperation(en_ContentsValidator,
                    op_IsDocumentAdornmentsChanged,
                    en_capContentsValidator,
                    op_capIsDocumentAdornmentsChanged);
 PublishOperation(en_Edition,
                    op_OpenNewWindow,
                    en_capEdition,
                    op_capOpenNewWindow);
 g_opcode_Editions_SetCurrent :=
  PublishInternalOperation(en_Editions,
                    op_SetCurrent,
                    en_capEditions,
                    op_capSetCurrent);
 PublishOperation(en_Editions,
                    op_DoCompareEditions,
                    en_capEditions,
                    op_capDoCompareEditions);
 SetOperationImageIndex(
                    en_Editions,
                    op_DoCompareEditions,
                    200);
 PublishOperation(en_Editions,
                    op_BuildChangedFragments,
                    en_capEditions,
                    op_capBuildChangedFragments);
 SetOperationImageIndex(
                    en_Editions,
                    op_BuildChangedFragments,
                    205);
 g_opcode_Contents_SetCurrent :=
  PublishInternalOperation(en_Contents,
                    op_SetCurrent,
                    en_capContents,
                    op_capSetCurrent);
 g_opcode_Contents_MoveCurrent :=
  PublishInternalOperation(en_Contents,
                    op_MoveCurrent,
                    en_capContents,
                    op_capMoveCurrent);
 g_opcode_Contents_HasUserComments :=
  PublishInternalOperation(en_Contents,
                    op_HasUserComments,
                    en_capContents,
                    op_capHasUserComments);
 g_opcode_Contents_HasBookmarks :=
  PublishInternalOperation(en_Contents,
                    op_HasBookmarks,
                    en_capContents,
                    op_capHasBookmarks);
 g_opcode_Contents_ToggleContentsVisibility :=
  PublishInternalOperation(en_Contents,
                    op_ToggleContentsVisibility,
                    en_capContents,
                    op_capToggleContentsVisibility);
 g_opcode_Contents_IsContentsVisible :=
  PublishInternalOperation(en_Contents,
                    op_IsContentsVisible,
                    en_capContents,
                    op_capIsContentsVisible);
 g_opcode_Comment_Changed :=
  PublishInternalOperation(en_Comment,
                    op_Changed,
                    en_capComment,
                    op_capChanged);
 PublishOperation(en_Picture,
                    op_Resize,
                    en_capPicture,
                    op_capResize);
 PublishOperation(en_Picture,
                    op_Enlarge,
                    en_capPicture,
                    op_capEnlarge);
 PublishOperation(en_Picture,
                    op_Shrink,
                    en_capPicture,
                    op_capShrink);
 PublishOperation(en_Picture,
                    op_ActualSize,
                    en_capPicture,
                    op_capActualSize);
 PublishOperation(en_Picture,
                    op_FitInWIndow,
                    en_capPicture,
                    op_capFitInWIndow);
 g_opcode_Picture_InitNewContent :=
  PublishInternalOperation(en_Picture,
                    op_InitNewContent,
                    en_capPicture,
                    op_capInitNewContent);
 g_module_opcode_Document_OpenDocOnNumber := 
  PublishModuleOperation(Tmo_Document, 'OpenDocOnNumber', '������� �������� �� ������');
 g_opcode_Warning_BecomeActive :=
  PublishInternalOperation(en_Warning,
                    op_BecomeActive,
                    en_capWarning,
                    op_capBecomeActive);
 g_opcode_Warning_SwitchActive :=
  PublishInternalOperation(en_Warning,
                    op_SwitchActive,
                    en_capWarning,
                    op_capSwitchActive);
 PublishOperation(en_Warning,
                    op_TimeMachineOffAndReset,
                    en_capWarning,
                    op_capTimeMachineOffAndReset);
 PublishOperation(en_Warning,
                    op_ActualRedaction,
                    en_capWarning,
                    op_capActualRedaction);
 PublishOperation(en_Warning,
                    op_TimeMachineOff,
                    en_capWarning,
                    op_capTimeMachineOff);
 PublishOperation(en_Attribute,
                    op_Copy,
                    en_capAttribute,
                    op_capCopy);
 PublishOperation(en_SynchroView,
                    op_ShowText,
                    en_capSynchroView,
                    op_capShowText, true);
 PublishOperation(en_SynchroView,
                    op_Annotation,
                    en_capSynchroView,
                    op_capAnnotation);
 PublishOperation(en_SynchroView,
                    op_ShowAttributes,
                    en_capSynchroView,
                    op_capShowAttributes, true);
 PublishOperation(en_SynchroView,
                    op_ShowRelated,
                    en_capSynchroView,
                    op_capShowRelated, true);
 PublishOperation(en_SynchroView,
                    op_ShowUserCRList1,
                    en_capSynchroView,
                    op_capShowUserCRList1, true);
 PublishOperation(en_SynchroView,
                    op_ShowUserCRList2,
                    en_capSynchroView,
                    op_capShowUserCRList2, true);
 PublishOperation(en_SynchroView,
                    op_SimilarDocuments,
                    en_capSynchroView,
                    op_capSimilarDocuments);
 g_opcode_SynchroView_BecomeActive :=
  PublishInternalOperation(en_SynchroView,
                    op_BecomeActive,
                    en_capSynchroView,
                    op_capBecomeActive);
 g_opcode_List_GetDeList :=
  PublishInternalOperation(en_List,
                    op_GetDeList,
                    en_capList,
                    op_capGetDeList);
 g_opcode_List_SetCurrentVisible :=
  PublishInternalOperation(en_List,
                    op_SetCurrentVisible,
                    en_capList,
                    op_capSetCurrentVisible);
 g_opcode_List_SwitchToFullList :=
  PublishOperation(en_List,
                    op_SwitchToFullList,
                    en_capList,
                    op_capSwitchToFullList);
 g_opcode_List_GetDsList :=
  PublishInternalOperation(en_List,
                    op_GetDsList,
                    en_capList,
                    op_capGetDsList);
 PublishOperation(en_Document,
                    op_Open,
                    en_capDocument,
                    op_capOpen);
 PublishOperation(en_Document,
                    op_OpenNewWindow,
                    en_capDocument,
                    op_capOpenNewWindow);
 PublishOperation(en_Document,
                    op_PrintDialog,
                    en_capDocument,
                    op_capPrintDialog);
 PublishOperation(en_Document,
                    op_PrintPreview,
                    en_capDocument,
                    op_capPrintPreview);
 PublishOperation(en_Document,
                    op_Save,
                    en_capDocument,
                    op_capSave);
 PublishOperation(en_Document,
                    op_Print,
                    en_capDocument,
                    op_capPrint);
 PublishOperation(en_WarnListFiltered,
                    op_ClearAll,
                    en_capWarnListFiltered,
                    op_capClearAll);
 PublishOperation(en_Reminder,
                    op_RemListModified,
                    en_capReminder,
                    op_capRemListModified);
 PublishOperation(en_Reminder,
                    op_RemListFiltered,
                    en_capReminder,
                    op_capRemListFiltered);
 PublishOperation(en_Reminder,
                    op_RemListTimeMachineWarning,
                    en_capReminder,
                    op_capRemListTimeMachineWarning);
 PublishOperation(en_List,
                    op_WorkWithList,
                    en_capList,
                    op_capWorkWithList);
 g_opcode_Filterable_Add :=
  PublishInternalOperation(en_Filterable,
                    op_Add,
                    en_capFilterable,
                    op_capAdd);
 g_opcode_Filterable_Delete :=
  PublishInternalOperation(en_Filterable,
                    op_Delete,
                    en_capFilterable,
                    op_capDelete);
 g_opcode_Filterable_ClearAll :=
  PublishInternalOperation(en_Filterable,
                    op_ClearAll,
                    en_capFilterable,
                    op_capClearAll);
 g_opcode_Filterable_Refresh :=
  PublishInternalOperation(en_Filterable,
                    op_Refresh,
                    en_capFilterable,
                    op_capRefresh);
 g_opcode_Filterable_GetListType :=
  PublishInternalOperation(en_Filterable,
                    op_GetListType,
                    en_capFilterable,
                    op_capGetListType);
 g_opcode_Selection_Analize :=
  PublishOperation(en_Selection,
                    op_Analize,
                    en_capSelection,
                    op_capAnalize);
 PublishOperation(en_Selection,
                    op_CopyToNewList,
                    en_capSelection,
                    op_capCopyToNewList);
 g_opcode_LocalList_SearchInList :=
  PublishOperation(en_LocalList,
                    op_SearchInList,
                    en_capLocalList,
                    op_capSearchInList);
 PublishOperation(en_LocalList,
                    op_PublishSourceSearchInList,
                    en_capLocalList,
                    op_capPublishSourceSearchInList);
 PublishOperation(en_LocalList,
                    op_Open,
                    en_capLocalList,
                    op_capOpen);
 PublishOperation(en_LocalList,
                    op_SearchDrugInList,
                    en_capLocalList,
                    op_capSearchDrugInList);
 PublishOperation(en_LocalList,
                    op_OpenNewWindow,
                    en_capLocalList,
                    op_capOpenNewWindow);
 g_opcode_Filters_FiltersListOpen :=
  PublishOperation(en_Filters,
                    op_FiltersListOpen,
                    en_capFilters,
                    op_capFiltersListOpen);
 PublishOperation(en_List,
                    op_SortDirection,
                    en_capList,
                    op_capSortDirection);
  with PublishOperationState(en_List, op_SortDirection, 'Ascending') do
  begin
   st_user_List_SortDirection_Ascending := StateIndex;
   Caption := '������������� �� �����������';
   Hint := '������������� �� ����������� ��������';
  end;//with PublishOperationState(en_List, op_SortDirection, 'Ascending')
  with PublishOperationState(en_List, op_SortDirection, 'Descending') do
  begin
   st_user_List_SortDirection_Descending := StateIndex;
   Caption := '������������� �� ��������';
   Hint := '������������� �� �������� ��������';
   ImageIndex := 14;
  end;//with PublishOperationState(en_List, op_SortDirection, 'Descending')
 g_opcode_List_Sort :=
  PublishOperation(en_List,
                    op_Sort,
                    en_capList,
                    op_capSort);
 PublishOperation(en_List,
                    op_ListInfo,
                    en_capList,
                    op_capListInfo);
 PublishOperation(en_List,
                    op_SpecifyList,
                    en_capList,
                    op_capSpecifyList);
 PublishOperation(en_List,
                    op_ExportToXML,
                    en_capList,
                    op_capExportToXML);
 PublishOperation(en_List,
                    op_OrAnotherList,
                    en_capList,
                    op_capOrAnotherList);
 PublishOperation(en_List,
                    op_AndAnotherList,
                    en_capList,
                    op_capAndAnotherList);
 PublishOperation(en_List,
                    op_AndNotAnotherList,
                    en_capList,
                    op_capAndNotAnotherList);
 PublishOperation(en_Filters,
                    op_FiltersList,
                    en_capFilters,
                    op_capFiltersList);
 PublishOperation(en_Filters,
                    op_Clear,
                    en_capFilters,
                    op_capClear);
 g_opcode_Filters_InternalClear :=
  PublishInternalOperation(en_Filters,
                    op_InternalClear,
                    en_capFilters,
                    op_capInternalClear);
 PublishOperation(en_CRList,
                    op_SetType,
                    en_capCRList,
                    op_capSetType, true);
 g_opcode_Filter_Activate :=
  PublishOperation(en_Filter,
                    op_Activate,
                    en_capFilter,
                    op_capActivate);
  with PublishOperationState(en_Filter, op_Activate, 'Deactivate') do
  begin
   st_user_Filter_Activate_Deactivate := StateIndex;
   Caption := '�������� ������';
   Checked := true;
  end;//with PublishOperationState(en_Filter, op_Activate, 'Deactivate')
 g_opcode_Filter_ActivateNode :=
  PublishInternalOperation(en_Filter,
                    op_ActivateNode,
                    en_capFilter,
                    op_capActivateNode);
 g_opcode_ListInfo_BecomeActive :=
  PublishInternalOperation(en_ListInfo,
                    op_BecomeActive,
                    en_capListInfo,
                    op_capBecomeActive);
 g_opcode_Filters_DeselectAll :=
  PublishInternalOperation(en_Filters,
                    op_DeselectAll,
                    en_capFilters,
                    op_capDeselectAll);
 PublishOperation(en_Lang,
                    op_Russian,
                    en_capLang,
                    op_capRussian);
 PublishOperation(en_Lang,
                    op_English,
                    en_capLang,
                    op_capEnglish);
 PublishOperation(en_Lang,
                    op_French,
                    en_capLang,
                    op_capFrench);
 PublishOperation(en_Lang,
                    op_Deutch,
                    en_capLang,
                    op_capDeutch);
 PublishOperation(en_Lang,
                    op_Italian,
                    en_capLang,
                    op_capItalian);
 PublishOperation(en_Lang,
                    op_Spanish,
                    en_capLang,
                    op_capSpanish);
 g_module_opcode_Diction_OpenDict := 
  PublishModuleOperation(Tmo_Diction, 'OpenDict', '�������� �������');
 g_opcode_Query_ClearAll :=
  PublishInternalOperation(en_Query,
                    op_ClearAll,
                    en_capQuery,
                    op_capClearAll);
 g_opcode_Query_SetList :=
  PublishInternalOperation(en_Query,
                    op_SetList,
                    en_capQuery,
                    op_capSetList);
 g_opcode_Query_GetList :=
  PublishInternalOperation(en_Query,
                    op_GetList,
                    en_capQuery,
                    op_capGetList);
 PublishOperation(en_Result,
                    op_ClearAll,
                    en_capResult,
                    op_capClearAll);
 PublishOperation(en_Query,
                    op_GetOldQuery,
                    en_capQuery,
                    op_capGetOldQuery);
 PublishOperation(en_Query,
                    op_SearchType,
                    en_capQuery,
                    op_capSearchType);
 PublishOperation(en_LogicOperation,
                    op_LogicOr,
                    en_capLogicOperation,
                    op_capLogicOr);
 PublishOperation(en_LogicOperation,
                    op_LogicAnd,
                    en_capLogicOperation,
                    op_capLogicAnd);
 PublishOperation(en_LogicOperation,
                    op_LogicNot,
                    en_capLogicOperation,
                    op_capLogicNot);
 g_opcode_SearchParameters_IsQueryEmpty :=
  PublishInternalOperation(en_SearchParameters,
                    op_IsQueryEmpty,
                    en_capSearchParameters,
                    op_capIsQueryEmpty);
 g_opcode_SearchParameters_GetQuery :=
  PublishInternalOperation(en_SearchParameters,
                    op_GetQuery,
                    en_capSearchParameters,
                    op_capGetQuery);
 g_opcode_SearchParameters_IsQuerySaved :=
  PublishInternalOperation(en_SearchParameters,
                    op_IsQuerySaved,
                    en_capSearchParameters,
                    op_capIsQuerySaved);
 g_opcode_SearchParameters_SetQuery :=
  PublishInternalOperation(en_SearchParameters,
                    op_SetQuery,
                    en_capSearchParameters,
                    op_capSetQuery);
 g_opcode_SearchParameters_ClearQuery :=
  PublishInternalOperation(en_SearchParameters,
                    op_ClearQuery,
                    en_capSearchParameters,
                    op_capClearQuery);
 g_opcode_SearchParameter_QueryNotSaved :=
  PublishInternalOperation(en_SearchParameter,
                    op_QueryNotSaved,
                    en_capSearchParameter,
                    op_capQueryNotSaved);
 g_opcode_SearchParameter_ClearMistakes :=
  PublishInternalOperation(en_SearchParameter,
                    op_ClearMistakes,
                    en_capSearchParameter,
                    op_capClearMistakes);
 g_opcode_SearchParameter_QuerySaved :=
  PublishInternalOperation(en_SearchParameter,
                    op_QuerySaved,
                    en_capSearchParameter,
                    op_capQuerySaved);
 g_opcode_Attribute_DefaultAction :=
  PublishInternalOperation(en_Attribute,
                    op_DefaultAction,
                    en_capAttribute,
                    op_capDefaultAction);
 g_opcode_Attribute_LogicOr :=
  PublishOperation(en_Attribute,
                    op_LogicOr,
                    en_capAttribute,
                    op_capLogicOr);
 g_opcode_Attribute_LogicAnd :=
  PublishOperation(en_Attribute,
                    op_LogicAnd,
                    en_capAttribute,
                    op_capLogicAnd);
 g_opcode_Attribute_LogicNot :=
  PublishOperation(en_Attribute,
                    op_LogicNot,
                    en_capAttribute,
                    op_capLogicNot);
 g_opcode_Attribute_LogicOrShortcut :=
  PublishOperation(en_Attribute,
                    op_LogicOrShortcut,
                    en_capAttribute,
                    op_capLogicOrShortcut);
 g_module_opcode_Tips_ShowDayTips := 
  PublishModuleOperation(Tmo_Tips, 'ShowDayTips', '');
 PublishOperation(en_MedicFirmList,
                    op_CountryFilter,
                    en_capMedicFirmList,
                    op_capCountryFilter);
 PublishOperation(en_MedicListSynchroView,
                    op_OpenDocument,
                    en_capMedicListSynchroView,
                    op_capOpenDocument);
  with PublishOperationState(en_MedicListSynchroView, op_OpenDocument, 'Drug') do
  begin
   st_user_MedicListSynchroView_OpenDocument_Drug := StateIndex;
   Caption := '�������� ���������';
  end;//with PublishOperationState(en_MedicListSynchroView, op_OpenDocument, 'Drug')
  with PublishOperationState(en_MedicListSynchroView, op_OpenDocument, 'MedicFirm') do
  begin
   st_user_MedicListSynchroView_OpenDocument_MedicFirm := StateIndex;
   Caption := '�������� �����';
  end;//with PublishOperationState(en_MedicListSynchroView, op_OpenDocument, 'MedicFirm')
 PublishOperation(en_MedicListSynchroView,
                    op_OpenList,
                    en_capMedicListSynchroView,
                    op_capOpenList);
  with PublishOperationState(en_MedicListSynchroView, op_OpenList, 'Drug') do
  begin
   st_user_MedicListSynchroView_OpenList_Drug := StateIndex;
   Caption := '���������-��������';
   Hint := '������ ����������-��������� �� �������������� ��������';
   ImageIndex := 181;
  end;//with PublishOperationState(en_MedicListSynchroView, op_OpenList, 'Drug')
  with PublishOperationState(en_MedicListSynchroView, op_OpenList, 'MedicFirm') do
  begin
   st_user_MedicListSynchroView_OpenList_MedicFirm := StateIndex;
   Caption := '������������ ���������';
   Hint := '������ ������������ ����������';
   ImageIndex := 183;
  end;//with PublishOperationState(en_MedicListSynchroView, op_OpenList, 'MedicFirm')
 PublishOperation(en_MedicListSynchroView,
                    op_OpenAttributesForm,
                    en_capMedicListSynchroView,
                    op_capOpenAttributesForm);
 g_module_opcode_Inpharm_MedicDiction := 
  PublishModuleOperation(Tmo_Inpharm, 'MedicDiction', '������� ����������� ��������');
 g_module_opcode_Inpharm_MedicFirms := 
  PublishModuleOperation(Tmo_Inpharm, 'MedicFirms', '���������������� �����');
 g_module_opcode_Inpharm_DrugList := 
  PublishModuleOperation(Tmo_Inpharm, 'DrugList', '������ ����������� ����������');
 g_module_opcode_Inpharm_MedicMainMenu := 
  PublishModuleOperation(Tmo_Inpharm, 'MedicMainMenu', '�������� ���� ������');
 PublishOperation(en_Rubric,
                    op_Execute,
                    en_capRubric,
                    op_capExecute);
 PublishOperation(en_Result,
                    op_Restore,
                    en_capResult,
                    op_capRestore);
 PublishOperation(en_Result,
                    op_SaveAsDefault,
                    en_capResult,
                    op_capSaveAsDefault);
 g_opcode_StyleEditor_ReloadStyleTable :=
  PublishInternalOperation(en_StyleEditor,
                    op_ReloadStyleTable,
                    en_capStyleEditor,
                    op_capReloadStyleTable);
 g_opcode_StyleEditor_RestoreStyleTable :=
  PublishInternalOperation(en_StyleEditor,
                    op_RestoreStyleTable,
                    en_capStyleEditor,
                    op_capRestoreStyleTable);
 g_opcode_StyleEditor_SaveStyleTable :=
  PublishInternalOperation(en_StyleEditor,
                    op_SaveStyleTable,
                    en_capStyleEditor,
                    op_capSaveStyleTable);
 g_opcode_StyleEditor_SetNewContent :=
  PublishInternalOperation(en_StyleEditor,
                    op_SetNewContent,
                    en_capStyleEditor,
                    op_capSetNewContent);
 g_opcode_StyleEditor_ReloadStylesTree :=
  PublishInternalOperation(en_StyleEditor,
                    op_ReloadStylesTree,
                    en_capStyleEditor,
                    op_capReloadStylesTree);
 PublishOperation(en_PopupMenu,
                    op_DoActive,
                    en_capPopupMenu,
                    op_capDoActive);
 PublishOperation(en_PopupMenu,
                    op_Modify,
                    en_capPopupMenu,
                    op_capModify);
 PublishOperation(en_PopupMenu,
                    op_CopyConfig,
                    en_capPopupMenu,
                    op_capCopyConfig);
 PublishOperation(en_PopupMenu,
                    op_ConfInfo,
                    en_capPopupMenu,
                    op_capConfInfo);
 PublishOperation(en_PopupMenu,
                    op_RestoreAllSettings,
                    en_capPopupMenu,
                    op_capRestoreAllSettings);
 PublishOperation(en_PopupMenu,
                    op_RestoreConf,
                    en_capPopupMenu,
                    op_capRestoreConf);
 PublishOperation(en_PopupMenu,
                    op_SaveAsDefaultConf,
                    en_capPopupMenu,
                    op_capSaveAsDefaultConf);
 PublishOperation(en_Result,
                    op_RestoreConf,
                    en_capResult,
                    op_capRestoreConf);
 PublishOperation(en_Result,
                    op_SaveAsDefaultConf,
                    en_capResult,
                    op_capSaveAsDefaultConf);
 PublishOperation(en_Result,
                    op_RestoreAllSettings,
                    en_capResult,
                    op_capRestoreAllSettings);
 g_module_opcode_Settings_OpenStyleEditorAsModal := 
  PublishModuleOperation(Tmo_Settings, 'OpenStyleEditorAsModal', '�������� ������...');
 g_module_opcode_Settings_AutoLogin := 
  PublishModuleOperation(Tmo_Settings, 'AutoLogin', '�������������� ���� � �������');
 g_module_opcode_Settings_SelectConfig := 
  PublishModuleOperation(Tmo_Settings, 'SelectConfig', '����� ������������');
 g_module_opcode_Settings_OpenConfList := 
  PublishModuleOperation(Tmo_Settings, 'OpenConfList', '������ ������������');
 g_module_opcode_Settings_LoadActiveSettings := 
  PublishModuleOperation(Tmo_Settings, 'LoadActiveSettings', '��������� ������������...');
 g_module_opcode_Settings_UserProperties := 
  PublishModuleOperation(Tmo_Settings, 'UserProperties', '�������� ��� ��������������� ������...');
 PublishOperation(en_EnclosedForms,
                    op_CloseChild,
                    en_capEnclosedForms,
                    op_capCloseChild);
 PublishOperation(en_Filters,
                    op_New,
                    en_capFilters,
                    op_capNew);
 PublishOperation(en_Filters,
                    op_Refresh,
                    en_capFilters,
                    op_capRefresh);
 PublishOperation(en_Filter,
                    op_Edit,
                    en_capFilter,
                    op_capEdit);
 PublishOperation(en_Filter,
                    op_PersistentFilter,
                    en_capFilter,
                    op_capPersistentFilter);
 PublishOperation(en_Filter,
                    op_RenameFilter,
                    en_capFilter,
                    op_capRenameFilter);
 g_opcode_Filters_GetSelected :=
  PublishInternalOperation(en_Filters,
                    op_GetSelected,
                    en_capFilters,
                    op_capGetSelected);
 PublishOperation(en_Filter,
                    op_CreateFilter,
                    en_capFilter,
                    op_capCreateFilter);
 PublishOperation(en_ControlCenter,
                    op_Add,
                    en_capControlCenter,
                    op_capAdd);
 PublishOperation(en_ControlCenter,
                    op_CreateList,
                    en_capControlCenter,
                    op_capCreateList);
 PublishOperation(en_ControlCenter,
                    op_Sort,
                    en_capControlCenter,
                    op_capSort);
 PublishOperation(en_ControlCenter,
                    op_ClearAllStatus,
                    en_capControlCenter,
                    op_capClearAllStatus);
 PublishOperation(en_ControledObject,
                    op_Open,
                    en_capControledObject,
                    op_capOpen);
 PublishOperation(en_ControledObject,
                    op_ClearStatus,
                    en_capControledObject,
                    op_capClearStatus);
 PublishOperation(en_Document,
                    op_ShowChanges,
                    en_capDocument,
                    op_capShowChanges);
 g_module_opcode_DocumentListFromFile_OpenDocumentListFromFile := 
  PublishModuleOperation(Tmo_DocumentListFromFile, 'OpenDocumentListFromFile', '������� ������ ���������� �� �����');
 g_module_opcode_Search_PublishSourceSearch := 
  PublishModuleOperation(Tmo_Search, 'PublishSourceSearch', '');
 g_module_opcode_Search_InpharmSearch := 
  PublishModuleOperation(Tmo_Search, 'InpharmSearch', '����� �������������� ��������');
 g_module_opcode_Search_StartENO := 
  PublishModuleOperation(Tmo_Search, 'StartENO', '');
 g_module_opcode_Search_DocumentsWithoutClass := 
  PublishModuleOperation(Tmo_Search, 'DocumentsWithoutClass', '');
 g_module_opcode_Search_DocumentsWithoutIncluded := 
  PublishModuleOperation(Tmo_Search, 'DocumentsWithoutIncluded', '');
 g_module_opcode_Search_DocumentsWithoutKey := 
  PublishModuleOperation(Tmo_Search, 'DocumentsWithoutKey', '');
 g_module_opcode_Search_BaseSearch := 
  PublishModuleOperation(Tmo_Search, 'BaseSearch', '');
 g_module_opcode_Search_OpenConsult := 
  PublishModuleOperation(Tmo_Search, 'OpenConsult', '');
 g_module_opcode_Search_AllSearch := 
  PublishModuleOperation(Tmo_Search, 'AllSearch', '�����');
 g_opcode_AttributeTree_SetParent :=
  PublishInternalOperation(en_AttributeTree,
                    op_SetParent,
                    en_capAttributeTree,
                    op_capSetParent);
 g_opcode_AttributeTree_ExtSetRoot :=
  PublishInternalOperation(en_AttributeTree,
                    op_ExtSetRoot,
                    en_capAttributeTree,
                    op_capExtSetRoot);
 g_opcode_AttributeTree_SetRoot :=
  PublishInternalOperation(en_AttributeTree,
                    op_SetRoot,
                    en_capAttributeTree,
                    op_capSetRoot);
 g_opcode_ContextParams_ContextChanged :=
  PublishInternalOperation(en_ContextParams,
                    op_ContextChanged,
                    en_capContextParams,
                    op_capContextChanged);
 g_module_opcode_Search_OpenKeyWordSearch := 
  PublishModuleOperation(Tmo_Search, 'OpenKeyWordSearch', '����� �� ��������');
 g_module_opcode_Search_AttributeSearch := 
  PublishModuleOperation(Tmo_Search, 'AttributeSearch', '����� �� ����������');
 g_opcode_AttributeTree_ExternalCharPressed :=
  PublishInternalOperation(en_AttributeTree,
                    op_ExternalCharPressed,
                    en_capAttributeTree,
                    op_capExternalCharPressed);
 g_opcode_AttributeTree_SetCurrent :=
  PublishInternalOperation(en_AttributeTree,
                    op_SetCurrent,
                    en_capAttributeTree,
                    op_capSetCurrent);
 g_opcode_AttributeTree_DropAllLogicSelection :=
  PublishInternalOperation(en_AttributeTree,
                    op_DropAllLogicSelection,
                    en_capAttributeTree,
                    op_capDropAllLogicSelection);
 g_opcode_AttributeTree_Invalidate :=
  PublishInternalOperation(en_AttributeTree,
                    op_Invalidate,
                    en_capAttributeTree,
                    op_capInvalidate);
 g_opcode_AttributeTree_DropLogicSelection :=
  PublishInternalOperation(en_AttributeTree,
                    op_DropLogicSelection,
                    en_capAttributeTree,
                    op_capDropLogicSelection);
 g_opcode_AttributeTree_LoadQuery :=
  PublishInternalOperation(en_AttributeTree,
                    op_LoadQuery,
                    en_capAttributeTree,
                    op_capLoadQuery);
 g_opcode_AttributeTree_SetOneLevelCurrent :=
  PublishInternalOperation(en_AttributeTree,
                    op_SetOneLevelCurrent,
                    en_capAttributeTree,
                    op_capSetOneLevelCurrent);
 g_opcode_AttributeTree_AddNodeIfEmpty :=
  PublishInternalOperation(en_AttributeTree,
                    op_AddNodeIfEmpty,
                    en_capAttributeTree,
                    op_capAddNodeIfEmpty);
end;

...

// modules operations

class procedure TNemesisRes.MakeCompareEditions(const aDoc: IDocument;
  const aPara: IeeLeafPara;
  aEditionForCompare: Integer;
  const aDocumentForReturn: TnsDocumentForReturnInfo);
begin
 TBaseEditionsModule.MakeCompareEditions(aDoc, aPara, aEditionForCompare, aDocumentForReturn);
end;

class procedure TNemesisRes.MakeCompareEditions(const aDoc: IDocument;
  const aPara: IeeLeafPara);
begin
 TBaseEditionsModule.MakeCompareEditions(aDoc, aPara);
end;

class procedure TNemesisRes.MakeCompareEditions(const aLeft: IDocument;
  const aRight: IDocument;
  const aPara: IeeLeafPara);
begin
 TBaseEditionsModule.MakeCompareEditions(aLeft, aRight, aPara);
end;

class procedure TNemesisRes.MakeCompareEditions(const aDoc: IDocument;
  const aPara: IeeLeafPara;
  aEditionForCompare: Integer);
begin
 TBaseEditionsModule.MakeCompareEditions(aDoc, aPara, aEditionForCompare);
end;

class procedure TNemesisRes.OpenDocument(const aDocInfo: IdeDocInfo;
  const aContainer: IvcmContainer);
begin
 TDocumentModule.OpenDocument(aDocInfo, aContainer);
end;

class function TNemesisRes.OpenEntityAsDocument(const anEntity: IUnknown;
  const aContainer: IvcmContainer): IDocument;
begin
 Result := TDocumentModule.OpenEntityAsDocument(anEntity, aContainer);
end;

class function TNemesisRes.SafeOpenDocument(const aBaseEntity: IUnknown): IDocument;
begin
 Result := TDocumentModule.SafeOpenDocument(aBaseEntity);
end;

class procedure TNemesisRes.OpenDocumentWithCheck(const aDocInfo: IdeDocInfo;
  const aContainer: IvcmContainer);
begin
 TDocumentModule.OpenDocumentWithCheck(aDocInfo, aContainer);
end;

class function TNemesisRes.OpenExternalObject(const aContainer: IvcmContainer;
  const aData: InsLinkedObjectData): IvcmEntityForm;
begin
 Result := TDocumentModule.OpenExternalObject(aContainer, aData);
end;

class function TNemesisRes.OpenPicture(const aContainer: IvcmContainer;
  const aData: InsLinkedObjectData): IvcmEntityForm;
begin
 Result := TDocumentModule.OpenPicture(aContainer, aData);
end;

class function TNemesisRes.OpenPictureInfo(const aContainer: IvcmContainer;
  const aData: InsLinkedObjectDescription): IvcmEntityForm;
begin
 Result := TDocumentModule.OpenPictureInfo(aContainer, aData);
end;

class function TNemesisRes.OpenTurnOnTimeMachine(const anIntf: InsTurnOnTimeMachine): IvcmEntityForm;
begin
 Result := TDocumentModule.OpenTurnOnTimeMachine(anIntf);
end;

class function TNemesisRes.OpenEditionsListModal(const anEditionsHolder: IsdsEditionsHolder;
  const anAggregate: IvcmAggregate): IvcmEntityForm;
begin
 Result := TDocumentModule.OpenEditionsListModal(anEditionsHolder, anAggregate);
end;

class function TNemesisRes.MakeBaloonForm(aCaller: TvcmContainerForm;
  aUserType: TvcmEffectiveUserType;
  const aWarning: IdsWarning): IvcmEntityForm;
begin
 Result := TDocumentModule.MakeBaloonForm(aCaller, aUserType, aWarning);
end;

class function TNemesisRes.DocumentUseFixedFontForPrintAndExportSetting: Boolean;
begin
 Result := TDocumentModule.DocumentUseFixedFontForPrintAndExportSetting;
end;

class procedure TNemesisRes.WriteDocumentUseFixedFontForPrintAndExportSetting(aValue: Boolean);
begin
 TDocumentModule.WriteDocumentUseFixedFontForPrintAndExportSetting(aValue);
end;

class function TNemesisRes.DocumentShowChangesInfoSetting: Boolean;
begin
 Result := TDocumentModule.DocumentShowChangesInfoSetting;
end;

class procedure TNemesisRes.WriteDocumentShowChangesInfoSetting(aValue: Boolean);
begin
 TDocumentModule.WriteDocumentShowChangesInfoSetting(aValue);
end;

class procedure TNemesisRes.OpenTermByContext(const aContext: Il3CString;
  aLanguage: TbsLanguage);
begin
 TDictionModule.OpenTermByContext(aContext, aLanguage);
end;

class procedure TNemesisRes.OpenDictionary(const aDocInfo: IdeDocInfo;
  const aContainer: IvcmContainer);
begin
 TDictionModule.OpenDictionary(aDocInfo, aContainer);
end;

class procedure TNemesisRes.MakeInternetAgent(const anURL: Il3CString;
  const aContainer: IvcmContainer);
begin
 TPrimInternetAgentModule.MakeInternetAgent(anURL, aContainer);
end;

class function TNemesisRes.OpenFolders(const aContainer: IvcmContainer;
  aCanCreate: Boolean): IvcmEntityForm;
begin
 Result := TPrimFoldersModule.OpenFolders(aContainer, aCanCreate);
end;

class procedure TNemesisRes.OpenAutoreferat(const aDoc: IDocument;
  const aContainer: IvcmContainer);
begin
 TPrimMonitoringsModule.OpenAutoreferat(aDoc, aContainer);
end;

class procedure TNemesisRes.OpenAutoreferatAfterSearch(const aList: IMonitoringList;
  const aContainer: IvcmContainer);
begin
 TPrimMonitoringsModule.OpenAutoreferatAfterSearch(aList, aContainer);
end;

class function TNemesisRes.OpenNewsLine: IvcmEntityForm;
begin
 Result := TPrimMonitoringsModule.OpenNewsLine;
end;

class function TNemesisRes.OpenPostingOrder(const aQuery: IQuery): IvcmEntityForm;
begin
 Result := TCommonPostModule.OpenPostingOrder(aQuery);
end;

class procedure TNemesisRes.OpenSendConsultation(const aQuery: IQuery);
begin
 TConsultationModule.OpenSendConsultation(aQuery);
end;

class procedure TNemesisRes.OpenEntityAsConsultation(const aCons: IUnknown;
  const aContainer: IvcmContainer);
begin
 TConsultationModule.OpenEntityAsConsultation(aCons, aContainer);
end;

class procedure TNemesisRes.OpenConsultation(const aCons: IbsConsultation;
  const aContainer: IvcmContainer);
begin
 TConsultationModule.OpenConsultation(aCons, aContainer);
end;

class procedure TNemesisRes.FiltersOpen(const aData: IucpFilters);
begin
 TFiltersModule.FiltersOpen(aData);
end;

class function TNemesisRes.CreateFilter(const aQuery: IQuery): Integer;
begin
 Result := TFiltersModule.CreateFilter(aQuery);
end;

class procedure TNemesisRes.RenameFilter(const aFilter: IFilterFromQuery);
begin
 TFiltersModule.RenameFilter(aFilter);
end;

class function TNemesisRes.MakeChatDispatcher: IbsChatDispatcher;
begin
 Result := TBaseChatModule.MakeChatDispatcher;
end;

class function TNemesisRes.OpenChatWindow(anUID: TbsUserID;
  const aName: Il3CString): IvcmEntityForm;
begin
 Result := TBaseChatModule.OpenChatWindow(anUID, aName);
end;

class function TNemesisRes.OpenAddUserDialog: IvcmEntityForm;
begin
 Result := TBaseChatModule.OpenAddUserDialog;
end;

class function TNemesisRes.OpenHistoryWindow(anUID: TbsUserID;
  const aName: Il3CString): IvcmEntityForm;
begin
 Result := TBaseChatModule.OpenHistoryWindow(anUID, aName);
end;

...

end.