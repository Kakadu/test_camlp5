#load "pa_extend.cmo";;
#load "q_MLast.cmo";;

open Pcaml

EXTEND
  GLOBAL: expr;
  expr: LEVEL "top" [ 
    [ "REPR"; "("; e = expr; ")" -> 
	    print_endline "This message is printed last";
        let str = Printf.sprintf "\"%s\"" (Eprinter.apply pr_expr Pprintf.empty_pc e) in 
        let str = Printf.sprintf "%S" str in       
        let str = String.sub str 3 ((String.length str) - 6) in
        <:expr<($str:str$, $e$)>> 
    ]
  ];

END;
