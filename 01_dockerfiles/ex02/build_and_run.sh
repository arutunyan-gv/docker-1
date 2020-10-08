cd /Users/solid/Dropbox/42/docker-1/01_dockerfiles/ex02
cd ft-rails
docker build -t ft-rails:on-build .
cd ..
docker build -t ex02 .
docker run -it --rm -p 3000:3000 ex02