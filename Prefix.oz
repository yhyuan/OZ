declare
fun {Prefix L1 L2}
   if L1 == nil then true
   else if L2 == nil then false 
      else 
          if L1.1 == L2.1 then 
            {Prefix L1.2 L2.2}
          else 
            false
          end
      end
   end
end
declare
fun {FindString L1 L2}
   if L1 == nil then true
   else
     if L2 == nil then false
     else
       if {Prefix L1 L2} then true
       else {FindString L1 L2.2} end
     end
   end
end
{Browse {Prefix [1 2 3 2] [1 2 3 4 5 6]}}
{Browse {FindString [2 3] [1 2 3 4]}}
{Browse {FindString [2 3] [1 3 4]}}