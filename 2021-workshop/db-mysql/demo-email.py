from mailosaur import MailosaurClient
from mailosaur.models import SearchCriteria

# Available in the API tab of a server
api_key = ""
server_id = ""
server_domain = ""

mailosaur = MailosaurClient(api_key)

criteria = SearchCriteria()
criteria.sent_to = "ate-century@" + server_domain

email = mailosaur.messages.get(server_id, criteria)

print("Subject: " + email.subject)
print("Body: " + email.text.body)
