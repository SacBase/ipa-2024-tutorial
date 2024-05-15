SAC2CFLAGS = -v2 -maxwlur 25 -nouar

all: seq mt

seq: tier1 tier2 tier3 tier4
mt: tier1_mt tier2_mt tier3_mt tier4_mt

tier%: Tier%.sac mandelbrot.sac
	sac2c $(SAC2CFLAGS) Tier$*.sac
	sac2c $(SAC2CFLAGS) -DTIER=$* mandelbrot.sac -o $@

tier%_mt: Tier%.sac mandelbrot.sac
	sac2c $(SAC2CFLAGS) -t mt_pth Tier$*.sac
	sac2c $(SAC2CFLAGS) -t mt_pth -DTIER=$* mandelbrot.sac -o $@

clean:
	$(RM) tier*
	$(RM) -r host tree
