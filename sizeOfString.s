					.text
					.globl main
main:
					la $t2,string
					li $t1,0
nextChar:
					lb $t0,($t2)
					beqz $t0,stringEnd
					add $t1,$t1,1
					add $t2, $t2, 1
					j nextChar

stringEnd:
					la $a0,anwser
					li $v0,4
					syscall

					move $a0,$t1
					li $v0,1
					syscall

					li $v0,10
					syscall

					.data
					string: .asciiz "  1   2   3\n1   |   |   \n ­--+--­+--­\n2   |   |   \n ­--+--­+--­\n3   |   |   \n"
					anwser: .asciiz "The size of the string is "
