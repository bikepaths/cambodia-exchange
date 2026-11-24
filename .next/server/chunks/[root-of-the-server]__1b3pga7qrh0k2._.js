module.exports=[18520,e=>e.a(async(t,r)=>{try{var a=await e.y("@libsql/client-6da938047d5fc1cd");e.n(a),r()}catch(e){r(e)}},!0),61095,(e,t,r)=>{t.exports=e.x("node:net",()=>require("node:net"))},62294,e=>e.a(async(t,r)=>{try{var a=e.i(18520),T=t([a]);[a]=T.then?(await T)():T;let n=process.env.DATABASE_URL||process.env.TURSO_DATABASE_URL||"file:./data/dev.db",E=process.env.DATABASE_AUTH_TOKEN||process.env.TURSO_AUTH_TOKEN,o=[`CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    koompi_id TEXT UNIQUE NOT NULL,
    email TEXT NOT NULL,
    fullname TEXT,
    avatar TEXT,
    wallet_address TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
  )`,`CREATE TABLE IF NOT EXISTS listings (
    id TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    category TEXT NOT NULL,
    province TEXT NOT NULL,
    price TEXT NOT NULL,
    currency TEXT NOT NULL CHECK(currency IN ('USD','KHR')),
    contact TEXT NOT NULL,
    image_urls TEXT NOT NULL DEFAULT '[]',
    status TEXT NOT NULL DEFAULT 'active',
    sample INTEGER NOT NULL DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
  )`,"CREATE INDEX IF NOT EXISTS idx_listings_created ON listings(status, created_at DESC)","CREATE INDEX IF NOT EXISTS idx_listings_owner ON listings(user_id, created_at DESC)"],i=globalThis;async function s(){if("phase-production-build"===process.env.NEXT_PHASE||"phase-export"===process.env.NEXT_PHASE)return null;let e=i.__marketDb??=(0,a.createClient)({url:n,authToken:E});return i.__marketSchema??=e.batch(o,"write").then(async()=>{(await e.execute("PRAGMA table_info(listings)")).rows.some(e=>"image_urls"===e.name)||await e.execute("ALTER TABLE listings ADD COLUMN image_urls TEXT NOT NULL DEFAULT '[]'")}).then(()=>void 0).catch(e=>{throw i.__marketSchema=void 0,e}),await i.__marketSchema,e}e.s(["f",0,s]),r()}catch(e){r(e)}},!1),18515,e=>{"use strict";var t=e.i(66680),r=e.i(61095);async function a(e,t,r){let a=process.env.KOOMPI_PAY_URL,T=process.env.KOOMPI_PAY_KEY;if(!a||!T)throw Error("Payments are not turned on for this app");let s=await fetch(a+t,{method:e,headers:{authorization:`Bearer ${T}`,...r?{"content-type":"application/json"}:{}},body:r?JSON.stringify(r):void 0,cache:"no-store"}),n=await s.json().catch(()=>null);if(!s.ok||!n||!1===n.success)throw Error(n?.message||`KOOMPI Cloud payments answered ${s.status}`);return n.data}e.s(["m",0,function(e){let t,a;if(process.env.NEXT_PUBLIC_APP_URL)return process.env.NEXT_PUBLIC_APP_URL.replace(/\/+$/,"");let T=(e.get("x-forwarded-host")??e.get("host")??"").split(",")[0].trim();return!T||(t=T.toLowerCase().replace(/:\d+$/,"").replace(/^\[(.*)\]$/,"$1").replace(/\.$/,""),4===(a=(0,r.isIP)(t))?/^(?:0|10|127)\.|^169\.254\.|^192\.168\.|^172\.(?:1[6-9]|2\d|3[01])\.|^100\.(?:6[4-9]|[7-9]\d|1[01]\d|12[0-7])\./.test(t):6===a?"::"===t||"::1"===t||/^(?:f[cd]|fe[89ab]|::ffff:)/.test(t):!t.includes(".")||/(?:^|\.)localhost$|\.(?:local|internal)$/.test(t))?"":`${(e.get("x-forwarded-proto")??"https").split(",")[0].trim()}://${T}`},"Q",0,function(e){return a("GET",`/payments/${encodeURIComponent(e)}`)},"G",0,function(){return!!(process.env.KOOMPI_PAY_URL&&process.env.KOOMPI_PAY_KEY)},"s",0,function(e){return a("POST","/checkout",{currency:"USD",...e})},"t",0,function(e,r,a=300){let T=process.env.KOOMPI_PAY_WEBHOOK_SECRET;if(!T)throw Error("KOOMPI_PAY_WEBHOOK_SECRET is not set");let s=Object.fromEntries((r??"").split(",").map(e=>e.split("="))),n=Number(s.t);if(!n||!s.v1)throw Error("No KOOMPI Cloud signature");if(Math.abs(Date.now()/1e3-n)>a)throw Error("The event is too old");let E=Buffer.from(t.default.createHmac("sha256",T).update(`${n}.${e}`).digest("hex")),o=Buffer.from(String(s.v1));if(E.length!==o.length||!t.default.timingSafeEqual(E,o))throw Error("The signature does not match");return JSON.parse(e)}])}];

//# sourceMappingURL=%5Broot-of-the-server%5D__1b3pga7qrh0k2._.js.map