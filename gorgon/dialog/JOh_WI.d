
	
// Alatos Ravenscar Narlen ending dialogue (Same as BlackHearts)

REPLACE_TRANS_ACTION NARLEN BEGIN 29 END BEGIN 0 END ~ActionOverride("Alatos",EscapeArea())~ ~~

ADD_STATE_TRIGGER ALATOS 17 ~GlobalGT("NarlenMove","GLOBAL",7)~

ADD_TRANS_TRIGGER ALATOS 17 ~Global("JOh_WINarlen","GLOBAL",0)~ DO 0

ADD_TRANS_ACTION ALATOS BEGIN 17 END BEGIN 0 END ~SetGlobal("JOh_WINarlen","GLOBAL",1)~

ADD_STATE_TRIGGER ALATOS 20 ~!GlobalGT("NarlenMove","GLOBAL",7)~
