title: ${WIKI_TITLE}
host: ${WIKI_HOST}
port: ${WIKI_PORT}
paths:
  repo: ./repo
  data: ./data
uploads:
  maxImageFileSize: 3
  maxOtherFileSize: 100
lang: en
langRtl: false
public: false
auth:
  defaultReadAccess: false
  local:
    enabled: true
  google:
    enabled: true
    clientId: GOOGLE_CLIENT_ID
    clientSecret: GOOGLE_CLIENT_SECRET
  microsoft:
    enabled: true
    clientId: MS_APP_ID
    clientSecret: MS_APP_SECRET
  facebook:
    enabled: false
    clientId: FACEBOOK_APP_ID
    clientSecret: FACEBOOK_APP_SECRET
  github:
    enabled: false
    clientId: GITHUB_CLIENT_ID
    clientSecret: GITHUB_CLIENT_SECRET
  slack:
    enabled: false
    clientId: 'SLACK_CLIENT_ID'
    clientSecret: 'SLACK_CLIENT_SECRET'
  ldap:
    enabled: false
    url: ldap://serverhost:389
    bindDn: cn='root'
    bindCredentials: BIND_PASSWORD
    searchBase: o=users,o=example.com
    searchFilter: (uid={{username}})
    tlsEnabled: false
    tlsCertPath: C:\example\root_ca_cert.crt
  azure:
    enabled: false
    clientId: APP_ID
    clientSecret: APP_SECRET_KEY
    resource: '00000002-0000-0000-c000-000000000000'
    tenant: 'YOUR_TENANT.onmicrosoft.com'
sessionSecret: lekkerbydiesee817fuej38vlenc843hsabdje84jdkdnfjfu
db: mongodb://localhost:27017/wiki
git:
  url: https://github.com/Organization/Repo
  branch: master
  auth:

    # Type: basic or ssh
    type: ssh

    # Only for Basic authentication:
    username: marty
    password: MartyMcFly88

    # Only for SSH authentication:
    privateKey: /etc/wiki/keys/git.pem

    sslVerify: true

  # Default email to use as commit author
  serverEmail: marty@example.com

  # Whether to use user email as author in commits
  showUserEmail: true
features:
  linebreaks: true
  mathjax: true
externalLogging:
  bugsnag: false
  loggly: false
  papertrail: false
  rollbar: false
  sentry: false
theme:
  primary: indigo
  alt: blue-grey
  viewSource: all # all | write | false
  footer: blue-grey
  code:
    dark: true
    colorize: true
