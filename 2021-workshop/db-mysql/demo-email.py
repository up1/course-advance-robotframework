from mailosaur import MailosaurClient
from mailosaur.models import SearchCriteria

# Available in the API tab of a server
api_key = "SmIuZgmXdRKsBdmj"
server_id = "om8bz7cc"
server_domain = "om8bz7cc.mailosaur.net"

mailosaur = MailosaurClient(api_key)

criteria = SearchCriteria()
criteria.sent_to = "somkiat@" + server_domain

email = mailosaur.messages.get(server_id, criteria)

print("Subject: " + email.subject)
print("Body: " + email.text.body)
