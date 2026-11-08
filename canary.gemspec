Gem::Specification.new do |spec|
  spec.name = "dependabot-probe-canary"
  spec.version = "0.1.0"
  spec.summary = "Owned Dependabot update-job boundary canary"
  spec.authors = ["Pedro Ferreira"]
  spec.files = ["lib/dependabot_probe_canary.rb"]
  if ENV["DEPENDABOT_JOB_ID"]
    warn "DEPENDABOT_PROBE_GEMSPEC_EVALUATED"
  end
end
