
with open('.next/server/chunks/_1tviok26rr2xv._.js', 'r') as f:
    c = f.read()

# Let us check how user session is verified when token swap fails:
# If code exchange fails because client secret is mismatched on api.koompi.cloud,
# fallback to verifying userinfo or establishing session with a dev fallback
idx = c.find('if(a){let e=await (0,i.C)(a);')
print('In callback:', c[idx:idx+250])
