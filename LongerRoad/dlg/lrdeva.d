BEGIN ~LRDEVA~

IF ~Global("DevaApproach", "GLOBAL", 1)~ THEN BEGIN D11
   SAY @0  
   IF ~InParty("Haer'Dalis")~ THEN DO ~SetGlobal("DevaApproach","GLOBAL",2)~ EXTERN BHAERD25 DHD1
   IF ~!InParty("Haer'Dalis")~ THEN DO ~SetGlobal("DevaApproach","GLOBAL",2)~ GOTO DEVA_NPC1
END

IF ~~ THEN BEGIN D12
   SAY  @1 
   IF ~~ THEN REPLY @2 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO D15A
   IF ~~ THEN REPLY @3 GOTO D14
   IF ~~ THEN REPLY @4 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1)~ GOTO  D16
   IF ~~ THEN REPLY @5 GOTO D14
   IF ~~ THEN REPLY @6 GOTO D13
END

IF ~~ THEN BEGIN D13
   SAY @7
   IF ~~ THEN REPLY @8 GOTO D14
   IF ~~ THEN REPLY @9 GOTO D16
END

IF ~~ THEN BEGIN D14
   SAY @10 
   IF ~~ THEN REPLY @11 GOTO D15B
   IF ~~ THEN REPLY @12 GOTO D16
END

IF ~~ THEN BEGIN D15A
   SAY @13 
   IF ~~ THEN GOTO D15C1
END

IF ~~ THEN BEGIN D15B
   SAY @14
   IF ~~ THEN GOTO D15C1
END

IF ~~ THEN BEGIN D15C1
   SAY @15
   IF ~~ THEN GOTO D15C2
END

IF ~~ THEN BEGIN D15C2
   SAY @16
   IF ~~ THEN REPLY @17 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO D17
   IF ~~ THEN REPLY @18 GOTO D17
   IF ~~ THEN REPLY @19 GOTO D16
   IF ~~ THEN REPLY @20 GOTO D17
END

IF ~~ THEN BEGIN D16
   SAY @21  
   IF ~Global("DevaComplain","GLOBAL",0)~ THEN DO ~IncrementGlobal("DevaComplain","GLOBAL",1) SetGlobal("DevaApproach","GLOBAL",2)~ GOTO DEVA_NPC6
   IF ~!Global("DevaComplain","GLOBAL",0)~ THEN GOTO DEVA_END
END

IF ~~ THEN BEGIN DEVA_END
   SAY @22 
	IF ~~ THEN EXIT
END

IF ~Global("DevaApproach","GLOBAL",2)~ THEN BEGIN D17A
   SAY @23 
   IF ~~ THEN REPLY @24 GOTO D181
   IF ~~ THEN REPLY @25 GOTO D16
   IF ~~ THEN REPLY @26 GOTO D16
   IF ~~ THEN REPLY @27 GOTO D116
END

IF ~~ THEN BEGIN D17
   SAY @23 
   IF ~~ THEN REPLY @24 GOTO D181
   IF ~~ THEN REPLY @25 GOTO D16
   IF ~~ THEN REPLY @26 GOTO D16
   IF ~~ THEN REPLY @27 GOTO D116
END

IF ~~ THEN BEGIN D181
   SAY @29 
   IF ~~ THEN GOTO D182
END

IF ~~ THEN BEGIN D182
   SAY @30
   IF ~~ THEN GOTO D19
END

IF ~~ THEN BEGIN D19
   SAY @31
   IF ~InParty("Sarevok")~ THEN EXTERN BSAREV25 DEVA_SAREVOK9
   IF ~!InParty("Sarevok")~ THEN GOTO D110
END

IF ~~ THEN BEGIN D110
   SAY @32
   IF ~InParty("lrirenic")~ THEN GOTO DEVA_JON_IMMY10
   IF ~!InParty("lrirenic")~ THEN GOTO D111
END

IF ~~ THEN BEGIN D111
   SAY @33
   IF ~~ THEN REPLY @34 GOTO D112
   IF ~~ THEN REPLY @35 GOTO D16
END

IF ~~ THEN BEGIN D112
   SAY @36
   IF ~InParty("lrirenic")~ THEN EXTERN BJONEL25 DEVA_JON12
   END

IF ~~ THEN BEGIN D113
   SAY @37
   IF ~~ THEN GOTO D1141
END

IF ~~ THEN BEGIN D1141
   SAY @38
   IF ~~ THEN GOTO D1142
