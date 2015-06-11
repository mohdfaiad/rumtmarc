// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.1b1), 21.09.2010 13:26
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
// Compiled with parameters: " -i../..//idl -i./ ./\Test.idl" 
//                                                                            
unit Test;

interface

uses
  Classes, orb_int, orb, req_int, code_int, env_int, stdstat, std_seq,imr, imr_int, 
  orbtypes, exceptions, except_int, Test_int, poa_int, poa;

type

  {** IDL:ClientObject:1.0 } 
  TClientObject = class(TORBObject,IClientObject)
  protected
    procedure Foo; virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): IClientObject;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:ClientObject:1.0} 
  TClientObject_stub = class(TClientObject)
  protected
    procedure Foo; override;
  end;

  {** POA stub for interface IDL:ClientObject:1.0} 
  TClientObject_stub_clp = class(TPOAStub,IPOAStub,IClientObject)
  protected
    procedure Foo; virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:ClientObject:1.0} 
  TClientObject_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,IClientObject)
  protected
    procedure Foo; virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): IClientObject;
    class function _narrow(const srv : IServant): IClientObject;
  end;

  TClientObject_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

  {** IDL:ServerObject:1.0 } 
  TServerObject = class(TORBObject,IServerObject)
  protected
    procedure set_client_object(const obj: IClientObject); virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): IServerObject;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:ServerObject:1.0} 
  TServerObject_stub = class(TServerObject)
  protected
    procedure set_client_object(const obj: IClientObject); override;
  end;

  {** POA stub for interface IDL:ServerObject:1.0} 
  TServerObject_stub_clp = class(TPOAStub,IPOAStub,IServerObject)
  protected
    procedure set_client_object(const obj: IClientObject); virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:ServerObject:1.0} 
  TServerObject_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,IServerObject)
  protected
    procedure set_client_object(const obj: IClientObject); virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): IServerObject;
    class function _narrow(const srv : IServant): IServerObject;
  end;

  TServerObject_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

var
  ClientObject_marshaller : IStaticTypeInfo;
  ServerObject_marshaller : IStaticTypeInfo;
  _tc_ClientObject : ITypeCodeConst;
  _tc_ServerObject : ITypeCodeConst;

implementation

uses
  SysUtils, any, tcode, static, throw;

//***********************************************************
// TClientObject
//***********************************************************
function TClientObject.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:ClientObject:1.0' then
    begin
      result := Pointer(self as IClientObject);
      exit;
    end;
end;

