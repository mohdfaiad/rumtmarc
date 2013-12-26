// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.b6), 29.07.2004 16:36
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
unit EJB_int;

{$MINENUMSIZE 4}

interface

uses
  code_int, orb_int, orbtypes, value_int, except_int;

type

  Ijavax_ejb_EJBObject = interface;

  Ijavax_ejb_EJBHome = interface;

// module java types

// module lang types

  Ijava_lang_StackTraceElement = interface(IValueBase)
  ['{5ADB166D-4EF9-43B2-987A-2D2475D1DAF3}']
    function lineNumber : long; overload;
    procedure lineNumber(val : long); overload;
    function declaringClass : IWStringValue; overload;
    procedure declaringClass(val : IWStringValue); overload;
    function fileName : IWStringValue; overload;
    procedure fileName(val : IWStringValue); overload;
    function methodName : IWStringValue; overload;
    procedure methodName(val : IWStringValue); overload;
  end;

  Tjava_lang_StackTraceElementSeq = array of Ijava_lang_StackTraceElement;

  Ijava_lang_seq1_StackTraceElement = interface(IValueBase)
  ['{92D8E7C1-B31C-43BD-BA66-A032AD8F11D1}']
    function _value : Tjava_lang_StackTraceElementSeq; overload;
    procedure _value(val : Tjava_lang_StackTraceElementSeq); overload;
  end;

  Ijava_lang_Throwable = interface(IValueBase)
  ['{D1C96259-4DD1-4826-8C71-63B665C1F7A1}']
    function cause : Ijava_lang_Throwable; overload;
    procedure cause(val : Ijava_lang_Throwable); overload;
    function detailMessage : IWStringValue; overload;
    procedure detailMessage(val : IWStringValue); overload;
    function stackTrace : Ijava_lang_seq1_StackTraceElement; overload;
    procedure stackTrace(val : Ijava_lang_seq1_StackTraceElement); overload;
  end;

  Ijava_lang_ThrowableEx = interface(IUserException)
  ['{9F2246D7-FF9D-4E87-A7F5-A68822969DCB}']
    function value: Ijava_lang_Throwable; overload;
    procedure value(const val : Ijava_lang_Throwable); overload;
  end;

  Tjava_lang_Object = IAny;

  Ijava_lang_Exception = interface(Ijava_lang_Throwable)
  ['{D0E4D65C-392C-4E55-9F66-AB4F4862F782}']
  end;

  Ijava_lang_Ex = interface(IUserException)
  ['{670254B4-D2BC-4F3D-9277-DDBA103E6E90}']
    function value: Ijava_lang_Exception; overload;
    procedure value(const val : Ijava_lang_Exception); overload;
  end;

  Ijava_lang_Error = interface(Ijava_lang_Throwable)
  ['{0E01B22E-D178-4235-9AC7-641E1D43F0DD}']
  end;

  Ijava_lang_ErrorEx = interface(IUserException)
  ['{01777468-B745-4191-84F6-4E5859019F10}']
    function value: Ijava_lang_Error; overload;
    procedure value(const val : Ijava_lang_Error); overload;
  end;

  Ijava_lang_Comparable = interface(IValueBase)
  ['{95712171-1161-4678-AC3B-AD4C8ECF9990}']
  end;

  Ijava_lang_Number = interface(IValueBase)
  ['{A5EA9C6E-9D01-4264-B18B-70D943C15D4A}']
  end;

  Ijava_lang_Integer = interface(Ijava_lang_Number)
  ['{F823F7AB-02E2-426B-9E22-826C1D16CDF7}']
    function value : long; overload;
    procedure value(val : long); overload;
  end;

  Ijava_lang_Long = interface(Ijava_lang_Number)
  ['{70507806-AF05-4E6F-A2E5-402CC52BF373}']
    function value : longlong; overload;
    procedure value(val : longlong); overload;
  end;

  Ijava_lang_Boolean = interface(IValueBase)
  ['{88F641DE-A54D-4781-AA45-975B11CF9BC8}']
    function value : boolean; overload;
    procedure value(val : boolean); overload;
  end;

