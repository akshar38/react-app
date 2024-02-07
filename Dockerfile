FROM node:20

ENV PORT=3000 

WORKDIR /react-js
COPY . /react-js
RUN npm run build
EXPOSE ${PORT}
CMD ["npm", "start"]


