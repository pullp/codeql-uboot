import cpp

// from MacroInvocation mi
// where mi.getMacro().getName().regexpMatch("ntoh(s|l|ll)")
// select mi.getExpr(), "exprs where call ntoh family macros"

from NtohMacroInvocation mi
select mi.getAExpr()

class NtohMacroInvocation extends MacroInvocation {
    NtohMacroInvocation() {
        this.getMacro().getName().regexpMatch("ntoh(s|l|ll)")
    }

    Expr getAExpr(){result = this.getExpr()}
}

// class SmallInt extends int {
//     SmallInt() { this = [1 .. 10] }
//   }
  
//   class DivisibleInt extends SmallInt {
//     SmallInt divisor;   // declaration of the field `divisor`
//     DivisibleInt() { this % divisor = 0 }
  
//     SmallInt getADivisor() { result = divisor }
//   }
  
//   from DivisibleInt i
//   select i, i.getADivisor()
  
