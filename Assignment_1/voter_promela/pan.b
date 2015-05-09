	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 12
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 14
		;
		((P1 *)this)->cont = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 15
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 13: // STATE 18
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 23
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 23
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 44
		;
		((P1 *)this)->i = trpt->bup.ovals[2];
		((P1 *)this)->index = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 18: // STATE 37
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 37
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 44
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->index = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 21: // STATE 47
		;
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 24: // STATE 55
		;
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: // STATE 55
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 55
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 61
		;
	/* 0 */	((P1 *)this)->cont = trpt->bup.oval;
		;
		;
		goto R999;

	case 28: // STATE 88
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 65
		;
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 32: // STATE 77
		;
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 34: // STATE 77
		;
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 36: // STATE 77
		;
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 37: // STATE 77
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 77
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 83
		;
		((P1 *)this)->value[ Index(((P1 *)this)->index, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 88
		;
		((P1 *)this)->i = trpt->bup.ovals[2];
		((P1 *)this)->index = trpt->bup.ovals[1];
		((P1 *)this)->freq[ Index(((P1 *)this)->index, 3) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 41: // STATE 88
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 95
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 45: // STATE 98
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 111
		;
		((P1 *)this)->i = trpt->bup.ovals[2];
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 47: // STATE 111
		;
		((P1 *)this)->i = trpt->bup.ovals[2];
		((P1 *)this)->y = trpt->bup.ovals[1];
		((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 48: // STATE 111
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->y = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 50: // STATE 120
		;
		((P1 *)this)->i = trpt->bup.ovals[4];
		((P1 *)this)->cont = trpt->bup.ovals[3];
		((P1 *)this)->y = trpt->bup.ovals[2];
	/* 1 */	((P1 *)this)->y = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->cont = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 51: // STATE 120
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 120
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 53: // STATE 126
		goto R999;

	case 54: // STATE 127
		;
	/* 0 */	((P1 *)this)->y = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 56: // STATE 133
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 57: // STATE 1
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 2
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 3
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 4
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 7
		;
	/* 0 */	((P0 *)this)->n = trpt->bup.oval;
		;
		;
		goto R999;

	case 62: // STATE 8
		;
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 10
		;
		now.results[ Index(((P0 *)this)->n, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;
	}

