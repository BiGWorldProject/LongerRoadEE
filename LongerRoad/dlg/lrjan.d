APPEND BJAN25

IF ~InParty("lrirenic")
See("lrirenic")
!StateCheck("lrirenic",STATE_SLEEPING)
Global("LRJonJan","LOCALS",0)~ THEN BEGIN BJJ1
   SAY @0 
   IF ~~ THEN DO ~SetGlobal("LRJonJan","LOCALS",1)~ EXTERN BJONEL25 JON_JAN1
END

IF ~InParty("lrirenic")
See("lrirenic")
!StateCheck("lrirenic",STATE_SLEEPING)
Global("LRJonJan","LOCALS",1)~ THEN BEGIN BJJ2
  SAY @1  
  IF ~~ THEN DO ~SetGlobal("LRJonJan","LOCALS",2)~ EXTERN BJONEL25 JON_JAN2
END
END //APPEND BJAN

CHAIN BJONEL25 JON_JAN1
@2 
==BJAN25
@3
==BJONEL25
@4
==BJAN25
@5
==BJONEL25
@6
==BJAN25
@7
==BJONEL25
@8
==BJAN25
@9
==BJONEL25
@10
==BJAN25
@11
==BJONEL25
@12
==BJAN25
@13
EXIT

CHAIN BJONEL25 JON_JAN2
@14 
==BJAN25
@15
==BJONEL25
@16
==BJAN25
@17
==BJONEL25
@18
==BJAN25
@19
==BJONEL25
@20
EXIT
