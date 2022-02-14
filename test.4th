empty

variable answer
42 answer ! 
: star  ( n -- ) spaces [char] * emit ;

: square ( n -- n^2 ) dup * ;
: doubt cr 42 emit 5 spaces 42 emit cr
		1 spaces 42 emit 3 spaces 42 emit cr
		2 spaces 42 emit 42 emit 42 emit cr
		1 spaces 42 emit 3 spaces 42 emit cr
		42 emit 5 spaces 42 emit cr ;

: clamp ( n low high -- clamped_n ) 
		-rot over over < 
		if -rot drop drop else drop 2dup swap > 
		if drop else swap drop then then ;

: guess ( target guess - target )
		2dup swap > 
		if ." too high! " else 2dup = 
		if ." corect!" drop else ." too low!" 
		then then drop ;
		  