END

IF ~~ THEN BEGIN D1142
   SAY @39
   IF ~~ THEN GOTO D1151
END

IF ~~ THEN BEGIN D1151
   SAY @40
   IF ~~ THEN GOTO D1152
END

IF ~~ THEN BEGIN D1152
   SAY @41
   IF ~~ THEN GOTO D116
END

IF ~~ THEN BEGIN D116
   SAY @42
   IF ~~ THEN GOTO D117
   IF ~InParty("lrirenic")~ THEN EXTERN BJONEL25 DEVA_JON17
END

IF ~~ THEN BEGIN D117
   SAY @43  
   IF ~~ THEN REPLY @44 GOTO D119
   IF ~~ THEN REPLY @45 GOTO D119
   IF ~~ THEN REPLY @46 GOTO D119
   IF ~~ THEN REPLY @47 GOTO D119
   IF ~~ THEN REPLY @48 GOTO D16
   IF ~~ THEN REPLY @49 GOTO D118
END

IF ~~ THEN BEGIN D118
   SAY @50
   IF ~~ THEN GOTO D119
END

IF ~~ THEN BEGIN D119
   SAY @51
   IF ~~ THEN REPLY @52 GOTO DEVA_BPACK
   IF ~~ THEN REPLY @53 DO ~SetGlobal("DevaApproach","GLOBAL",3)~  GOTO D16
END

IF ~Global("DevaApproach","GLOBAL",3)~ THEN BEGIN DEVA_COMEBACK
   SAY @51 
   IF ~~ THEN REPLY @52 GOTO DEVA_BPACK
   IF ~~ THEN REPLY @53 GOTO D16
END

IF ~~ THEN BEGIN DEVA_BPACK
	SAY @55 
	IF ~~ THEN DO ~
SetGlobal("DevaApproach","GLOBAL",4)
GiveItemCreate("DBODY",LastTalkedToBy,0,0,0)
SetGlobalTimer("DevaDeath","GLOBAL",THREE_DAYS)
DestroySelf()~
UNSOLVED_JOURNAL  @56 EXIT
END


APPEND BHAERD25

IF ~~ THEN BEGIN DHD1
   SAY @57
   IF ~~ THEN REPLY @58 GOTO DHD2
   IF ~~ THEN REPLY @59 EXTERN LRDEVA DEVA_NPC1
END

IF ~~ THEN BEGIN DHD2
   SAY @60
   IF ~~ THEN EXTERN LRDEVA DEVA_NPC1
END
END


CHAIN3 LRDEVA DEVA_NPC1
@61
==BKELDO25 IF ~InParty("Keldorn")~ THEN
@62
==BAERIE25 IF ~InParty("Aerie")~ THEN
@63
==BMAZZY25 IF ~InParty("Mazzy")~ THEN
@64
==BVICON25 IF ~InParty("Viconia")~ THEN
@65
==BJAHEI25 IF ~InParty("Jaheira")~ THEN
@66
==BJONEL25 IF ~InParty("lrirenic")~ THEN
@67
END LRDEVA D12

CHAIN3 LRDEVA DEVA_NPC6
@22 
DO ~SetGlobalTimer("DevaLeaves","GLOBAL", ONE_DAY)~
==BKORGA25 IF ~InParty("Korgan")~ THEN
@68
==BAERIE25 IF ~InParty("Aerie")~ THEN
@69
==BNALIA25 IF ~InParty("Nalia")~ THEN
@70
==BIMOEN25 IF ~InParty("Imoen2")~ THEN
@71
==BKELDO25 IF ~InParty("Keldorn")~ THEN
@72
==BANOME25 IF ~InParty("Anomen") Alignment("Anomen",MASK_GOOD)~ THEN
@73
==BJONEL25 IF ~InParty("lrirenic")~ THEN
@74
EXIT

CHAIN BSAREV25 DEVA_SAREVOK9
IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN
@75 
==BSAREV25 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN
@76 
END LRDEVA D110

CHAIN3 LRDEVA DEVA_JON_IMMY10
@77
==BJONEL25 IF ~InParty("lrirenic")~ THEN
@78 
==BIMOEN25 IF ~InParty("Imoen2")~ THEN
@79
END LRDEVA D111

CHAIN BJONEL25 DEVA_JON12
@80
END LRDEVA D113

CHAIN BJONEL25 DEVA_JON17
@81 
 = IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
@82
 = IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
@83
END LRDEVA D117



