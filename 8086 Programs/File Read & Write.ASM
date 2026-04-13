
DATA SEGMENT
FN DB "TET.TXT","$"
MSB DB "HELLO"
BUFFER DB 0AH DUP(00H),'$'
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV AH,3CH
        MOV CX,0000H
        MOV DX,OFFSET FN
        INT 21H
        MOV BX,AX
        MOV AH,40H
        MOV CX,0AH
        MOV DX,OFFSET MSB
        INT 21H
        MOV AH,3EH
        INT 21H
        MOV AH,3DH
        MOV DX,OFFSET FN
        INT 21H
        MOV BX,AX
        MOV AH,3FH
        MOV DX,OFFSET BUFFER
        MOV CX,0AH
        INT 21H
        MOV AH,09H
        MOV DX,OFFSET MSB
        INT 21H
        MOV AH,4CH
        INT 21H
CODE ENDS
END
