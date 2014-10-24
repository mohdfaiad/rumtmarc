unit RegisteredShapesTest;

interface

uses
  TestFrameWork
  ;

type
  TRegisteredShapesTest = class(TTestCase)
   published
    procedure ShapesRegistredCountEqual_12;
    procedure TestFirstShape;
    procedure TestIndexOfTmsLine;
  end;//TRegisteredShapesTest

implementation

uses
  SysUtils,
  msRegisteredShapes,
  msShape,
  msLine,
  FMX.Objects,
  FMX.Graphics
  ;

procedure TRegisteredShapesTest.ShapesRegistredCountEqual_12;
var
 l_Shape : RmsShape;
 l_Result : integer;
begin
 l_Result := 0;
 for l_Shape in TmsRegisteredShapes.Instance do
  inc(l_Result);

 CheckTrue(l_Result = 12);
end;

procedure TRegisteredShapesTest.TestFirstShape;
var
 l_RmsShape: RmsShape;
begin
 l_RmsShape := TmsRegisteredShapes.Instance.First;
 CheckTrue(l_RmsShape = TmsLine);
end;

procedure TRegisteredShapesTest.TestIndexOfTmsLine;
begin
 CheckTrue(TmsRegisteredShapes.Instance.IndexOf(TmsLine) = 0);
end;

initialization
 TestFramework.RegisterTest(TRegisteredShapesTest.Suite);
end.
