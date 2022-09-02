// Yeison Andres Muñoz Ceron
// 456968
// yeison.munoz@upb.edu.co

(INICIO) 
                @KBD
                D=M
                @color 
                M=1 
                @84
                D=D-A
                @SETV
                D;JEQ
                
                @KBD
                D=M
                @color
                M=0    
                @67
                D=D-A 
                @SETC
                D;JEQ
                
                @INICIO
                0;JMP

(SETV)
                @16400 
                D=A
                @coord 
                M=D 
                
                @256
                D=A
                @cont 
                M=D
                
                @32
                D=A 
                @salto
                M=D
                @RECT
                0;JMP

(SETC)
                @16384 
                D=A
                @coord 
                M=D 
                @8192 
                D=A
                @cont 
                M=D
                @1
                D=A 
                @salto
                M=D
                @RECT3
                0;JMP

(RECT)
                @coord 
                D=M
                @pscreen
                M=D 

(PAINT)
                @cont 
                D=M 
 
                @SETH
                D;JEQ 
 
                @color
                D=M 
                
                @pscreen
                A=M 
                M=D
                
                @cont 
                M=M-1
                
                @salto
                D=M
                
                @pscreen
                M=M+D 
                
                @PAINT
                0;JMP

(SETH)
                @20480
                D=A
                @coord
                M=D

                @32
                D=A
                @cont
                M=D

                @salto
                M=1
                @RECT2
                0;JMP

(RECT2)
                @coord 
                D=M
                @pscreen
                M=D 

(PAINT2)
                @cont 
                D=M 
 
                @END
                D;JEQ 

                @color
                D=-1 
                
                @pscreen
                A=M 
                M=D 
                
                @cont 
                M=M-1
                
                @salto
                D=M
                
                @pscreen
                M=M+D 
                
                @PAINT2
                0;JMP

(RECT3)
                @coord 
                D=M
                @pscreen
                M=D 

(PAINT3)
                @cont 
                D=M 
 
                @END
                D;JEQ 

                @color
                D=M 
                
                @pscreen
                A=M 
                M=D 
                
                @cont 
                M=M-1
                
                @salto
                D=M
                
                @pscreen
                M=M+D 
                
                @PAINT3
                0;JMP
(END)
                @INICIO
                0;JMP