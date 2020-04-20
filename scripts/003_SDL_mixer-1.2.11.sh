wget --continue http://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-1.2.11.tar.gz || { exit 1; }

tar xfvz ./SDL_mixer-1.2.11.tar.gz || { exit 1; }

cd SDL_mixer-1.2.11 || { exit 1; }

cp ../config.sub ../config.guess build-scripts/ || { exit 1; }

cat ../patches/SDL_mixer-1.2.11.patch | patch -p1 || { exit 1; }

make && make install || { exit 1; }
