.data

list: .word 14, 9, 7, 8, 3, 4, 10, 11

.text

#li $s0, list         # put address of list into $t3
#li $t2, 6  

la  $s0, list      # Copy the base address of your array into $t1
#add $s0, $s0, 40    # 4 bytes per int * 10 ints = 40 bytes    

ADDI $s1, $0, 6 # store 6 in $s1

LOOP:

SLTI $t3, $s1, 0

BNE $t3, $zero, EXIT

SLL $t4, $s1, 2

ADD $t5, $s0, $t4

LW $s2, 0($t5)

SLTI $t3, $s2, 5

BNE $t3, $zero, ELSE

LW $s3, 4($t5)

ADDI $s3, $s3 , 2

SW $s3, 4($t5)

J ITERATOR_DECREMENT

ELSE:

LW $s3, 4($t5)

ADDI $s3, $s3 , -2

SW $s3, 4($t5)

ITERATOR_DECREMENT: ADDI $s1, $s1, -1

J LOOP

EXIT: