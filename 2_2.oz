declare fun{Sum X Y} X+Y end
declare
fun {FoldR X BinOp Z}
   case X of nil then Z
   [] H|T then {BinOp {Pow H 2} {FoldR T BinOp Z}}
   end
end

%{Browse {FoldR [1 2 3] Sum 0}} This is the input Format
