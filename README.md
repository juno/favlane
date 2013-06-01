# Favlane

Fetch your favorites and puts tweets only by specified user.

Twitter List Favorites API rate limit is 15/app, 15/user in 15 minutes.

## Usage

Create a new application at https://dev.twitter.com/apps .

Set env vars.

```shell
$ export CONSUMER_KEY='...' \
  CONSUMER_SECRET='...' \
  OAUTH_TOKEN='...' \
  OAUTH_TOKEN_SECRET='...'
```

Run script with target user screen_name.

```shell
$ bundle install
$ bundle exec ruby favlane.rb [username]
username: yay (at YYYY-MM-DD HH:mm:ss)
```
