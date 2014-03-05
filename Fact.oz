declare
fun {Fact N}
   fun {Help N I  Acc}
      if N == I
      then Acc
      else {Help N (I+1)  {Append Acc [{List.last Acc}*(I+1)]}}
      end
   end
in
   {Help N 1 [1]}
end
{Browse {Fact 4}}
