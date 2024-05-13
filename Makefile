SAC2CFLAGS = -v2 -O3 -ecc -check tc -maxoptcyc 10 -nouar -noedfa

tier1:
	sac2c $(SAC2CFLAGS) Tier1.sac
	sac2c $(SAC2CFLAGS) -DTIER=1 mandelbrot.sac

tier2:
	sac2c $(SAC2CFLAGS) Tier2.sac
	sac2c $(SAC2CFLAGS) -DTIER=2 mandelbrot.sac

tier3:
	sac2c $(SAC2CFLAGS) Tier3.sac
	sac2c $(SAC2CFLAGS) -DTIER=3 mandelbrot.sac
