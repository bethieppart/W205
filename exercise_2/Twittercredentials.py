import tweepy

consumer_key = "YourConsumerkey";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "YourConsumerSecret";
#eg: consumer_secret = "IjB0URRq2GFsqAixoHQnZsdxuG6EsQLxnW5vJBDerCen6lCgVQ";

access_token = "YourAcessToken";
#eg: access_token = "2486834322-2veVLF4cUYUe1HYNkzLocw2htBKZJEz39XFZ9Rp";

access_token_secret = "YourTokenSecret";
#eg: access_token_secret = "QkmcW3uPmoV6xx6lPUKSxLL9tFpCArBHZ9wiBtEsC25mW";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



