#define N 3
short results[N];

proctype P(int n) {
	short temp;

	//1-2	- correct result
	//3		- incorrect result
	//4		- incorrect input
	//5		- timeout

	select (temp : 1 .. 5);

	if
	:: n == -1 -> results[_pid-1] = temp;
	:: else -> results[n] = temp;
	fi
}


init {
	int i, y, cont, index;
	int value[N], freq[N]; 

	atomic {
		for(i : 0..(N-1)) {
			run P(-1);
		}
	}

	(_nr_pr == 1);


	//take care of timeouts
	for(y : 0..2) {
		cont = 0;
		atomic {
			for(i : 0..(N-1)) {
				if
				:: results[i] == 5 -> run P(i);
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


	//voter
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
		::else -> 	cont = 1;
					for(y : (i+1)..(N-1)) {
					if
					:: results[i] == results[y] -> cont = cont + 1;
					:: else -> skip;
					fi
					}
					value[index] = results[i];
					freq[index] = cont;
					index = index + 1;
		fi
	}


	//just for test
	for(i : 0..(N-1)) {
		printf("%d\n", results[i]);
	}

	printf("values and frequencies (%d)\n", index);
	for(i : 0..(index-1)) {
		printf("%d: %d\n", value[i], freq[i]);
	}

	if
	:: N%2 == 0 -> cont = N/2;
	:: else -> cont = N/2 + 1;
	fi

	y = -1;
	for(i : 0..(index-1)) {
		if 
		::freq[i] >= cont -> y = value[i]; break;
		::else -> skip;
		fi
	}

	printf("\n\n\n");
	if 
	::y == -1 -> printf("Unable to find results\n");
	::else -> printf("%d\n", y);
	fi
}
