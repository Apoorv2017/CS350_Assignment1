declare fun {Sum X Y} X+Y end

declare
fun {FoldL X BinOp Y}
   case X of nil then Y
   [] H|T then {FoldL T BinOp {BinOp Y H}}
   end
end

%{Browse {FoldL [1 2 3] Sum 0}}  This is the input Format
