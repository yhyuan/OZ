declare
fun {Flatten L}
    fun {Append Xs Ys}
      if Xs == nil then Ys
      else Xs.1 | {Append Xs.2 Ys}
      end
    end
    fun {Help L1 Acc}
      if L1 == nil
      then Acc
      else {Help L1.2 {Append Acc L1.1}}
      end
   end
in
   {Help L nil}
end
{Browse {Flatten [[1] [2] [3]]}}