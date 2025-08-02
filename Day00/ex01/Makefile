NAME        = ft_test_sign
OCAML       = ocamlopt
SRC         = $(NAME).ml
OUT         = $(NAME)

all: $(OUT)

$(OUT): $(SRC)
	$(OCAML) $(SRC) -o $(OUT)

clean:
	rm -f *.cmx *.cmi *.o

fclean: clean
	rm -f $(OUT)

re: fclean all
