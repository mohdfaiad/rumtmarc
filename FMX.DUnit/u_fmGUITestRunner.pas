﻿unit u_fmGUITestRunner;

interface

uses
 TestFramework,
 System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
 FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
 FMX.Layouts, FMX.TreeView, FMX.ListView.Types, FMX.ListView;

const
 c_ColorOk = TAlphaColorRec.Green;
 c_ColorFailure = TAlphaColorRec.Fuchsia;
 c_ColorError = TAlphaColorRec.Red;

type
 TfmGUITestRunner = class(TForm, ITestListener)
  TestTree: TTreeView;
  btnGetSelectedItems: TButton;
  ToolBar1: TToolBar;
  btRunAllTest: TSpeedButton;
  procedure FormCreate(Sender: TObject);
  procedure btnGetSelectedItemsClick(Sender: TObject);
  procedure FormDestroy(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure btRunAllTestClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
 protected
  FSuite: ITest;
  FTests: TInterfaceList;
  FSelectedTests: TInterfaceList;
  FTestResult: TTestResult;
  FTotalTime: Int64;

  procedure SetSuite(aValue: ITest);
  procedure InitTree;
  procedure FillTestTree(aTest: ITest); overload;
  procedure FillTestTree(aRootNode: TTreeViewItem; aTest: ITest); overload;
  procedure RunTheTest(aTest: ITest);

  function NodeToTest(aNode: TTreeViewItem): ITest;
  function TestToNode(test: ITest): TTreeViewItem;
  function SelectedTest: ITest;
  procedure ListSelectedTests;

  procedure SetupGUINodes(aNode: TTreeViewItem);

  procedure SetTreeNodeFont(aNode :TTreeViewItem; aColor: TAlphaColor);
 public
  property Suite: ITest read FSuite write SetSuite;
  property TestResult: TTestResult read FTestResult write FTestResult;

  // IListener
  procedure TestingStarts;
  procedure StartTest(aTest: ITest);

  procedure AddSuccess(aTest: ITest);
  procedure AddError(aFailure: TTestFailure);
  procedure AddFailure(Failure: TTestFailure);

  procedure EndTest(test: ITest);
  procedure TestingEnds(aTestResult: TTestResult);

  function ShouldRunTest(aTest: ITest): Boolean;
  // IStatusListener
  procedure Status(aTest: ITest; const aMessage: string);
 end;

procedure RunTestModeless(aTest: ITest);
procedure RunRegisteredTestsModeless;

var
 fmGUITestRunner: TfmGUITestRunner;

implementation

uses
 System.Generics.Collections,
 System.TypInfo;
{$R *.fmx}

procedure RunTestModeless(aTest: ITest);
var
 l_GUI: TfmGUITestRunner;
begin
 l_GUI := TfmGUITestRunner.Create(nil);
 l_GUI.Suite := aTest;
 l_GUI.Show;
end;

procedure RunRegisteredTestsModeless;
begin
 RunTestModeless(registeredTests)
end;

procedure TraverseTreeItems(const anItem: TTreeViewItem; var ResultList: TList<TTreeViewItem>);
var
 l_Index: Integer;
begin
 if anItem.IsChecked then
  ResultList.Add(anItem);

 for l_Index:= 0 to Pred(anItem.Count) do
  TraverseTreeItems(anItem.Items[l_Index], ResultList);
end;

procedure TraverseTree(const aTree: TTreeView; var ResultList: TList<TTreeViewItem>);
var
 l_Index: Integer;
begin
 for l_Index := 0 to Pred(aTree.Count) do
  TraverseTreeItems(aTree.Items[l_Index], ResultList);
end;

procedure TfmGUITestRunner.AddError(aFailure: TTestFailure);
begin
  SetTreeNodeFont(TestToNode(aFailure.failedTest), c_ColorError);
end;

procedure TfmGUITestRunner.AddFailure(Failure: TTestFailure);
begin
  SetTreeNodeFont(TestToNode(failure.failedTest), c_ColorFailure);
end;

procedure TfmGUITestRunner.AddSuccess(aTest: ITest);
begin
 Assert(Assigned(aTest));
 if not IsTestMethod(aTest) then
  SetTreeNodeFont(TestToNode(aTest), c_ColorOk)
end;

procedure TfmGUITestRunner.btnGetSelectedItemsClick(Sender: TObject);
var
 ResultList: TList<TTreeViewItem>;
 l_Item: TTreeViewItem;
 l_ResutlMsg: string;
begin
 ResultList := TList<TTreeViewItem>.Create;

 TraverseTree(TestTree, ResultList);

 for l_Item in ResultList do
  l_ResutlMsg := l_ResutlMsg + l_Item.Text + ';';

 ShowMessage(l_ResutlMsg);

 FreeAndNil(ResultList);
end;

procedure TfmGUITestRunner.btRunAllTestClick(Sender: TObject);
begin
 if Suite = nil then
  Exit;

 RunTheTest(Suite);
end;

procedure TfmGUITestRunner.EndTest(test: ITest);
begin
 // Закомител, потому как тут надо обновлять общую информацию о результатах
 // тестов. А нам пока нечего показывать.
 // И если будет утверждение, то после первого захода сюда, результаты не отображаются
 // Пока, так, однозначно TODO
 // assert(False);
end;

procedure TfmGUITestRunner.FillTestTree(aRootNode: TTreeViewItem; aTest: ITest);
var
 l_TestTests: IInterfaceList;
 l_Index: Integer;
 l_TreeViewItem: TTreeViewItem;
begin
 if aTest = nil then
  Exit;

 l_TreeViewItem := TTreeViewItem.Create(self);
 l_TreeViewItem.IsChecked := True;

 l_TreeViewItem.Tag := FTests.Add(aTest);
 l_TreeViewItem.Text := aTest.Name;

 if aRootNode = nil then
  TestTree.AddObject(l_TreeViewItem)
 else
  aRootNode.AddObject(l_TreeViewItem);

 l_TestTests := aTest.Tests;
 for l_Index := 0 to l_TestTests.Count - 1 do
  FillTestTree(l_TreeViewItem, l_TestTests[l_Index] as ITest);
end;

procedure TfmGUITestRunner.FillTestTree(aTest: ITest);
begin
 TestTree.Clear;
 FTests.Clear;

 TestTree.BeginUpdate;

 FillTestTree(nil, Suite);

 TestTree.EndUpdate;
end;

procedure TfmGUITestRunner.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

procedure TfmGUITestRunner.FormCreate(Sender: TObject);
begin
 inherited;
 TestTree.ShowCheckboxes := True;

 FTests := TInterfaceList.Create;
end;

procedure TfmGUITestRunner.FormDestroy(Sender: TObject);
begin
 Suite := nil;
 FreeAndNil(FTests);
 inherited;
end;

procedure TfmGUITestRunner.FormShow(Sender: TObject);
var
 l_Index: Integer;
 l_Test: ITest;
begin
 for l_Index := 0 to Pred(TestTree.Count) do
 begin
  l_Test := NodeToTest(TestTree.Items[l_Index]);
  assert(Assigned(l_Test));
  l_Test.GUIObject := TestTree.Items[l_Index];
  SetupGUINodes(TestTree.Items[l_Index]);
 end;

end;

procedure TfmGUITestRunner.InitTree;
begin
 FTests.Clear;
 FillTestTree(Suite);
 TestTree.ExpandAll;
end;

procedure TfmGUITestRunner.ListSelectedTests;
begin
 assert(False);
end;

function TfmGUITestRunner.NodeToTest(aNode: TTreeViewItem): ITest;
var
 l_Index: Integer;
begin
 assert(aNode.Tag >= 0);
 l_Index := aNode.Tag;
 Result := FTests[l_Index] as ITest;
end;

procedure TfmGUITestRunner.RunTheTest(aTest: ITest);
begin
 TestResult := TTestResult.Create;
 try
  TestResult.addListener(self);
  aTest.run(TestResult);
 finally
  // FErrorCount := TestResult.ErrorCount;
  // FFailureCount := TestResult.FailureCount;
  FreeAndNil(FTestResult);
 end;
end;

function TfmGUITestRunner.SelectedTest: ITest;
begin
 assert(False);
end;

procedure TfmGUITestRunner.SetSuite(aValue: ITest);
begin
 FSuite := aValue;

 if FSuite <> nil then
  InitTree;
end;

procedure TfmGUITestRunner.SetTreeNodeFont(aNode: TTreeViewItem;
                                           aColor: TAlphaColor);
begin
 // Пока не укажешь какие из настроек стиля разрешены к работе, они работать не будут
 aNode.StyledSettings := aNode.StyledSettings - [TStyledSetting.FontColor, TStyledSetting.Style];
 aNode.Font.Style := [TFontStyle.fsBold];
 aNode.FontColor := aColor;
end;

procedure TfmGUITestRunner.SetupGUINodes(aNode: TTreeViewItem);
var
 l_Test: ITest;
 l_Index: Integer;
begin
 for l_Index := 0 to Pred(aNode.Count) do
 begin
  l_Test := NodeToTest(aNode.Items[l_Index]);
  assert(Assigned(l_Test));
  l_Test.GUIObject := aNode.Items[l_Index];
  SetupGUINodes(aNode.Items[l_Index]);
 end;
end;

function TfmGUITestRunner.ShouldRunTest(aTest: ITest): Boolean;
begin
 Result := True;
 { if FSelectedTests = nil then
   Result := test.Enabled
   else
   Result := FSelectedTests.IndexOf(test as ITest) >= 0; }
end;

procedure TfmGUITestRunner.StartTest(aTest: ITest);
var
 l_Node: TTreeViewItem;
begin
 assert(Assigned(TestResult));
 assert(Assigned(aTest));

 l_Node := TestToNode(aTest);

 assert(Assigned(l_Node));

 if l_Node.IsChecked then
  SetTreeNodeFont(l_Node, c_ColorOk);
end;

procedure TfmGUITestRunner.Status(aTest: ITest; const aMessage: string);
begin
 assert(False);
end;

procedure TfmGUITestRunner.TestingEnds(aTestResult: TTestResult);
begin
  FTotalTime := aTestResult.TotalTime;
end;

procedure TfmGUITestRunner.TestingStarts;
begin
 FTotalTime := 0;
end;

function TfmGUITestRunner.TestToNode(test: ITest): TTreeViewItem;
begin
 assert(Assigned(test));

 Result := test.GUIObject as TTreeViewItem;

 assert(Assigned(Result));
end;

end.
