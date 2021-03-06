GitHub.rules do
  rule do
    on :repo, 's12v/sandbox'
    on :label, 'question'
    action :slack, to: '#test', template: 'please_review'
  end

  rule do
    on :repo, 's12v/sandbox'
    on :release
    action :slack, to: '#test', template: 'new_release'
  end
end
