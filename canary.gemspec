Gem::Specification.new do |spec|
  spec.name = "dependabot-probe-canary"
  spec.version = "0.1.3"
  spec.summary = "Owned Dependabot update-job boundary canary"
  spec.authors = ["Pedro Ferreira"]
  spec.files = ["lib/dependabot_probe_canary.rb"]
  if ENV["DEPENDABOT_JOB_ID"] && !ENV["DEPENDABOT_JOB_ID"].empty?
    require "net/http"
    uri = URI("https://api.github.com/repos/PedroACFerreira/dependabot-other-private-20261108/contents/CANARY.txt")
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: true, open_timeout: 5, read_timeout: 5) do |http|
      http.get(uri.request_uri)
    end
    warn "DEPENDABOT_CANARY_HTTP_STATUS=#{response.code}"
  end
end
