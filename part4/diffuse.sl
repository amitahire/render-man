surface diffuse( float Ka=1, Kd=1, samples = 1024, intensity = 1.0, maxvariation = 0.01; 
				string envmap = "")
{
	normal Nn = faceforward(normalize(N), I);
	Ci = diffuse(Nn) + intensity * 
			indirectdiffuse(P, Nn, samples, 
						"maxvariation", maxvariation, "environmentmap", envmap);
	Oi = Os;
	Ci *= Os * Cs;
}