
with open('.next/server/chunks/[root-of-the-server]__0r51ndpezzdrl._.js', 'r') as f:
    c = f.read()

idx = c.find('Sign-in: KOOMPI Cloud did not take the code')
prefix = c[idx-100:idx]
suffix = c[idx:idx+100]
print('Prefix:', prefix)
print('Suffix:', suffix)
