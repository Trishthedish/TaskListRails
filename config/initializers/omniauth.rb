# This tells Rails to use OmniAuth for authentication. Specifically, it tells Rails that it will be communicating with Github, and where it can find the application credentials that Github expects: in the ENV variable we populated earlier.

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["GITHUB_CLIENT_ID"], ENV["GITHUB_CLIENT_SECRET"], scope: "user:email"
end
