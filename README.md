# Generator Labs - Zabbix Plugin

A Zabbix template that integrates with the Generator Labs public API using native HTTP Agent items. No external scripts are required — Zabbix makes the API requests directly.

Generator Labs currently supports the following monitoring products:

* **RBL Monitoring** — monitors IP/domain blacklist status
* **Certificate Monitoring** — monitors SSL/TLS certificate errors

The template returns:

* 0 when no issues are detected.
* &gt; 0 when issues are detected.
* -1 when there is some other error, like an invalid API token.

## Requirements

* Zabbix Server 7.0 or later
* HTTPS connectivity from the Zabbix Server to `api.generatorlabs.com`

## Installation

1. Import the `generator_zabbix.yaml` file into your Zabbix instance via **Configuration > Templates > Import**.

2. Edit an existing Host, or add a new Host, and from the Templates tab, link the "Generator Labs" template to this host.

3. From the Macros tab, set the values for `{$GENERATOR_ACCOUNT_SID}` and `{$GENERATOR_API_TOKEN}`. These are your Generator Labs account SID and API auth token, available from the Generator Labs portal @ https://portal.generatorlabs.com/

The template includes items, triggers, and graphs for both RBL and Certificate monitoring. The API token macro is configured as a secret type so the value is masked in the Zabbix UI.
