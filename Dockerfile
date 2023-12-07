FROM nginx:alpine

RUN apk --update add npm make libsass sassc alpine-sdk libffi-dev openssl-dev py3-pip git

COPY . /build
WORKDIR /build

RUN npm install

RUN DATE=$(date +"%d. %m. %Y, %H:%M") ; sed -i "s/{builtAt}/$DATE/g" src/components/FdpFooter/index.vue
RUN VERSION=$(git describe --tags) ; sed -i "s/{version}/$VERSION/g" src/components/FdpFooter/index.vue

RUN npm run build

WORKDIR /
RUN mv /build/src /src
RUN mv /build/node_modules/bootstrap /src/~bootstrap
RUN mv /build/node_modules/bootstrap-vue /src/~bootstrap-vue
RUN mv /build/node_modules/prismjs /src/~prismjs
RUN mv /build/node_modules/vue-select /src/~vue-select
RUN mv /build/node_modules/vue2-datepicker /src/~vue2-datepicker

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/start.sh /start.sh

RUN rm -rf /usr/share/nginx/html
RUN mv /build/dist /usr/share/nginx/html
RUN mv /build/public /public

ARG fdp_app
ENV APP=$fdp_app

CMD ["/start.sh"]