class function TClientObject._narrow(const obj : IORBObject): IClientObject;
var
  p: Pointer;
  stub: TClientObject_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:ClientObject:1.0');
  if p <> nil then
    result := IClientObject(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:ClientObject:1.0') then
        begin
          stub := TClientObject_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function TClientObject.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:ClientObject:1.0'
end;

//***********************************************************
// TClientObject_stub
//***********************************************************
procedure TClientObject_stub.Foo;
var
  req: IStaticRequest;
begin
  req := StaticRequest(self,'Foo');
  req.invoke;
  dorb_static_throw(req);
end;

//***********************************************************
// TClientObject_stub_clp
//***********************************************************
function TClientObject_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:ClientObject:1.0' then
    begin
      result := Pointer(self as IClientObject);
      exit;
  end;
end;

procedure TClientObject_stub_clp.Foo;
var
  _srv: IServant;
  srv: IClientObject;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TClientObject_serv._narrow(_srv);
      if srv <> nil then
        srv.Foo
    end;
  _postinvoke();
end;

//***********************************************************
// TClientObject_serv
//***********************************************************
function TClientObject_serv._this(): IClientObject;
var
  obj: IORBObject;
begin
  obj := this();
  result := TClientObject._narrow(obj);
end;

function TClientObject_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:ClientObject:1.0';
end;

function TClientObject_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:ClientObject:1.0';
end;

function TClientObject_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := TClientObject_stub_clp.Create(poa,obj);
end;

procedure TClientObject_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function TClientObject_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:ClientObject:1.0' then
    begin
      result := Pointer(IClientObject(self));
      exit;
    end;
end;

class function TClientObject_serv._narrow(const srv : IServant): IClientObject;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:ClientObject:1.0');
  if p <> nil then
    result := IClientObject(p)
end;

function TClientObject_serv._dispatch(const req: IStaticServerRequest): Boolean;
begin
  result := true;
  if req.op_name = 'Foo' then
    begin
      if not req.read_args() then  exit;
      Foo;
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// TClientObject_marshaller
//***********************************************************
function TClientObject_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  IClientObject(addr^) := TClientObject._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure TClientObject_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := IClientObject(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure TClientObject_marshaller._free(var addr: Pointer);
begin
  IClientObject(addr^) := nil;
end;

procedure TClientObject_marshaller._create(var addr: Pointer);
begin
  IClientObject(addr^) := TClientObject_stub.Create();
end;

procedure TClientObject_marshaller._assign(dst, src: Pointer);
begin
  IClientObject(dst^) := IClientObject(src^);
end;

function TClientObject_marshaller.typecode: ITypeCode;
begin
  result := _tc_ClientObject.typecode;
end;

//***********************************************************
// TServerObject
//***********************************************************
function TServerObject.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:ServerObject:1.0' then
    begin
      result := Pointer(self as IServerObject);
      exit;
    end;
end;

class function TServerObject._narrow(const obj : IORBObject): IServerObject;
var
  p: Pointer;
  stub: TServerObject_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:ServerObject:1.0');
  if p <> nil then
    result := IServerObject(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:ServerObject:1.0') then
        begin
          stub := TServerObject_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function TServerObject.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:ServerObject:1.0'
end;

//***********************************************************
// TServerObject_stub
//***********************************************************
procedure TServerObject_stub.set_client_object(const obj: IClientObject);
var
  req: IStaticRequest;
  _obj: IStaticAny;
begin
  _obj := StaticAny(ClientObject_marshaller,@obj);
  req := StaticRequest(self,'set_client_object');
  req.add_in_arg(_obj);
  req.invoke;
  dorb_static_throw(req);
end;

//***********************************************************
// TServerObject_stub_clp
//***********************************************************
function TServerObject_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:ServerObject:1.0' then
    begin
      result := Pointer(self as IServerObject);
      exit;
  end;
end;

procedure TServerObject_stub_clp.set_client_object(const obj: IClientObject);
var
  _srv: IServant;
  srv: IServerObject;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := TServerObject_serv._narrow(_srv);
      if srv <> nil then
        srv.set_client_object(obj)
    end;
  _postinvoke();
end;

//***********************************************************
// TServerObject_serv
//***********************************************************
function TServerObject_serv._this(): IServerObject;
var
  obj: IORBObject;
begin
  obj := this();
  result := TServerObject._narrow(obj);
end;

function TServerObject_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:ServerObject:1.0';
end;

function TServerObject_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:ServerObject:1.0';
end;

function TServerObject_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := TServerObject_stub_clp.Create(poa,obj);
end;

procedure TServerObject_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function TServerObject_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:ServerObject:1.0' then
    begin
      result := Pointer(IServerObject(self));
      exit;
    end;
end;

class function TServerObject_serv._narrow(const srv : IServant): IServerObject;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:ServerObject:1.0');
  if p <> nil then
    result := IServerObject(p)
end;

function TServerObject_serv._dispatch(const req: IStaticServerRequest): Boolean;
var
  set_client_object_obj: IClientObject;
begin
  result := true;
  if req.op_name = 'set_client_object' then
    begin
      req.add_in_arg(StaticAny(ClientObject_marshaller,@set_client_object_obj) as IStaticAny);
      if not req.read_args() then  exit;
      set_client_object(set_client_object_obj);
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// TServerObject_marshaller
//***********************************************************
function TServerObject_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  IServerObject(addr^) := TServerObject._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure TServerObject_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := IServerObject(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure TServerObject_marshaller._free(var addr: Pointer);
begin
  IServerObject(addr^) := nil;
end;

procedure TServerObject_marshaller._create(var addr: Pointer);
begin
  IServerObject(addr^) := TServerObject_stub.Create();
end;

procedure TServerObject_marshaller._assign(dst, src: Pointer);
begin
  IServerObject(dst^) := IServerObject(src^);
end;

function TServerObject_marshaller.typecode: ITypeCode;
begin
  result := _tc_ServerObject.typecode;
end;

initialization
  ClientObject_marshaller := TClientObject_marshaller.Create();
  ServerObject_marshaller := TServerObject_marshaller.Create();
  _tc_ClientObject := CreateTypeCodeConst('010000000e00000031000000010000001500000049444c3a436c69656e744f626a6563743a312e30000000000d000000436c69656e744f'+
    '626a65637400');
  _tc_ServerObject := CreateTypeCodeConst('010000000e00000031000000010000001500000049444c3a5365727665724f626a6563743a312e30000000000d0000005365727665724f'+
    '626a65637400');
end.