declare
fun{Check X I K}
   if X==nil then true
   elseif K==I then {Check X.2 I K+1}
   elseif X.1==0 then {Check X.2 I K+1}
   else false
   end
end

declare
fun{IsDiagonal X}
   local Diagonal in
      fun{Diagonal X I}
	 if X==nil then true
	 elseif {Check X.1 I 1} then {Diagonal X.2 I+1}
	 else false
	 end
      end
      {Diagonal X 1}
   end
end


%declare
%X=[[1 0 0][0 5 0][0 0 9]]

%{Browse {IsDiagonal X }} Input Type
