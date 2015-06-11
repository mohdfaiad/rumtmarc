// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.1b1), 21.09.2010 17:16
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
// Compiled with parameters: " -iw:\ W:\shared\CoreSrv\SecuritySrv\SecuritySrv.idl" 
//                                                                            
unit SecuritySrv;

interface

uses
  Classes, orb_int, orb, req_int, code_int, env_int, stdstat, std_seq,imr, imr_int, 
  orbtypes, exceptions, except_int, SecuritySrv_int, SecuritySrvComm_int, SecuritySrvComm,
  RootSrv_int, RootSrv, poa_int, poa;

type

  TCoreSrv_SecuritySrv_Token_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

  {** IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0 } 
  TCoreSrv_SecuritySrv_SessionManager = class(TORBObject,ICoreSrv_SecuritySrv_SessionManager)
  protected
    function login(const login: AnsiString; const pswd: AnsiString): TCoreSrv_SecuritySrv_Token; virtual; abstract;
    procedure logout; virtual; abstract;
    procedure keep_alive; virtual; abstract;
    procedure add_session_interceptor(const sint: ICoreSrv_SessionInterceptor); virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): ICoreSrv_SecuritySrv_SessionManager;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0} 
  TCoreSrv_SecuritySrv_SessionManager_stub = class(TCoreSrv_SecuritySrv_SessionManager)
  protected
    function login(const login: AnsiString; const pswd: AnsiString): TCoreSrv_SecuritySrv_Token; override;
    procedure logout; override;
    procedure keep_alive; override;
    procedure add_session_interceptor(const sint: ICoreSrv_SessionInterceptor); override;
  end;

  {** POA stub for interface IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0} 
  TCoreSrv_SecuritySrv_SessionManager_stub_clp = class(TPOAStub,IPOAStub,ICoreSrv_SecuritySrv_SessionManager)
  protected
    function login(const login: AnsiString; const pswd: AnsiString): TCoreSrv_SecuritySrv_Token; virtual;
    procedure logout; virtual;
    procedure keep_alive; virtual;
    procedure add_session_interceptor(const sint: ICoreSrv_SessionInterceptor); virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0} 
  TCoreSrv_SecuritySrv_SessionManager_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,ICoreSrv_SecuritySrv_SessionManager)
  protected
    function login(const login: AnsiString; const pswd: AnsiString): TCoreSrv_SecuritySrv_Token; virtual; abstract;
    procedure logout; virtual; abstract;
    procedure keep_alive; virtual; abstract;
    procedure add_session_interceptor(const sint: ICoreSrv_SessionInterceptor); virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): ICoreSrv_SecuritySrv_SessionManager;
    class function _narrow(const srv : IServant): ICoreSrv_SecuritySrv_SessionManager;
  end;

  TCoreSrv_SecuritySrv_SessionManager_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

  {** IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0 } 
  TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv = class(TORBObject,ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv)
  protected
    function get: ICoreSrv_SecuritySrv_SessionManager; virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0} 
  TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub = class(TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv)
  protected
    function get: ICoreSrv_SecuritySrv_SessionManager; override;
  end;

  {** POA stub for interface IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0} 
  TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub_clp = class(TPOAStub,IPOAStub,ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv)
  protected
    function get: ICoreSrv_SecuritySrv_SessionManager; virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0} 
  TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv)
  protected
    function get: ICoreSrv_SecuritySrv_SessionManager; virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
    class function _narrow(const srv : IServant): ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
  end;

  TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

var
  CoreSrv_SecuritySrv_Token_marshaller : IStaticTypeInfo;
  CoreSrv_SecuritySrv_SessionManager_marshaller : IStaticTypeInfo;
  CoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller : IStaticTypeInfo;
  _tc_CoreSrv_SecuritySrv_Token : ITypeCodeConst;
  _tc_CoreSrv_SecuritySrv_SessionManager : ITypeCodeConst;
  _tc_CoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv : ITypeCodeConst;

