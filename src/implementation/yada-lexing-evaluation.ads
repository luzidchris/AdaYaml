private package Yada.Lexing.Evaluation is
   pragma Preelaborate;

   procedure Read_Plain_Scalar (L : in out Lexer; T : out Token);

   procedure Read_Single_Quoted_Scalar (L : in out Lexer; T : out Token)
     with Pre => L.Cur = '"';

   procedure Read_Double_Quoted_Scalar (L : in out Lexer; T : out Token)
     with Pre => L.Cur = '"';

   procedure Read_Block_Scalar (L : in out Lexer; T : out Token)
     with Pre => L.Cur in '|' | '>';

   procedure Read_URI (L : in out Lexer; Restricted : Boolean);
end Yada.Lexing.Evaluation;
