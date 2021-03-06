FormRenderer.Validators.EmailValidator =
  # Keep in-sync with Screendoor
  VALID_REGEX: /^\s*([^@\s]{1,64})@((?:[-a-z0-9]+\.)+[a-z]{2,})\s*$/i

  validate: (model) ->
    unless model.get('value').match(FormRenderer.Validators.EmailValidator.VALID_REGEX)
      'email'