implementation

uses
  SysUtils, any, tcode, static, throw;

//***********************************************************
// TCoreSrv_SecuritySrv_Token_marshaller
//***********************************************************
function TCoreSrv_SecuritySrv_Token_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  struct: SecuritySrv_int.TCoreSrv_SecuritySrv_Token;
begin
  result := false;
  if not stat_ulong.demarshal(dec,@struct.sid) then exit;
  if not stat_ulong.demarshal(dec,@struct.uid) then exit;
  SecuritySrv_int.TCoreSrv_SecuritySrv_Token(addr^) := struct;
  result := true;
end;

procedure TCoreSrv_SecuritySrv_Token_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  struct: SecuritySrv_int.TCoreSrv_SecuritySrv_Token;
begin
  struct := SecuritySrv_int.TCoreSrv_SecuritySrv_Token(addr^);
  stat_ulong.marshal(enc,@struct.sid);
  stat_ulong.marshal(enc,@struct.uid);
end;

procedure TCoreSrv_SecuritySrv_Token_marshaller._free(var addr: Pointer);
begin
{$HINTS OFF}
  System.Finalize(SecuritySrv_int.TCoreSrv_SecuritySrv_Token(addr^));
{$HINTS ON}
  FreeMem(addr);
end;

procedure TCoreSrv_SecuritySrv_Token_marshaller._create(var addr: Pointer);
begin
  addr := AllocMem(sizeOf(SecuritySrv_int.TCoreSrv_SecuritySrv_Token));
{$HINTS OFF}
  System.Initialize(SecuritySrv_int.TCoreSrv_SecuritySrv_Token(addr^));
{$HINTS ON}
end;

procedure TCoreSrv_SecuritySrv_Token_marshaller._assign(dst, src: Pointer);
begin
  SecuritySrv_int.TCoreSrv_SecuritySrv_Token(dst^) := SecuritySrv_int.TCoreSrv_SecuritySrv_Token(src^);
end;

function TCoreSrv_SecuritySrv_Token_marshaller.typecode: ITypeCode;
begin
  result := _tc_CoreSrv_SecuritySrv_Token.typecode;
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManager
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManager.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0' then
    begin
      result := Pointer(self as ICoreSrv_SecuritySrv_SessionManager);
      exit;
    end;
end;

