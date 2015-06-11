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
// Compiled with parameters: " -any -i./ ./\pseudo.idl" 
//                                                                            
unit pseudo_int;

{$MINENUMSIZE 4}

interface

uses
  orbtypes, code_int, orb_int, value_int;

type

  TS1 = record
    x : long;
    c : AnsiChar;
  end;

  TS2 = record
    str : AnsiString;
  end;

  TS3 = record
    c : AnsiChar;
    a : IAny;
    tc : ITypeCode;
  end;

  TE = (
    e1,
    e2,
    e3,
    e4,
    e5
  );

  Tseq = Array of TS2;

  Iv = interface(IValueBase)
  ['{3B74D1F4-019A-4A38-9FCF-3D76192732D9}']
    function ve : TE; overload;
    procedure ve(val : TE); overload;
    function vs : TS1; overload;
    procedure vs(val : TS1); overload;
  end;

  Iv_init = interface(IValueFactory)
  ['{666E0B46-51DB-45C3-A81B-CD3B772B3EC2}']
    function init(ve: TE): Iv;
  end;

  Tresult_type = (
    t_enum,
    t_seq,
    t_val
  );

  Ifoo = interface
  ['{296F5438-9ED7-46CA-BA90-2510393133FD}']
    function bar(const a1: IAny; out a2: IAny; var a3: IAny): IAny;
    function bar1(const tc1: ITypeCode; out tc2: ITypeCode; var tc3: ITypeCode): ITypeCode;
    function bar2(const rtype: IAny): IAny;
  end;

implementation

end.