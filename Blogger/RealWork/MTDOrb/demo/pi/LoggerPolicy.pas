// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.1b1), 21.09.2010 13:27
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
// Compiled with parameters: " -i../../idl -i./ ./\LoggerPolicy.idl" 
//                                                                            
unit LoggerPolicy;

interface

uses
  Classes, orb_int, orb, req_int, code_int, env_int, stdstat, std_seq,imr, imr_int, 
  orbtypes, exceptions, except_int, LoggerPolicy_int, policy_int, policy, poa_int, poa;

type

  {** IDL:LoggerPolicy:1.0 } 
  TLoggerPolicy = class(TPolicy,ILoggerPolicy)
  protected
    function _get_level: Short; virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): ILoggerPolicy;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

implementation

uses
  SysUtils, any, tcode, static, throw;

//***********************************************************
// TLoggerPolicy
//***********************************************************
function TLoggerPolicy.narrow_helper(const str: RepositoryID): Pointer;
begin
  if str = 'IDL:LoggerPolicy:1.0' then
    begin
      result := Pointer(self as ILoggerPolicy);
      exit;
    end;
  result := inherited narrow_helper(str);
end;

class function TLoggerPolicy._narrow(const obj : IORBObject): ILoggerPolicy;
var
  p: Pointer;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:LoggerPolicy:1.0');
  if p <> nil then
    result := ILoggerPolicy(p)
end;

class function TLoggerPolicy.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:LoggerPolicy:1.0'
end;

end.