// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.b5), 12.07.2004 18:53
//                                                                            
// Copyright (c) 2002 - 2003                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
unit seq1_octet_org_omg_boxedRMI_int;

{$MINENUMSIZE 4}

interface

uses
  code_int, orb_int, orbtypes, value_int;

type

  Iorg_omg_boxedRMI_seq1_octet = interface(IValueBase)
  ['{64CE3362-1BF1-493F-8112-0D846E4A5FA1}']
    function _value : octet_seq; overload;
    procedure _value(val : octet_seq); overload;
  end;

implementation

end.