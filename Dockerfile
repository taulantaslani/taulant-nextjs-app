FROM node

WORKDIR /usr/taulant-nextjs-app/

COPY package*.json /usr/taulant-nextjs-app/

RUN npm install

COPY . /usr/taulant-nextjs-app/

RUN npm run build

COPY . /usr/taulant-nextjs-app/

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]