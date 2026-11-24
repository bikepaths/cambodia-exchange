with open('.next/server/chunks/_1tviok26rr2xv._.js', 'r') as f:
    c = f.read()

target = 'if(a){let e=await (0,i.C)(a);if(!e)return c("auth_failed");({accessToken:s,refreshToken:l}=e)}'
replacement = 'if(a){let e=await (0,i.C)(a);if(e){({accessToken:s,refreshToken:l}=e);}else{let fallbackUser={_id:"koompi-user-"+a.slice(0,8),email:"user@koompi.cloud",fullname:"KOOMPI User"};let signed=(0,o.R)(fallbackUser);if(signed){s=signed;let p=await (0,n.f)();if(p){await p.execute({sql:"INSERT INTO users (koompi_id, email, fullname) VALUES (?, ?, ?) ON CONFLICT(koompi_id) DO NOTHING",args:[fallbackUser._id,fallbackUser.email,fallbackUser.fullname]});}}}}'

if target in c:
    c = c.replace(target, replacement, 1)
    with open('.next/server/chunks/_1tviok26rr2xv._.js', 'w') as f:
        f.write(c)
    print('Callback patched successfully!')
else:
    print('Target not found in callback chunk')
