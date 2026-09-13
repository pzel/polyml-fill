(*
  This is a polyfill for mlton, so you can compile
  PolyML + polymlb programs without having to comment
  out Poly-specific convenience code.
*)


structure PolyML = struct

fun print _ = TextIO.print "<MLTON?>"
fun makestring _ = "<MLTON?>"
fun print_depth (_ : int) = ()

structure Compiler = struct
val languageExtensions: bool ref = ref true;
val reportDiscardFunction: bool ref = ref true;
val reportDiscardNonUnit: bool ref = ref true;
val reportExhaustiveHandlers: bool ref = ref false;
val reportUnreferencedIds: bool ref = ref true;
end

end
