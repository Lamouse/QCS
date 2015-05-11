#define N 3
#define range 1
short results[N];

proctype P(int n) {
	short temp;

	//0		- default
	//2-3	- correct result
	//5		- incorrect result

	if
	:: temp = 2;
	:: temp = 3;
	:: temp = 5;
	:: temp = (timeout);
	fi

	if
	:: n == -1 -> results[_pid-1] = temp;
	:: else -> results[n] = temp;
	fi
}


init {
	int i, y, cont, index;
	int value[N], freq[N]; 

	//first execution
	atomic {
		for(i : 0..(N-1)) {
			run P(-1);
		}
	}

	(_nr_pr == 1);


	//take care of timeouts
	//max more two executions
	for(y : 0..1) {
		cont = 0;
		atomic {
			for(i : 0..(N-1)) {
				if
				:: results[i] == 0 -> run P(i);
				:: else -> cont = cont + 1;
				fi
			}
		}

		(_nr_pr == 1);

		if
		::cont == N -> break;
		::else -> skip;
		fi
	}


	//calculate the frequency of each result
	index = 0;
	for(i : 0..(N-1)) {
		//check if value already viewed
		cont = 0;
		for(y : 0..(index-1)) {
			if
			:: results[i] == value[y] -> cont = 1;
			:: else -> skip;
			fi
		}

		if
		::cont == 1 -> skip;
		::else -> 	cont = 0;
					for(y : 0..(N-1)) {
					if
					:: results[i] == results[y] -> cont = cont + 1;
					:: results[i] == results[y] - range -> cont = cont + 1;
					:: results[i] == results[y] + range -> cont = cont + 1;
					:: else -> skip;
					fi
					}
					value[index] = results[i];
					freq[index] = cont;
					index = index + 1;
		fi
	}

	printf("Results: ")
	//prints just for test
	for(i : 0..(N-1)) {
		printf("%d ", results[i]);
	}
	// printf("values and frequencies (%d)\n", index);
	// for(i : 0..(index-1)) {
	// 	 printf("%d: %d\n", value[i], freq[i]);
	// }


	//display the most frequent result if its frequency is equal or bigger than half of the total elements
	if
	:: N%2 == 0 -> cont = N/2;
	:: else -> cont = N/2 + 1;
	fi

	y = 999;
	for(i : 0..(index-1)) {
		if 
		::freq[i] >= cont && value[i] < y -> y = value[i]; cont = freq[i];
		::else -> skip;
		fi
	}

	printf("\n\nFinal Result: ");
	if 
	::y == 999 -> printf("Unable to find results\n");
	::else -> printf("%d\n", y);
	fi
}
