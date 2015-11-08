jQuery ->
  $('.datepicker').datepicker()
  $('.timepicker').timepicker()

  window.organizations = new Bloodhound(
    datumTokenizer: Bloodhound.tokenizers.whitespace
    queryTokenizer: Bloodhound.tokenizers.whitespace
    prefetch: '/organizations.json'
  )

  $('.typeahead').typeahead(null,
    name: 'organizations'
    source: organizations
  )

  $('.tt-query').css('background-color', '#fff')
