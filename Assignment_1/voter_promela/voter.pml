#define N 3
#define range 1
int results[N], value[N], freq[N]; 

proctype P(int n) {
	short temp;

	//0		- default
	//2-3	- correct result
	//5		- incorrect result

	if
	:: temp = 2;
	:: temp = 3;
	:: temp = 5;
	:: temp = (false);
	fi

	if
	:: n == -1 -> results[_pid-1] = temp;
	:: else -> results[n] = temp;
	fi
}


inline voter(index, i, j, count) {
	//calculate the frequency of each result
	index = 0;
	for(i : 0..(N-1)) {
		//check if value already viewed
		count = 0;
		for(j : 0..(index-1)) {
			if
			:: results[i] == value[j] -> count = 1;
			:: else -> skip;
			fi
		}

		if
		::count == 1 -> skip;
		::else -> 	count = 0;
					for(j : 0..(N-1)) {
					if
					:: results[i] == results[j] -> count = count + 1;
					:: results[i] == results[j] - range -> count = count + 1;
					:: results[i] == results[j] + range -> count = count + 1;
					:: else -> skip;
					fi
					}
					value[index] = results[i];
					freq[index] = count;
					index = index + 1;
		fi
	}

	printf("Results: ")
	//prints just for test
	for(i : 0..(N-1)) {
		printf("%d ", results[i]);
	}
	printf("\n");
	// printf("values and frequencies (%d)\n", index);
	// for(i : 0..(index-1)) {
	// 	 printf("%d: %d\n", value[i], freq[i]);
	// }


	//display the most frequent result if its frequency is equal or bigger than half of the total elements
	if
	:: N%2 == 0 -> count = N/2;
	:: else -> count = N/2 + 1;
	fi

	j = 999;
	for(i : 0..(index-1)) {
		if 
		::freq[i] >= count && value[i] < j -> j = value[i]; count = freq[i];
		::else -> skip;
		fi
	}
}

init {
	int i, y, j, count, index, rep;

	//first execution
	atomic {
		for(i : 0..(N-1)) {
			run P(-1);
		}
	}

	(_nr_pr == 1) || (timeout);


	//take care of timeouts
	//max more two executions
	for(y : 0..1) {
		rep = 0;

		voter(index, i, j, count);
		if
		::j != 999 && j != 0 -> break;
		::else -> rep = 1;
		fi

		atomic {
			for(i : 0..(N-1)) {
				if
				//ñ vale a pena correr processos com timeout quando já se tem uma resposta valida
				//:: results[i] == 0 -> run P(i);
				:: rep == 1 -> run P(i);
				:: else -> skip;
				fi
			}
		}

		(_nr_pr == 1) || (timeout);
		assert(j==0 || j==999)
	}

	//timeout || resultado ñ maioritario || resposta certa || resposta certa || resposta errada
	assert(j==0 || j==999 || j==2 || j==3 || j==5)

	if
	::j == 999 || j == 0 -> printf("\n\nFinal Result:\tUnable to find any result\n");
	::else -> printf("\n\nFinal Result:\t%d\n", j); ;
	fi
}
