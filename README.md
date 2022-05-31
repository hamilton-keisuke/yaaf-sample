# README

This is [yaaf gem](https://github.com/rootstrap/yaaf) test.
This is only parent and child model. (Parent has_many :children, Child belongs_to :parent)

# Version

yaaf 2.2.0
rails 7.0.3

# How to run

1. Run Docker

```
$ make build
$ make up
$ make bash
```

2. Run db migrate in docker container

```
# rails db:migrate
```

3. Run Rails in docker container

```
# rails s -b 0.0.0.0
```

Then, you can show http://localhost:3000/
