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
		((P1 *)this)->rep = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 16
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->index = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 11: // STATE 19
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 14: // STATE 27
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 27
		;
		((P1 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 27
		;
		((P1 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 33
		;
	/* 0 */	((P1 *)this)->count = trpt->bup.oval;
		;
		;
		goto R999;

	case 18: // STATE 60
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 37
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 22: // STATE 49
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 24: // STATE 49
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 26: // STATE 49
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 49
		;
		((P1 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 49
		;
		((P1 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 55
		;
		now.value[ Index(((P1 *)this)->index, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 56
		;
		now.freq[ Index(((P1 *)this)->index, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 60
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->index = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 60
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 67
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 36: // STATE 70
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 37: // STATE 76
		goto R999;

	case 38: // STATE 84
		;
		((P1 *)this)->i = trpt->bup.ovals[2];
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 39: // STATE 84
		;
		((P1 *)this)->i = trpt->bup.ovals[2];
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 40: // STATE 84
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 42: // STATE 86
		;
	/* 1 */	((P1 *)this)->j = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->count = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 87
		;
		((P1 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 88
		;
		((P1 *)this)->count = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 93
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 93
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 47: // STATE 100
		goto R999;

	case 48: // STATE 104
		;
		((P1 *)this)->rep = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 107
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 52: // STATE 110
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 53: // STATE 115
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 115
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 56: // STATE 123
		;
		((P1 *)this)->y = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 129
		;
	/* 0 */	((P1 *)this)->j = trpt->bup.oval;
		;
		;
		goto R999;

	case 58: // STATE 135
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 59: // STATE 1
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 2
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 3
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 4
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 7
		;
	/* 0 */	((P0 *)this)->n = trpt->bup.oval;
		;
		;
		goto R999;

	case 64: // STATE 8
		;
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 10
		;
		now.results[ Index(((P0 *)this)->n, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;
	}