// module javax types

// module ejb types

  Ijavax_ejb_CreateException = interface(Ijava_lang_Exception)
  ['{7D9FFCFA-B079-46BB-88AA-CDFEE0BD167F}']
  end;

  Ijavax_ejb_CreateEx = interface(IUserException)
  ['{B5D6D237-A980-4108-9903-86562ADCC4FD}']
    function value: Ijavax_ejb_CreateException; overload;
    procedure value(const val : Ijavax_ejb_CreateException); overload;
  end;

  Ijavax_ejb_Handle = interface
  ['{A019C71C-4B8D-4F74-96D0-B82CC21388E5}']
    function _get_EJBObject: Ijavax_ejb_EJBObject;
    property EJBObject: Ijavax_ejb_EJBObject read _get_EJBObject;
  end;

  Ijavax_ejb_HomeHandle = interface
  ['{61EC1C24-9622-4926-92D4-6ABA3E7D8A8A}']
    function _get_EJBHome: Ijavax_ejb_EJBHome;
    property EJBHome: Ijavax_ejb_EJBHome read _get_EJBHome;
  end;

  Ijavax_ejb_EJBMetaData = interface(IValueBase)
  ['{989773CD-16F1-4872-A216-717105BE9F74}']
  end;

  Ijavax_ejb_RemoveException = interface(Ijava_lang_Exception)
  ['{C273F95C-9042-462C-BB83-29DB18E1EC5D}']
  end;

  Ijavax_ejb_RemoveEx = interface(IUserException)
  ['{3A0A20DA-576F-40A0-9303-55E0CEB65488}']
    function value: Ijavax_ejb_RemoveException; overload;
    procedure value(const val : Ijavax_ejb_RemoveException); overload;
  end;

  Ijavax_ejb_FinderException = interface(Ijava_lang_Exception)
  ['{5D8E3C4D-6C8B-4E07-999B-D759248ADE4C}']
  end;

  Ijavax_ejb_FinderEx = interface(IUserException)
  ['{123721BE-2FFE-41C9-BA9D-012967BEA331}']
    function value: Ijavax_ejb_FinderException; overload;
    procedure value(const val : Ijavax_ejb_FinderException); overload;
  end;

  Ijavax_ejb_ObjectNotFoundException = interface(Ijavax_ejb_FinderException)
  ['{65E0C955-2F35-4535-9847-275A3450F8D0}']
  end;

  Ijavax_ejb_ObjectNotFoundEx = interface(IUserException)
  ['{EC57CF58-A7BC-4ADE-A8D1-814DAFD2F19F}']
    function value: Ijavax_ejb_ObjectNotFoundException; overload;
    procedure value(const val : Ijavax_ejb_ObjectNotFoundException); overload;
  end;

  Ijavax_ejb_EJBHome = interface
  ['{47008A53-B336-44AF-9415-4F51889453EA}']
    procedure remove__java_lang_Object(const arg0: Tjava_lang_Object);
    procedure remove__javax_ejb_Handle(const arg0: Ijavax_ejb_Handle);
    function _get_EJBMetaData: Ijavax_ejb_EJBMetaData;
    function _get_homeHandle: Ijavax_ejb_HomeHandle;
    property EJBMetaData: Ijavax_ejb_EJBMetaData read _get_EJBMetaData;
    property homeHandle: Ijavax_ejb_HomeHandle read _get_homeHandle;
  end;

  Ijavax_ejb_EJBObject = interface
  ['{0585BC4A-AE52-4C92-B921-FE339E40D4C5}']
    function isIdentical(const arg0: Ijavax_ejb_EJBObject): boolean;
    procedure remove;
    function _get_EJBHome: Ijavax_ejb_EJBHome;
    function _get_handle: Ijavax_ejb_Handle;
    function _get_primaryKey: Tjava_lang_Object;
    property EJBHome: Ijavax_ejb_EJBHome read _get_EJBHome;
    property handle: Ijavax_ejb_Handle read _get_handle;
    property primaryKey: Tjava_lang_Object read _get_primaryKey;
  end;

implementation

end.