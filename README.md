### [What was done?](https://github.com/andrerferrer/eyeq-table/commit/43fd992bc995e62d287fb62ad77b585483369fb2)

### If you want to check it locally
```sh
repo_name="eyeq-table"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
cd
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can create a new session and add some items. Then, go to http://localhost:3000/tests/show and see it there
```

And we're good to go 🤓

Good Luck and Have Fun
