light shadowlight(
		float intensity = 1;
	    color lightcolor = 1;
    	point from = point "shader" (0,0,0);        /* light position */
		)
	{
		illuminate(from){
			float invSqr = L.L;
			Cl = intensity * lightcolor / invSqr;
			Cl *= transmission(Ps, from);
		}
	}