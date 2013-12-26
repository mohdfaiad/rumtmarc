// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.1b1), 21.09.2010 13:25
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
// Compiled with parameters: " -nuorb_int -without-prefix -i..\..\idl ..\..\idl\ir_base.idl" 
//                                                                            
unit ir_base_int;

{$MINENUMSIZE 4}

interface

uses
  orbtypes, code_int;

const

  PRIVATE_MEMBER = 0;
  PUBLIC_MEMBER = 1;
  VM_NONE = 0;
  VM_CUSTOM = 1;
  VM_ABSTRACT = 2;
  VM_TRUNCATABLE = 3;

type

// module CORBA types

  TIdentifier = AnsiString;

  TVersionSpec = AnsiString;

  TRepositoryId = AnsiString;

  TDefinitionKind = (
    dk_none,
    dk_all,
    dk_Attribute,
    dk_Constant,
    dk_Exception,
    dk_Interface,
    dk_Module,
    dk_Operation,
    dk_Typedef,
    dk_Alias,
    dk_Struct,
    dk_Union,
    dk_Enum,
    dk_Primitive,
    dk_String,
    dk_Sequence,
    dk_Array,
    dk_Repository,
    dk_Wstring,
    dk_Fixed,
    dk_Value,
    dk_ValueBox,
    dk_ValueMember,
    dk_Native,
    dk_AbstractInterface,
    dk_LocalInterface,
    dk_Component,
    dk_Home,
    dk_Factory,
    dk_Finder,
    dk_PrimaryKey,
    dk_Emits,
    dk_Publishes,
    dk_Consumes,
    dk_Provides,
    dk_Uses
  );

  IIRObject = interface
  ['{9B0548B5-0589-4F51-A680-944D20C7F0F6}']
    procedure _destroy;
    function _get_def_kind: TDefinitionKind;
    property def_kind: TDefinitionKind read _get_def_kind;
  end;

  IIDLType = interface(IIRObject)
  ['{58C4F910-38CF-4AE7-BBF0-ED6B68086156}']
    function _get_type: ITypeCode;
    property _type: ITypeCode read _get_type;
  end;

  TStructMember = record
    name : TIdentifier;
    _type : ITypeCode;
    type_def : IIDLType;
  end;

  TStructMemberSeq = Array of TStructMember;

  TUnionMember = record
    name : TIdentifier;
    _label : IAny;
    _type : ITypeCode;
    type_def : IIDLType;
  end;

  TUnionMemberSeq = Array of TUnionMember;

  TEnumMemberSeq = Array of TIdentifier;

  TVisibility = Short;

  TValueModifier = Short;

  TValueMember = record
    name : TIdentifier;
    id : TRepositoryId;
    defined_in : TRepositoryId;
    version : TVersionSpec;
    _type : ITypeCode;
    type_def : IIDLType;
    access : TVisibility;
  end;

  TValueMemberSeq = Array of TValueMember;

implementation

end.