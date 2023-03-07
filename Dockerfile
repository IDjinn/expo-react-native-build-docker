FROM  reactnativecommunity/react-native-android
WORKDIR /app
COPY . .

RUN apt-get update && apt-get -y upgrade

RUN npm i -g yarn 
RUN yarn global add expo-cli expo eas-cli
RUN yarn cache clean
RUN yarn

EXPOSE 1900
EXPOSE 1902
