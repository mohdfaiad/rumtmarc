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
// Compiled with parameters: " -i../..//idl -i./ ./\hello.idl" 
//                                                                            
unit hello_int;

{$MINENUMSIZE 4}

interface

uses
  orbtypes, code_int, orb_int;

type

  IHello = interface
  ['{A1BEFD08-96F2-452E-AF8D-C8127D11CE2A}']
    procedure hello(const s: AnsiString);
  end;

implementation

end.