declare
fun {AppendLists L1 L2}
   if L1 == nil then L2
   else L1.1 | {AppendLists L1.2  L2}
   end
end
{Browse {AppendLists [1 2 3] [4 5 6]}}