class function TCoreSrv_SecuritySrv_SessionManager._narrow(const obj : IORBObject): ICoreSrv_SecuritySrv_SessionManager;
var
  p: Pointer;
  stub: TCoreSrv_SecuritySrv_SessionManager_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0');
  if p <> nil then
    result := ICoreSrv_SecuritySrv_SessionManager(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0') then
        begin
          stub := TCoreSrv_SecuritySrv_SessionManager_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function TCoreSrv_SecuritySrv_SessionManager.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0'
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManager_stub
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManager_stub.login(const login: AnsiString; const pswd: AnsiString): TCoreSrv_SecuritySrv_Token;
var
  req: IStaticRequest;
  _login: IStaticAny;
  _pswd: IStaticAny;
  _result: IStaticAny;
begin
  _login := StaticAny(stat_string,@login);
  _pswd := StaticAny(stat_string,@pswd);
  _result := StaticAny(CoreSrv_SecuritySrv_Token_marshaller, @result);
  req := StaticRequest(self,'login');
  req.add_in_arg(_login);
  req.add_in_arg(_pswd);
  req.set_result(_result);
  req.set_exceptions_tc([_tc_CoreSrv_AccessDenied.typecode, _tc_CoreSrv_AlreadyLogged.typecode]);
  req.invoke;
  dorb_static_throw(req,[CoreSrv_AccessDenied_marshaller, 'IDL:garant.ru/CoreSrv/AccessDenied:1.0', CoreSrv_AlreadyLogged_marshaller, 'IDL:garant.ru/CoreSrv/AlreadyLogged:1.0']);
end;

procedure TCoreSrv_SecuritySrv_SessionManager_stub.logout;
var
  req: IStaticRequest;
begin
  req := StaticRequest(self,'logout');
  req.oneway;
  dorb_static_throw(req);
end;

procedure TCoreSrv_SecuritySrv_SessionManager_stub.keep_alive;
var
  req: IStaticRequest;
begin
  req := StaticRequest(self,'keep_alive');
  req.oneway;
  dorb_static_throw(req);
end;

procedure TCoreSrv_SecuritySrv_SessionManager_stub.add_session_interceptor(const sint: ICoreSrv_SessionInterceptor);
var
  req: IStaticRequest;
  _sint: IStaticAny;
begin
  _sint := StaticAny(CoreSrv_SessionInterceptor_marshaller,@sint);
  req := StaticRequest(self,'add_session_interceptor');
  req.add_in_arg(_sint);
  req.invoke;
  dorb_static_throw(req);
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManager_stub_clp
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManager_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0' then
    begin
      result := Pointer(self as ICoreSrv_SecuritySrv_SessionManager);
      exit;
  end;
end;

function TCoreSrv_SecuritySrv_SessionManager_stub_clp.login(const login: AnsiString; const pswd: AnsiString): TCoreSrv_SecuritySrv_Token;
var
  _srv: IServant;
  srv: ICoreSrv_SecuritySrv_SessionManager;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TCoreSrv_SecuritySrv_SessionManager_serv._narrow(_srv);
      if srv <> nil then
        result := srv.login(login, pswd)
    end;
  _postinvoke();
end;

procedure TCoreSrv_SecuritySrv_SessionManager_stub_clp.logout;
var
  _srv: IServant;
  srv: ICoreSrv_SecuritySrv_SessionManager;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TCoreSrv_SecuritySrv_SessionManager_serv._narrow(_srv);
      if srv <> nil then
        srv.logout
    end;
  _postinvoke();
end;

procedure TCoreSrv_SecuritySrv_SessionManager_stub_clp.keep_alive;
var
  _srv: IServant;
  srv: ICoreSrv_SecuritySrv_SessionManager;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TCoreSrv_SecuritySrv_SessionManager_serv._narrow(_srv);
      if srv <> nil then
        srv.keep_alive
    end;
  _postinvoke();
end;

procedure TCoreSrv_SecuritySrv_SessionManager_stub_clp.add_session_interceptor(const sint: ICoreSrv_SessionInterceptor);
var
  _srv: IServant;
  srv: ICoreSrv_SecuritySrv_SessionManager;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TCoreSrv_SecuritySrv_SessionManager_serv._narrow(_srv);
      if srv <> nil then
        srv.add_session_interceptor(sint)
    end;
  _postinvoke();
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManager_serv
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManager_serv._this(): ICoreSrv_SecuritySrv_SessionManager;
var
  obj: IORBObject;
begin
  obj := this();
  result := TCoreSrv_SecuritySrv_SessionManager._narrow(obj);
end;

function TCoreSrv_SecuritySrv_SessionManager_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0';
end;

function TCoreSrv_SecuritySrv_SessionManager_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0';
end;

function TCoreSrv_SecuritySrv_SessionManager_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := TCoreSrv_SecuritySrv_SessionManager_stub_clp.Create(poa,obj);
end;

procedure TCoreSrv_SecuritySrv_SessionManager_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function TCoreSrv_SecuritySrv_SessionManager_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0' then
    begin
      result := Pointer(ICoreSrv_SecuritySrv_SessionManager(self));
      exit;
    end;
end;

class function TCoreSrv_SecuritySrv_SessionManager_serv._narrow(const srv : IServant): ICoreSrv_SecuritySrv_SessionManager;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:garant.ru/CoreSrv/SecuritySrv/SessionManager:1.0');
  if p <> nil then
    result := ICoreSrv_SecuritySrv_SessionManager(p)
end;

function TCoreSrv_SecuritySrv_SessionManager_serv._dispatch(const req: IStaticServerRequest): Boolean;
var
  login_result: TCoreSrv_SecuritySrv_Token;
  login_login: AnsiString;
  login_pswd: AnsiString;
  add_session_interceptor_sint: ICoreSrv_SessionInterceptor;
begin
  result := true;
  if req.op_name = 'login' then
    begin
      req.add_in_arg(StaticAny(stat_string,@login_login) as IStaticAny);
      req.add_in_arg(StaticAny(stat_string,@login_pswd) as IStaticAny);
      req.set_result(StaticAny(CoreSrv_SecuritySrv_Token_marshaller,@login_result) as IStaticAny);
      if not req.read_args() then  exit;
      req.set_exceptions_tc([_tc_CoreSrv_AccessDenied.typecode, _tc_CoreSrv_AlreadyLogged.typecode]);
      try
        login_result := login(login_login, login_pswd);
      except
        on AccessDenied: TCoreSrv_AccessDenied do
          req.set_exception(TCoreSrv_AccessDenied.Create(AccessDenied) as IORBException);
        on AlreadyLogged: TCoreSrv_AlreadyLogged do
          req.set_exception(TCoreSrv_AlreadyLogged.Create(AlreadyLogged) as IORBException);
      end;
      req.write_results();
      exit;
    end
  else if req.op_name = 'logout' then
    begin
      if not req.read_args() then  exit;
      logout;
      req.write_results();
      exit;
    end
  else if req.op_name = 'keep_alive' then
    begin
      if not req.read_args() then  exit;
      keep_alive;
      req.write_results();
      exit;
    end
  else if req.op_name = 'add_session_interceptor' then
    begin
      req.add_in_arg(StaticAny(CoreSrv_SessionInterceptor_marshaller,@add_session_interceptor_sint) as IStaticAny);
      if not req.read_args() then  exit;
      add_session_interceptor(add_session_interceptor_sint);
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManager_marshaller
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManager_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  ICoreSrv_SecuritySrv_SessionManager(addr^) := TCoreSrv_SecuritySrv_SessionManager._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure TCoreSrv_SecuritySrv_SessionManager_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := ICoreSrv_SecuritySrv_SessionManager(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure TCoreSrv_SecuritySrv_SessionManager_marshaller._free(var addr: Pointer);
begin
  ICoreSrv_SecuritySrv_SessionManager(addr^) := nil;
end;

procedure TCoreSrv_SecuritySrv_SessionManager_marshaller._create(var addr: Pointer);
begin
  ICoreSrv_SecuritySrv_SessionManager(addr^) := TCoreSrv_SecuritySrv_SessionManager_stub.Create();
end;

procedure TCoreSrv_SecuritySrv_SessionManager_marshaller._assign(dst, src: Pointer);
begin
  ICoreSrv_SecuritySrv_SessionManager(dst^) := ICoreSrv_SecuritySrv_SessionManager(src^);
end;

function TCoreSrv_SecuritySrv_SessionManager_marshaller.typecode: ITypeCode;
begin
  result := _tc_CoreSrv_SecuritySrv_SessionManager.typecode;
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0' then
    begin
      result := Pointer(self as ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv);
      exit;
    end;
end;

class function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv._narrow(const obj : IORBObject): ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
var
  p: Pointer;
  stub: TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0');
  if p <> nil then
    result := ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0') then
        begin
          stub := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0'
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub.get: ICoreSrv_SecuritySrv_SessionManager;
var
  req: IStaticRequest;
  _result: IStaticAny;
begin
  _result := StaticAny(CoreSrv_SecuritySrv_SessionManager_marshaller, @result);
  req := StaticRequest(self,'get');
  req.set_result(_result);
  req.set_exceptions_tc([_tc_CoreSrv_NoActiveFactory.typecode]);
  req.invoke;
  dorb_static_throw(req,[CoreSrv_NoActiveFactory_marshaller, 'IDL:garant.ru/CoreSrv/NoActiveFactory:1.0']);
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub_clp
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0' then
    begin
      result := Pointer(self as ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv);
      exit;
  end;
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub_clp.get: ICoreSrv_SecuritySrv_SessionManager;
var
  _srv: IServant;
  srv: ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
begin
  result := nil;
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._narrow(_srv);
      if srv <> nil then
        result := srv.get
    end;
  _postinvoke();
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._this(): ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
var
  obj: IORBObject;
begin
  obj := this();
  result := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv._narrow(obj);
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0';
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0';
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub_clp.Create(poa,obj);
end;

procedure TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0' then
    begin
      result := Pointer(ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(self));
      exit;
    end;
end;

class function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._narrow(const srv : IServant): ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:garant.ru/CoreSrv/SecuritySrv/SessionManagerFactoryManagerSrv:1.0');
  if p <> nil then
    result := ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(p)
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_serv._dispatch(const req: IStaticServerRequest): Boolean;
var
  get_result: ICoreSrv_SecuritySrv_SessionManager;
begin
  result := true;
  if req.op_name = 'get' then
    begin
      req.set_result(StaticAny(CoreSrv_SecuritySrv_SessionManager_marshaller,@get_result) as IStaticAny);
      if not req.read_args() then  exit;
      req.set_exceptions_tc([_tc_CoreSrv_NoActiveFactory.typecode]);
      try
        get_result := get;
      except
        on NoActiveFactory: TCoreSrv_NoActiveFactory do
          req.set_exception(TCoreSrv_NoActiveFactory.Create(NoActiveFactory) as IORBException);
      end;
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller
//***********************************************************
function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(addr^) := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller._free(var addr: Pointer);
begin
  ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(addr^) := nil;
end;

procedure TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller._create(var addr: Pointer);
begin
  ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(addr^) := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_stub.Create();
end;

procedure TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller._assign(dst, src: Pointer);
begin
  ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(dst^) := ICoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv(src^);
end;

function TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller.typecode: ITypeCode;
begin
  result := _tc_CoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv.typecode;
end;

initialization
  CoreSrv_SecuritySrv_Token_marshaller := TCoreSrv_SecuritySrv_Token_marshaller.Create();
  CoreSrv_SecuritySrv_SessionManager_marshaller := TCoreSrv_SecuritySrv_SessionManager_marshaller.Create();
  CoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller := TCoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv_marshaller.Create();
  _tc_CoreSrv_SecuritySrv_Token := CreateTypeCodeConst('010000000f000000e0000000010000002c00000049444c3a676172616e742e72752f436f72655372762f53656375726974795372762f54'+
    '6f6b656e3a312e300006000000546f6b656e0000000200000004000000736964001500000040000000010000002400000049444c3a6761'+
    '72616e742e72752f436f72655372762f53657373696f6e49443a312e30000a00000053657373696f6e4944000000050000000400000075'+
    '696400150000003c000000010000002100000049444c3a676172616e742e72752f436f72655372762f5573657249443a312e3000000000'+
    '07000000557365724944000005000000');
  _tc_CoreSrv_SecuritySrv_SessionManager := CreateTypeCodeConst('010000000e00000053000000010000003500000049444c3a676172616e742e72752f436f72655372762f53656375726974795372762f53'+
    '657373696f6e4d616e616765723a312e30000000000f00000053657373696f6e4d616e6167657200');
  _tc_CoreSrv_SecuritySrv_SessionManagerFactoryManagerSrv := CreateTypeCodeConst('010000000e00000074000000010000004600000049444c3a676172616e742e72752f436f72655372762f53656375726974795372762f53'+
    '657373696f6e4d616e61676572466163746f72794d616e616765725372763a312e300000002000000053657373696f6e4d616e61676572'+
    '466163746f72794d616e6167657253727600');
end.