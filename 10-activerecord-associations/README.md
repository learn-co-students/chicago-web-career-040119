### Connecting Models to ActiveRecord

- Our models (Ruby classes) appear in `app/models`
  - **MAJOR KEY 🔑** convention is to have the model class name singular and the sql table plural––
  ```ruby
  class Trainer < ActiveRecord::Base
  end
  ```
  but the table is called `trainers`
- Since our Ruby classes inherit from ActiveRecord, we have access to AR methods

  - We can use `Trainer.create(name: 'John Kavanagh')` to both **save our trainer to the db** and **create a ruby object with that same data**
  - How do we suddenly know which attributes our trainer is supposed to have?

- A boxer belongs to a trainer, so we need to create it with an trainer_id: `Boxer.create(name: 'Cris Cyborg', trainer_id: 1)`

- How can we associate a boxer with an author and vice-versa?

```ruby
class Boxer < ActiveRecord::Base
  def trainer
    # Trainer.all.find{ |trainer| trainer.id == self.trainer_id }
    # OR use AR .find
    Trainer.find(self.trainer_id)
  end
end
#...
class Trainer < ActiveRecord::Base
  def boxers
    # Boxer.all.select{|boxer| boxer.trainer_id == self.id}
    # OR use AR .where
    Trainer.where(trainer_id: self.id)
  end
end
```

## What About a Better Way™️

- ActiveRecord Macros
  - Boxer model: `belongs_to :trainer`
  - Trainer model `has_many :boxers`
- These macros provide **even more** methods, like `boxer_instance.trainer` and `trainer_instance.boxers`
  - **Major Key🔑**––since a boxer belongs_to a trainer it should have ONE trainer. Therefore the method is `.trainer`. A trainer HAS MANY boxers, therefore the method is `.boxers` pay attention to what is singular and what is plural.

### Important Methods from ActiveRecord

- Model.new
  - creates a new **RUBY** instance in local memory without persisting to the database
- Model\#save
  - inserts or updates a **RUBY** instance to the db
- Model.create
  - Model.new + Model\#save
  - A class method that creates a new **RUBY** instance AND saves it to the database
- Model.all
  - returns all instances (we wrote this by hand a million times)
- Model.first
  - instance with the lowest ID in the db
- Model.find
  - Finds a record by id and returns a Ruby instance––`Boxer.find(1)` returns the boxer with an id of 1
- Model.find_by\({ attribute: value }\)
  - can find by one attribute-value pair or multiple
  - `Boxer.find_by(name: 'Mike Tyson')` will return the boxer with a name of 'Mike Tyson'

[Active Record Docs](http://edgeguides.rubyonrails.org/active_record_migrations.html#using-the-up-down-methods)
