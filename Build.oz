declare
fun {Build D C} 
  fun {$ X}
    fun {Help D2 C2}
      if D2 == nil
      then bottom
      else if X == D2.1 then C2.1 else {Help D2.2 C2.2} end
      end
    end
  in
    {Help D C}
  end
end
D = [1 2 3] 
C = [~1 ~2 ~3]
F = {Build D C}
{Browse {F 1}}
{Browse {F 3}}
{Browse {F 4}}