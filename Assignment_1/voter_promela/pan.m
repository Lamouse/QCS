#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - voter.pml:88 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - voter.pml:88 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - voter.pml:89 - [(run P(-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0,  -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - voter.pml:88 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 11 - voter.pml:93 - [(((_nr_pr==1)||timeout))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((((int)now._nr_pr)==1)||((trpt->tau)&1))))
			continue;
		_m = 1; goto P999; /* 0 */
	case 8: // STATE 12 - voter.pml:98 - [y = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = 0;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - voter.pml:98 - [((y<=1))] (99:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((P1 *)this)->y<=1)))
			continue;
		/* merge: rep = 0(0, 14, 99) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->rep;
		((P1 *)this)->rep = 0;
#ifdef VAR_RANGES
		logval(":init::rep", ((P1 *)this)->rep);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 15 - voter.pml:28 - [index = 0] (0:63:2 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->index;
		((P1 *)this)->index = 0;
#ifdef VAR_RANGES
		logval(":init::index", ((P1 *)this)->index);
#endif
		;
		/* merge: i = 0(63, 16, 63) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[1][64] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 17 - voter.pml:29 - [((i<=(3-1)))] (30:0:2 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		/* merge: count = 0(30, 18, 30) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = 0;
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: j = 0(30, 19, 30) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 12: // STATE 20 - voter.pml:32 - [((j<=(index-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((P1 *)this)->j<=(((P1 *)this)->index-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 21 - voter.pml:34 - [((results[i]==value[j]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==now.value[ Index(((P1 *)this)->j, 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 22 - voter.pml:34 - [count = 1] (0:30:2 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = 1;
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: .(goto)(30, 26, 30) */
		reached[1][26] = 1;
		;
		/* merge: j = (j+1)(30, 27, 30) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 24 - voter.pml:35 - [(1)] (30:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(30, 26, 30) */
		reached[1][26] = 1;
		;
		/* merge: j = (j+1)(30, 27, 30) */
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 27 - voter.pml:32 - [j = (j+1)] (0:30:1 - 3)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 17: // STATE 33 - voter.pml:40 - [((count==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((P1 *)this)->count==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: count */  (trpt+1)->bup.oval = ((P1 *)this)->count;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->count = 0;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 34 - voter.pml:40 - [(1)] (63:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(63, 59, 63) */
		reached[1][59] = 1;
		;
		/* merge: i = (i+1)(63, 60, 63) */
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[1][64] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 36 - voter.pml:41 - [count = 0] (0:52:2 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = 0;
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: j = 0(52, 37, 52) */
		reached[1][37] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 38 - voter.pml:42 - [((j<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!((((P1 *)this)->j<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 39 - voter.pml:44 - [((results[i]==results[j]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==now.results[ Index(((P1 *)this)->j, 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 40 - voter.pml:44 - [count = (count+1)] (0:52:2 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = (((P1 *)this)->count+1);
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: .(goto)(52, 48, 52) */
		reached[1][48] = 1;
		;
		/* merge: j = (j+1)(52, 49, 52) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 23: // STATE 41 - voter.pml:45 - [((results[i]==(results[j]-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==(now.results[ Index(((P1 *)this)->j, 3) ]-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 42 - voter.pml:45 - [count = (count+1)] (0:52:2 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = (((P1 *)this)->count+1);
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: .(goto)(52, 48, 52) */
		reached[1][48] = 1;
		;
		/* merge: j = (j+1)(52, 49, 52) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 25: // STATE 43 - voter.pml:46 - [((results[i]==(results[j]+1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==(now.results[ Index(((P1 *)this)->j, 3) ]+1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 44 - voter.pml:46 - [count = (count+1)] (0:52:2 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = (((P1 *)this)->count+1);
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: .(goto)(52, 48, 52) */
		reached[1][48] = 1;
		;
		/* merge: j = (j+1)(52, 49, 52) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 27: // STATE 46 - voter.pml:47 - [(1)] (52:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(52, 48, 52) */
		reached[1][48] = 1;
		;
		/* merge: j = (j+1)(52, 49, 52) */
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 28: // STATE 49 - voter.pml:42 - [j = (j+1)] (0:52:1 - 5)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 55 - voter.pml:50 - [value[index] = results[i]] (0:0:1 - 3)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = now.value[ Index(((P1 *)this)->index, 3) ];
		now.value[ Index(((P1 *)this)->index, 3) ] = now.results[ Index(((P1 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval("value[:init::index]", now.value[ Index(((P1 *)this)->index, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 56 - voter.pml:51 - [freq[index] = count] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = now.freq[ Index(((P1 *)this)->index, 3) ];
		now.freq[ Index(((P1 *)this)->index, 3) ] = ((P1 *)this)->count;
#ifdef VAR_RANGES
		logval("freq[:init::index]", now.freq[ Index(((P1 *)this)->index, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 57 - voter.pml:52 - [index = (index+1)] (0:63:2 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->index;
		((P1 *)this)->index = (((P1 *)this)->index+1);
#ifdef VAR_RANGES
		logval(":init::index", ((P1 *)this)->index);
#endif
		;
		/* merge: .(goto)(63, 59, 63) */
		reached[1][59] = 1;
		;
		/* merge: i = (i+1)(63, 60, 63) */
		reached[1][60] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[1][64] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 60 - voter.pml:29 - [i = (i+1)] (0:63:1 - 3)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[1][64] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 66 - voter.pml:56 - [printf('Results: ')] (0:73:1 - 3)
		IfNotBlocked
		reached[1][66] = 1;
		Printf("Results: ");
		/* merge: i = 0(73, 67, 73) */
		reached[1][67] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 68 - voter.pml:58 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 69 - voter.pml:59 - [printf('%d ',results[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		Printf("%d ", now.results[ Index(((P1 *)this)->i, 3) ]);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 70 - voter.pml:58 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 76 - voter.pml:61 - [printf('\\n')] (0:81:0 - 3)
		IfNotBlocked
		reached[1][76] = 1;
		Printf("\n");
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 77 - voter.pml:70 - [(((3%2)==0))] (96:0:3 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (!(((3%2)==0)))
			continue;
		/* merge: count = (3/2)(96, 78, 96) */
		reached[1][78] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = (3/2);
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: .(goto)(96, 82, 96) */
		reached[1][82] = 1;
		;
		/* merge: j = 999(96, 83, 96) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = 999;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: i = 0(96, 84, 96) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 97, 96) */
		reached[1][97] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 80 - voter.pml:71 - [count = ((3/2)+1)] (0:96:3 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
		((P1 *)this)->count = ((3/2)+1);
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		/* merge: .(goto)(96, 82, 96) */
		reached[1][82] = 1;
		;
		/* merge: j = 999(96, 83, 96) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = 999;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: i = 0(96, 84, 96) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 97, 96) */
		reached[1][97] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 40: // STATE 83 - voter.pml:74 - [j = 999] (0:96:2 - 3)
		IfNotBlocked
		reached[1][83] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->j;
		((P1 *)this)->j = 999;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: i = 0(96, 84, 96) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 97, 96) */
		reached[1][97] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 85 - voter.pml:75 - [((i<=(index-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		if (!((((P1 *)this)->i<=(((P1 *)this)->index-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 86 - voter.pml:77 - [(((freq[i]>=count)&&(value[i]<j)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((now.freq[ Index(((P1 *)this)->i, 3) ]>=((P1 *)this)->count)&&(now.value[ Index(((P1 *)this)->i, 3) ]<((P1 *)this)->j))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: count */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->count;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->count = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->j = 0;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 87 - voter.pml:77 - [j = value[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j = now.value[ Index(((P1 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 88 - voter.pml:77 - [count = freq[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->count;
		((P1 *)this)->count = now.freq[ Index(((P1 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval(":init::count", ((P1 *)this)->count);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 90 - voter.pml:78 - [(1)] (96:0:1 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(96, 92, 96) */
		reached[1][92] = 1;
		;
		/* merge: i = (i+1)(96, 93, 96) */
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 97, 96) */
		reached[1][97] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: // STATE 93 - voter.pml:75 - [i = (i+1)] (0:96:1 - 3)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 97, 96) */
		reached[1][97] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 47: // STATE 100 - voter.pml:103 - [(((j!=999)&&(j!=0)))] (134:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!(((((P1 *)this)->j!=999)&&(((P1 *)this)->j!=0))))
			continue;
		/* merge: goto :b1(134, 101, 134) */
		reached[1][101] = 1;
		;
		/* merge: assert((((((j==0)||(j==999))||(j==2))||(j==3))||(j==5)))(134, 129, 134) */
		reached[1][129] = 1;
		spin_assert((((((((P1 *)this)->j==0)||(((P1 *)this)->j==999))||(((P1 *)this)->j==2))||(((P1 *)this)->j==3))||(((P1 *)this)->j==5)), "(((((j==0)||(j==999))||(j==2))||(j==3))||(j==5))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 103 - voter.pml:104 - [rep = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->rep;
		((P1 *)this)->rep = 1;
#ifdef VAR_RANGES
		logval(":init::rep", ((P1 *)this)->rep);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 106 - voter.pml:108 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 107 - voter.pml:108 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 108 - voter.pml:112 - [((rep==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		if (!((((P1 *)this)->rep==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 109 - voter.pml:112 - [(run P(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 111 - voter.pml:113 - [(1)] (117:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(117, 113, 117) */
		reached[1][113] = 1;
		;
		/* merge: i = (i+1)(117, 114, 117) */
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 118, 117) */
		reached[1][118] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 54: // STATE 114 - voter.pml:108 - [i = (i+1)] (0:117:1 - 3)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 118, 117) */
		reached[1][118] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 55: // STATE 121 - voter.pml:118 - [(((_nr_pr==1)||timeout))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		if (!(((((int)now._nr_pr)==1)||((trpt->tau)&1))))
			continue;
		_m = 1; goto P999; /* 0 */
	case 56: // STATE 122 - voter.pml:119 - [assert(((j==0)||(j==999)))] (0:126:1 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		spin_assert(((((P1 *)this)->j==0)||(((P1 *)this)->j==999)), "((j==0)||(j==999))", II, tt, t);
		/* merge: y = (y+1)(126, 123, 126) */
		reached[1][123] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 129 - voter.pml:123 - [assert((((((j==0)||(j==999))||(j==2))||(j==3))||(j==5)))] (0:134:0 - 5)
		IfNotBlocked
		reached[1][129] = 1;
		spin_assert((((((((P1 *)this)->j==0)||(((P1 *)this)->j==999))||(((P1 *)this)->j==2))||(((P1 *)this)->j==3))||(((P1 *)this)->j==5)), "(((((j==0)||(j==999))||(j==2))||(j==3))||(j==5))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 130 - voter.pml:126 - [(((j==999)||(j==0)))] (136:0:1 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		if (!(((((P1 *)this)->j==999)||(((P1 *)this)->j==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.oval = ((P1 *)this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->j = 0;
		/* merge: printf('\\n\\nFinal Result:\\tUnable to find any result\\n')(0, 131, 136) */
		reached[1][131] = 1;
		Printf("\n\nFinal Result:\tUnable to find any result\n");
		/* merge: .(goto)(0, 135, 136) */
		reached[1][135] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 133 - voter.pml:127 - [printf('\\n\\nFinal Result:\\t%d\\n',j)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		Printf("\n\nFinal Result:\t%d\n", ((P1 *)this)->j);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 136 - voter.pml:129 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][136] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 61: // STATE 1 - voter.pml:13 - [temp = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 2;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 2 - voter.pml:14 - [temp = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 3;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 3 - voter.pml:15 - [temp = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 5;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 4 - voter.pml:16 - [temp = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 0;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 7 - voter.pml:20 - [((n==-(1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)this)->n== -(1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: n */  (trpt+1)->bup.oval = ((P0 *)this)->n;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->n = 0;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 8 - voter.pml:20 - [results[(_pid-1)] = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ];
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = ((P0 *)this)->temp;
#ifdef VAR_RANGES
		logval("results[(_pid-1)]", now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 10 - voter.pml:21 - [results[n] = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.results[ Index(((P0 *)this)->n, 3) ];
		now.results[ Index(((P0 *)this)->n, 3) ] = ((P0 *)this)->temp;
#ifdef VAR_RANGES
		logval("results[P:n]", now.results[ Index(((P0 *)this)->n, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 13 - voter.pml:23 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

