declare
fun{Last2 X K}
   if K==0 then X
   else {Last2 X.2 K-1}
   end
end

declare
fun{Last X N}
   if {List.length X}=<N then X
   elseif N=<0 then nil
   else {Last2 X {List.length X}-N}
   end
end



{Browse {Last [1 2 3] 4}}
