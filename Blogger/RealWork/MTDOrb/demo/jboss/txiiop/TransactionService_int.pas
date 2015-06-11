// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.b5), 26.03.2004 15:03
//                                                                            
// Copyright (c) 2002 - 2003                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
unit TransactionService_int;

{$MINENUMSIZE 4}

interface

uses
  code_int, orb_int, orbtypes, value_int, CosTransactions_int, except_int;

type

// module org types

// module jboss types

// module tm types

// module iiop types

  Torg_jboss_tm_iiop_TransactionId_globalId_seq = array of octet;

  Torg_jboss_tm_iiop_TransactionId = record
    formatId : long;
    globalId : Torg_jboss_tm_iiop_TransactionId_globalId_seq;
  end;

  Torg_jboss_tm_iiop_TransactionDesc = record
    control : IControl;
    propagationContext : TPropagationContext;
  end;

  Iorg_jboss_tm_iiop_TransactionFactoryExt = interface(ITransactionFactory)
  ['{9031B3F2-04B2-43D2-AB6D-A2468B294A30}']
    function create_transaction(const time_out: _ulong): Torg_jboss_tm_iiop_TransactionDesc;
  end;

  Iorg_jboss_tm_iiop_CoordinatorExt = interface(ICoordinator)
  ['{8995F0AF-1216-4AFD-AAC2-FB6E284144D6}']
    function get_transaction_id: Torg_jboss_tm_iiop_TransactionId;
  end;

  Iorg_jboss_tm_iiop_TransactionService = interface(Iorg_jboss_tm_iiop_TransactionFactoryExt)
  ['{A4BDE47E-450E-4BEE-81FC-54700414CD34}']
  end;

implementation

end.