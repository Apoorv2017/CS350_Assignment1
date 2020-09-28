declare
fun {Merge X Y}
   if X==nil then if Y==nil then nil else Y.1|{Merge X Y.2} end
   elseif Y==nil then if X==nil then nil else X.1|{Merge X.2 Y}end
   else
      if X.1> Y.1 then Y.1|{Merge X Y.2}
      else X.1|{Merge X.2 Y} end
   end
end

%{Browse {Merge [1 2 3] [2 4 5]}} This is the input Format
