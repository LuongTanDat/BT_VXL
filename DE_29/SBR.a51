;ORG 0000H
	;LJMP MAIN

;ORG 0050H
;MAIN:
	;MOV R1, #20H
	;MOV R1, #23H
	;LCALL SBR

	;SJMP $
;;----- END MAIN-----

;SBR:
	;PUSH ACC
	;PUSH B
	;PUSH PSW
	;; t�nh so byte t� R1 den R2 = R2 - R1 +1
	;MOV A, R2
	;CLR C
	;SUBB A, R1
	;ADD A, #01
	;MOV B, A		; chuyen so byte vao B dung cho vong lap
;BACK:
	;MOV A, @R1
	;CPL ACC.7
	;MOV @R1, A
	;INC R1
	;DJNZ B, BACK
	
;POP PSW
;POP B
;POP ACC

;RET

;END




ORG 00H
	MOV	TMOD,#20H
	MOV TL1,#0FDH
	MOV	TH1,#0FDH
	SETB TR1
	SJMP $
END












