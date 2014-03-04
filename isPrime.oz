declare
fun {Prime N}
   fun {Help I}
      if I == N
      then true
      else if (N mod I == 0) then false else {Help (I+1)} end
      end
   end
in
   {Help 2}
end
{Browse {Prime 13}}