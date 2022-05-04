compile_file:
	echo "Compilando archivo $(input_file)"
	gcc -Os -S -o $(input_file).s $(input_file).c
	as -o $(input_file).o $(input_file).s
	gcc -o $(input_file) $(input_file).o
upload_to_github:
	echo "Subiendo a GitHub"
	git add .
	git commit -m $(commit_message)
	git push origin $(branch_name)

