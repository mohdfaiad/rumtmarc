unit msRoundedRectange;

interface

uses
 msRectangle,
 System.Types,
 FMX.Graphics,
 FMX.Types
 ;

type
 TmsRoundedRectangle = class(TmsRectangle)
 protected
  class function CornerRadius: Single; override;
  class function InitialWidth: Single; override;
  class function InitialHeight: Single; override;
 end;//TmsRoundedRectangle

implementation

class function TmsRoundedRectangle.CornerRadius: Single;
begin
 Result := 10;
end;

class function TmsRoundedRectangle.InitialWidth: Single;
begin
 Result := 150;
end;

class function TmsRoundedRectangle.InitialHeight: Single;
begin
 Result := InitialWidth;
end;

initialization
 TmsRoundedRectangle.Register;

end.
