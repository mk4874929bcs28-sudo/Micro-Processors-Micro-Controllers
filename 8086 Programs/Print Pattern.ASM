DATA SEGMENT
CA DB 'E'
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE, DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV AH,02H
        MOV DL, CA
        INT 21H
        MOV DL, ' '
        INT 21H
        MOV DL, CA
        INT 21H
        MOV DL, ' '
        INT 21H
        MOV DL, CA
        INT 21H
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        MOV DL, CA
        INT 21H
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        MOV DL, CA
        INT 21H
        MOV DL, ' '
        INT 21H
        MOV DL, CA
        INT 21H
        MOV DL, ' '
        INT 21H
        MOV DL, CA
        INT 21H

CODE ENDS
END

