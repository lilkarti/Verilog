			.text
			.global 	_start
_start:
			MOV	R1, #LIST					/* Point R1 to the start of the list */
			LDRB 	R2, [R1]						/* Initialize R2 with the first number */

			LDRB	R3, [R1, #1]				/* Get the next number */
			ADD	R2, R2, R3
			LDRB	R3, [R1, #2]				/* Get the next number */
			ADD	R2, R2, R3
			LDRB	R3, [R1, #3]				/* Get the next number */
			ADD	R2, R2, R3
END:		B 		END							/* Wait here */

LIST:
			.byte	10, 20, 30, 40				/* The numbers to be added */
			.end
