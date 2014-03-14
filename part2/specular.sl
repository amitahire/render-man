surface specular (
		float Ka = 0.5;
		float Ks = 0.5;
		float Kd = 0.5;
		float roughness = .02;
		float transparency = 0;
		float maxDepth = 5;
		)
	{

		point Pk = P;
		normal Nk = N;
		vector If = I;

		float curDepth = 0;
		rayinfo("depth", curDepth);

		normal Nf = normalize(faceforward (Nk, If));
		vector V = normalize (If);
		if(curDepth < maxDepth){
			vector D = reflect (If, Nf);
			D = normalize(D);
			color RC = trace(Pk, D);

			float isIn = 0;
			if(If.Nk > 0){
				isIn = 1;
			}
			color RC2 = 0;
			float Kr = 0.2;
			float Kt = 0.8;
			if(transparency > 0) {
				float eta = (isIn==1) ? transparency : 1/transparency;
				vector R = refract(If,Nf,eta);
				R = normalize(R);
				RC2 = trace(Pk, R);
			}
			float facingratio = -1 * V.Nf;
			float fresneleffect = 0.1 + pow(1 - facingratio, 3) * 0.9;
			Kr = fresneleffect;
			Kt = 1 - fresneleffect;
			Oi = Os;
			Ci = Os * Cs * (Kr * RC + Kt * RC2);
		}
		else{
			Oi = Os;
        	Ci = Os * Cs * (Ka * ambient () + Kd * diffuse(Nf) + Ks * specular (Nf, -V, roughness));
		}
	}