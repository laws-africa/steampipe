FROM turbot/steampipe:0.10.0

# Install steampipe plugins
RUN steampipe plugin install steampipe aws
