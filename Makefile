SAC2CFLAGS = -v2 -O3 -specmode aks -maxwlur 9 -nouar -t mt_pth

clean:
	rm -rf host/
	rm -rf tree/

tier1:
	sac2c $(SAC2CFLAGS) Tier1.sac
	sac2c $(SAC2CFLAGS) -DTIER=1 mandelbrot.sac

tier2:
	sac2c $(SAC2CFLAGS) Tier2.sac
	sac2c $(SAC2CFLAGS) -DTIER=2 mandelbrot.sac

tier3:
	sac2c $(SAC2CFLAGS) Tier3.sac
	sac2c $(SAC2CFLAGS) -DTIER=3 mandelbrot.sac

tier4:
	sac2c $(SAC2CFLAGS) Tier4.sac
	sac2c $(SAC2CFLAGS) -DTIER=4 mandelbrot.sac

all:
	sac2c $(SAC2CFLAGS) Tier1.sac
	sac2c $(SAC2CFLAGS) Tier2.sac
	sac2c $(SAC2CFLAGS) Tier3.sac
	sac2c $(SAC2CFLAGS) Tier4.sac
	sac2c $(SAC2CFLAGS) -DTIER=4 mandelbrot.sac
