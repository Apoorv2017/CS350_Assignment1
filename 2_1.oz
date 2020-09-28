declare fun {Sum X Y} X+Y end
declare fun {Product X Y} X*Y end

declare
fun {ZipWith BinOp X Y }
   if X == nil then nil
   elseif Y == nil then nil
   else {BinOp X.1 Y.1}|{ZipWith BinOp X.2 Y.2 } end
end

%{Browse {ZipWith  Sum [1 2  5 3] [2 4 4 5]}} This is the input Format
