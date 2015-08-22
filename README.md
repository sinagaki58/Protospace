

# Protospace

## tabel design

### users

  - name
  - email
  - password
  - member
  - profile
  - works
  - avatar

### prototypes

  - title
  - catch_copy
  - concept
  - user_id

### thumbnail
  - image
  - prototype_id

### tags

  - tag
  - prototype_id

### comments

  - comment
  - prototype_id
  - user_id

## association

  users      has_many prototypes  
             has_many comments

  prototypes has_many comments  
             has_many images
             has_and_belongs_to_many tags
