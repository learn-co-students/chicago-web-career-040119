# Many to Many Relationships

## Outline

* Review Relationships (one to many => `has_many`, `belongs_to`)
* Expand on relationships to express many to many
  * We'll build out a **new** relationship and show how this concept builds on one to many.

## Recap

### Define

* _Model_ - is a blueprint == class; A class whose primary responsibility is to store data
* _Domain_ - what you're doing; The subject matter of the problem, (e.g., Learn's domain is online education)
* _Domain modeling_ - it's the blueprint of what you're doing; it's the process of modeling your domain; Creating models for your domain to represent real or abstract ideas (e.g., Learn's domain model includes modules, cohorts, assignments as well as their relationships)
* _Relationships_ - How one model or thing is connected to another model or thing
  * _One to many relationship_ - A relationship describing a single model that contains or keeps track of other models (a tree `has_many` leaves, an organism `has_many` cells, the universe `has_many` galaxies)
  * _Many to many relationship_ (today!)
  * `belongs_to`
  * `has_many`
  * `through`
* _Schema_ - A visual representation of your domain model (models, relationships, etc.)
* [_Single Source of Truth_](https://en.wikipedia.org/wiki/Single_source_of_truth) - The practice of structuring _models_ and _relationships_ such that every data element is stored exactly once; any possible linkages to this data element are by reference only
  * **Why?** - Ask yourself, in the _one to many relationship_ of country to citizen, is it easier for the country to know about all of its citizens or is it easier for a citizen to know the which country they belong to? So how does a country find out its citizens? It conducts a census (a method) that asks all the people in the country if they are a citizen!

_Why do we care so much about codifying and being really specific about the terminology of has-many/belongs-to?_ The terms are very powerful because we can use the same idea to describe relationships across many different types of domains. The relationship between artist and song, is the same as book and author, user and tweets, etc.
