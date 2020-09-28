declare
fun lazy {Series X F P T S}
   if (T mod 2) ==0 then {Series X F*T P T+1 S}
   elseif S<0 then ~1*({IntToFloat {Pow X P}}/{IntToFloat F*T})| {Series X F*T P+2 T+1 1}
   else {IntToFloat {Pow X P}}/{IntToFloat F*T} | {Series X F*T P+2 T+1 ~1}
   end
end

declare
fun {Sin X}
   {Series X 1 1 1 1}
end

%{Borwse {Sin X}} Enter the value of X

%{Browse {Series X 1 1 1 1}} Input the value of X
% X in function Serie corrosponds to Sin(x)
% F corrosponds to the Factorial value
% P corosponds to the Power
% T corrosponds to the Term
% S corrosponds to the Sign
