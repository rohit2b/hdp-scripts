git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch id_rsa' \
--prune-empty --tag-name-filter cat -- --all
