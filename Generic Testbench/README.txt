
	A generic test-bench.

	- instantiates a device-under-test (DUT)
	  with a generic number of inputs and outputs.

	- Every 5ns, reads an (input-vector, output-vector) pair 
	  from a file.  
	    - Checks that the current output-vector pair
	      read from the file matches the outputs of the DUT. 
	    - Applies the input vector read from the file to the
	      inputs of the DUT.
	    - NOTE: the initial output of the DUT is not checked.

	  Note: the tracefile has the following format.
		1000 00  00
		1100 00  00
		0001 10  11   -- change inputs a=1 b=0 last_c=0 s=1 c=0
		0101 10  11   -- clk-rising.   a=1 b=0 last_c=0 s=1 c=0
		0011 01  11   -- clk-falling, change inputs. a=b=1 last_c=0 s=0 c= 1
		0111 11  11   -- clk-rising a=b=1 last_c=1 s=1 c=1
		0010 01  11   -- clk-falling, a=1 b=0 last_c=1 s=0 c = 1
           where the first column is the input-vector,
                 the second column is the output-vector,
                 the third column is the mask-vector.
		 Everything after the third column is ignored.. put comments
                    (leave space after the third column before starting a comment).

	   An output-bit of the DUT is compared with the expected
           output bit only if the corresponding mask bit is 1.
	   So for example:
		1100 00  00
	    means that after applying 1100 to the inputs and observing
	    the output vector, none of the output bits is checked.
		0111 11  11   -- clk-rising a=b=1 last_c=1 s=1 c=1
	    means that after applying 1100 to the inputs, and observing
            the output vector, both the output bits are checked etc.



	- If you wish to test your design with this generic test-bench
	    - you will need to wrap your design with a DUT entity
		with the appropriate port mapping.
	    - you will need to prepare a input-output vector trace
		file.

	
	   
Contents of this directory.
	example_1/
		an example of the generic test-bench used to test
		a combinational circuit.

	example_2/
		an example of the generic test-bench used to test
		a sequential circuit.

