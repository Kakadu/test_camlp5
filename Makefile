all:
	ocamlfind ocamlc -c -package camlp5 -pp camlp5o -o pa_log.cmo pa_log.ml
	ocamlfind ocamldep -package camlp5 -syntax camlp5o -ppopt "./pa_log.cmo" -modules test000.ml -verbose

clean:
	rm -f *.cm*
