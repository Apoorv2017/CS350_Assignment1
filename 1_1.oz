declare
fun {Take X N}
   if N =< 0 then nil
   else
      case X of nil then nil
      []H|T then  H|{Take T N-1} end
   end
end


%{Browse {Take [1 2 3] 2}} This is the input Format
