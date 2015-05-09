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
	case 3: // STATE 1 - voter.pml:32 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - voter.pml:32 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - voter.pml:33 - [(run P(-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0,  -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - voter.pml:32 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 11 - voter.pml:37 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - voter.pml:42 - [y = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = 0;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - voter.pml:42 - [((y<=1))] (29:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((P1 *)this)->y<=1)))
			continue;
		/* merge: cont = 0(0, 14, 29) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->cont;
		((P1 *)this)->cont = 0;
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 15 - voter.pml:45 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 16 - voter.pml:45 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 17 - voter.pml:47 - [((results[i]==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 18 - voter.pml:47 - [(run P(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 20 - voter.pml:48 - [cont = (cont+1)] (0:26:2 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = (((P1 *)this)->cont+1);
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(26, 22, 26) */
		reached[1][22] = 1;
		;
		/* merge: i = (i+1)(26, 23, 26) */
		reached[1][23] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[1][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 23 - voter.pml:45 - [i = (i+1)] (0:26:1 - 3)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[1][27] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 30 - voter.pml:53 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 31 - voter.pml:56 - [((cont==3))] (91:0:3 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((P1 *)this)->cont==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cont */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->cont = 0;
		/* merge: goto :b1(91, 32, 91) */
		reached[1][32] = 1;
		;
		/* merge: index = 0(91, 43, 91) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->index;
		((P1 *)this)->index = 0;
#ifdef VAR_RANGES
		logval(":init::index", ((P1 *)this)->index);
#endif
		;
		/* merge: i = 0(91, 44, 91) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 92, 91) */
		reached[1][92] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: // STATE 34 - voter.pml:57 - [(1)] (40:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(40, 36, 40) */
		reached[1][36] = 1;
		;
		/* merge: y = (y+1)(40, 37, 40) */
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 37 - voter.pml:42 - [y = (y+1)] (0:40:1 - 2)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 20: // STATE 43 - voter.pml:63 - [index = 0] (0:91:2 - 5)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->index;
		((P1 *)this)->index = 0;
#ifdef VAR_RANGES
		logval(":init::index", ((P1 *)this)->index);
#endif
		;
		/* merge: i = 0(91, 44, 91) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 92, 91) */
		reached[1][92] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 45 - voter.pml:64 - [((i<=(3-1)))] (58:0:2 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		/* merge: cont = 0(58, 46, 58) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = 0;
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: y = 0(58, 47, 58) */
		reached[1][47] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = 0;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 59, 58) */
		reached[1][59] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 48 - voter.pml:67 - [((y<=(index-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (!((((P1 *)this)->y<=(((P1 *)this)->index-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 49 - voter.pml:69 - [((results[i]==value[y]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==((P1 *)this)->value[ Index(((P1 *)this)->y, 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 50 - voter.pml:69 - [cont = 1] (0:58:2 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = 1;
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(58, 54, 58) */
		reached[1][54] = 1;
		;
		/* merge: y = (y+1)(58, 55, 58) */
		reached[1][55] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 59, 58) */
		reached[1][59] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 25: // STATE 52 - voter.pml:70 - [(1)] (58:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(58, 54, 58) */
		reached[1][54] = 1;
		;
		/* merge: y = (y+1)(58, 55, 58) */
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 59, 58) */
		reached[1][59] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: // STATE 55 - voter.pml:67 - [y = (y+1)] (0:58:1 - 3)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 59, 58) */
		reached[1][59] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 61 - voter.pml:75 - [((cont==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!((((P1 *)this)->cont==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cont */  (trpt+1)->bup.oval = ((P1 *)this)->cont;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->cont = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 62 - voter.pml:75 - [(1)] (91:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(91, 87, 91) */
		reached[1][87] = 1;
		;
		/* merge: i = (i+1)(91, 88, 91) */
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 92, 91) */
		reached[1][92] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 29: // STATE 64 - voter.pml:76 - [cont = 0] (0:80:2 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = 0;
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: y = 0(80, 65, 80) */
		reached[1][65] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = 0;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 81, 80) */
		reached[1][81] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 66 - voter.pml:77 - [((y<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!((((P1 *)this)->y<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 67 - voter.pml:79 - [((results[i]==results[y]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==now.results[ Index(((P1 *)this)->y, 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 68 - voter.pml:79 - [cont = (cont+1)] (0:80:2 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = (((P1 *)this)->cont+1);
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(80, 76, 80) */
		reached[1][76] = 1;
		;
		/* merge: y = (y+1)(80, 77, 80) */
		reached[1][77] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 81, 80) */
		reached[1][81] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 33: // STATE 69 - voter.pml:80 - [((results[i]==(results[y]-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==(now.results[ Index(((P1 *)this)->y, 3) ]-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 70 - voter.pml:80 - [cont = (cont+1)] (0:80:2 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = (((P1 *)this)->cont+1);
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(80, 76, 80) */
		reached[1][76] = 1;
		;
		/* merge: y = (y+1)(80, 77, 80) */
		reached[1][77] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 81, 80) */
		reached[1][81] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 35: // STATE 71 - voter.pml:81 - [((results[i]==(results[y]+1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!((now.results[ Index(((P1 *)this)->i, 3) ]==(now.results[ Index(((P1 *)this)->y, 3) ]+1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 72 - voter.pml:81 - [cont = (cont+1)] (0:80:2 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = (((P1 *)this)->cont+1);
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(80, 76, 80) */
		reached[1][76] = 1;
		;
		/* merge: y = (y+1)(80, 77, 80) */
		reached[1][77] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 81, 80) */
		reached[1][81] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: // STATE 74 - voter.pml:82 - [(1)] (80:0:1 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(80, 76, 80) */
		reached[1][76] = 1;
		;
		/* merge: y = (y+1)(80, 77, 80) */
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 81, 80) */
		reached[1][81] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 38: // STATE 77 - voter.pml:77 - [y = (y+1)] (0:80:1 - 5)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->y;
		((P1 *)this)->y = (((P1 *)this)->y+1);
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: .(goto)(0, 81, 80) */
		reached[1][81] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 39: // STATE 83 - voter.pml:85 - [value[index] = results[i]] (0:0:1 - 3)
		IfNotBlocked
		reached[1][83] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->value[ Index(((P1 *)this)->index, 3) ];
		((P1 *)this)->value[ Index(((P1 *)this)->index, 3) ] = now.results[ Index(((P1 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval(":init::value[:init::index]", ((P1 *)this)->value[ Index(((P1 *)this)->index, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 84 - voter.pml:86 - [freq[index] = cont] (0:91:3 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->freq[ Index(((P1 *)this)->index, 3) ];
		((P1 *)this)->freq[ Index(((P1 *)this)->index, 3) ] = ((P1 *)this)->cont;
#ifdef VAR_RANGES
		logval(":init::freq[:init::index]", ((P1 *)this)->freq[ Index(((P1 *)this)->index, 3) ]);
#endif
		;
		/* merge: index = (index+1)(91, 85, 91) */
		reached[1][85] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->index;
		((P1 *)this)->index = (((P1 *)this)->index+1);
#ifdef VAR_RANGES
		logval(":init::index", ((P1 *)this)->index);
#endif
		;
		/* merge: .(goto)(91, 87, 91) */
		reached[1][87] = 1;
		;
		/* merge: i = (i+1)(91, 88, 91) */
		reached[1][88] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 92, 91) */
		reached[1][92] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 41: // STATE 88 - voter.pml:64 - [i = (i+1)] (0:91:1 - 3)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 92, 91) */
		reached[1][92] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 42: // STATE 94 - voter.pml:91 - [printf('Results: ')] (0:101:1 - 3)
		IfNotBlocked
		reached[1][94] = 1;
		Printf("Results: ");
		/* merge: i = 0(101, 95, 101) */
		reached[1][95] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[1][102] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 96 - voter.pml:93 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!((((P1 *)this)->i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 97 - voter.pml:94 - [printf('%d ',results[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		Printf("%d ", now.results[ Index(((P1 *)this)->i, 3) ]);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 98 - voter.pml:93 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 104 - voter.pml:104 - [(((3%2)==0))] (123:0:3 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((3%2)==0)))
			continue;
		/* merge: cont = (3/2)(123, 105, 123) */
		reached[1][105] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = (3/2);
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(123, 109, 123) */
		reached[1][109] = 1;
		;
		/* merge: y = 999(123, 110, 123) */
		reached[1][110] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = 999;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: i = 0(123, 111, 123) */
		reached[1][111] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 124, 123) */
		reached[1][124] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 47: // STATE 107 - voter.pml:105 - [cont = ((3/2)+1)] (0:123:3 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
		((P1 *)this)->cont = ((3/2)+1);
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(123, 109, 123) */
		reached[1][109] = 1;
		;
		/* merge: y = 999(123, 110, 123) */
		reached[1][110] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
		((P1 *)this)->y = 999;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: i = 0(123, 111, 123) */
		reached[1][111] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 124, 123) */
		reached[1][124] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 48: // STATE 110 - voter.pml:108 - [y = 999] (0:123:2 - 3)
		IfNotBlocked
		reached[1][110] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->y;
		((P1 *)this)->y = 999;
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: i = 0(123, 111, 123) */
		reached[1][111] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 124, 123) */
		reached[1][124] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 49: // STATE 112 - voter.pml:109 - [((i<=(index-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		if (!((((P1 *)this)->i<=(((P1 *)this)->index-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 113 - voter.pml:111 - [(((freq[i]>=cont)&&(value[i]<y)))] (123:0:5 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!(((((P1 *)this)->freq[ Index(((P1 *)this)->i, 3) ]>=((P1 *)this)->cont)&&(((P1 *)this)->value[ Index(((P1 *)this)->i, 3) ]<((P1 *)this)->y))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cont */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->cont;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->cont = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: y */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->y;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->y = 0;
		/* merge: y = value[i](123, 114, 123) */
		reached[1][114] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->y;
		((P1 *)this)->y = ((P1 *)this)->value[ Index(((P1 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval(":init::y", ((P1 *)this)->y);
#endif
		;
		/* merge: cont = freq[i](123, 115, 123) */
		reached[1][115] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)this)->cont;
		((P1 *)this)->cont = ((P1 *)this)->freq[ Index(((P1 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval(":init::cont", ((P1 *)this)->cont);
#endif
		;
		/* merge: .(goto)(123, 119, 123) */
		reached[1][119] = 1;
		;
		/* merge: i = (i+1)(123, 120, 123) */
		reached[1][120] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 124, 123) */
		reached[1][124] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 51: // STATE 117 - voter.pml:112 - [(1)] (123:0:1 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(123, 119, 123) */
		reached[1][119] = 1;
		;
		/* merge: i = (i+1)(123, 120, 123) */
		reached[1][120] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 124, 123) */
		reached[1][124] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 52: // STATE 120 - voter.pml:109 - [i = (i+1)] (0:123:1 - 3)
		IfNotBlocked
		reached[1][120] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 124, 123) */
		reached[1][124] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 53: // STATE 126 - voter.pml:116 - [printf('\\n\\nFinal Result: ')] (0:131:0 - 3)
		IfNotBlocked
		reached[1][126] = 1;
		Printf("\n\nFinal Result: ");
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 127 - voter.pml:118 - [((y==999))] (133:0:1 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!((((P1 *)this)->y==999)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: y */  (trpt+1)->bup.oval = ((P1 *)this)->y;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->y = 0;
		/* merge: printf('Unable to find results\\n')(0, 128, 133) */
		reached[1][128] = 1;
		Printf("Unable to find results\n");
		/* merge: .(goto)(0, 132, 133) */
		reached[1][132] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 55: // STATE 130 - voter.pml:119 - [printf('%d\\n',y)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		Printf("%d\n", ((P1 *)this)->y);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 133 - voter.pml:121 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][133] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 57: // STATE 1 - voter.pml:13 - [temp = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 2;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 2 - voter.pml:14 - [temp = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 3;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 3 - voter.pml:15 - [temp = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = 5;
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 4 - voter.pml:16 - [temp = timeout] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = ((trpt->tau)&1);
#ifdef VAR_RANGES
		logval("P:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 7 - voter.pml:20 - [((n==-(1)))] (0:0:1 - 1)
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
	case 62: // STATE 8 - voter.pml:20 - [results[(_pid-1)] = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ];
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = ((P0 *)this)->temp;
#ifdef VAR_RANGES
		logval("results[(_pid-1)]", now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 10 - voter.pml:21 - [results[n] = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.results[ Index(((P0 *)this)->n, 3) ];
		now.results[ Index(((P0 *)this)->n, 3) ] = ((P0 *)this)->temp;
#ifdef VAR_RANGES
		logval("results[P:n]", now.results[ Index(((P0 *)this)->n, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 13 - voter.pml:23 - [-end-] (0:0:0 - 3)
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

