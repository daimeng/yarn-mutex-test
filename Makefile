all: pkga pkgb pkgc

mall: mpkga mpkgb mpkgc

pkga:
	cd a && yarn

mpkga:
	cd a && yarn --mutex file:../.yarn-mutex

pkgb:
	cd b && yarn

mpkgb:
	cd b && yarn --mutex file:../.yarn-mutex

pkgc:
	cd c && yarn

mpkgc:
	cd c && yarn --mutex file:../.yarn-mutex

cleana:
	cd a && rm -rf node_modules *.log && yarn cache clean

cleanb:
	cd b && rm -rf node_modules *.log && yarn cache clean

cleanc:
	cd c && rm -rf node_modules *.log && yarn cache clean

clean: cleana cleanb cleanc
