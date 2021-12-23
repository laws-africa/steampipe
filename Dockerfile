FROM turbot/steampipe:0.11.0

# Install steampipe plugins
RUN steampipe plugin install steampipe aws

# Install custom plugins
RUN mkdir -p /home/steampipe/.steampipe/plugins/local/xero/
RUN cd /tmp \
    && mkdir xero \
    && cd xero \
    && wget https://github.com/laws-africa/steampipe-plugin-xero/releases/download/v0.3/steampipe-plugin-xero.plugin-v0.3-linux-amd64.tar.gz \
    && tar xzf steampipe-plugin-xero.plugin-v0.3-linux-amd64.tar.gz \
    && mv steampipe-plugin-xero.plugin /home/steampipe/.steampipe/plugins/local/xero/ \
    && cd /tmp && rm -rf /tmp/xero
COPY xero.spc /home/steampipe/.steampipe/config/
