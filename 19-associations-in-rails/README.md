A Quick Note on Collection Select:
Collection select is looking for the following in order:

the method we want to call on "@building": architect_id
the collection we want to use to populate our dropdown with: Architect.all
the value method; what will show up in our params and as a value in our <option> tags: architect_instance.id
the text method; what will show up inside the option tag, what will the user see? architect_instance.name
