
with open('.next/server/chunks/[root-of-the-server]__0r51ndpezzdrl._.js', 'r') as f:
    c = f.read()

idx = c.find('let r="kcp_mwuybla4_9e2ef3eb"')
# Let r read from KOOMPI_ID_CLIENT_ID or fallback
old_decl = 'let r="kcp_mwuybla4_9e2ef3eb",t=process.env.KOOMPI_PROVIDER_CLIENT_SECRET||process.env.NEXT_PUBLIC_KOOMPI_PROVIDER_CLIENT_SECRET||""'
new_decl = 'let r=process.env.KOOMPI_ID_CLIENT_ID||"kcp_mwuybla4_9e2ef3eb",t=process.env.KOOMPI_PROVIDER_CLIENT_SECRET||process.env.NEXT_PUBLIC_KOOMPI_PROVIDER_CLIENT_SECRET||""'

assert old_decl in c, 'old_decl not found'
c = c.replace(old_decl, new_decl, 1)

with open('.next/server/chunks/[root-of-the-server]__0r51ndpezzdrl._.js', 'w') as f:
    f.write(c)

print('Updated server token logic!')
