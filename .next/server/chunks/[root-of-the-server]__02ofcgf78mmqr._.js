module.exports=[18520,T=>T.a(async(e,E)=>{try{var t=await T.y("@libsql/client-6da938047d5fc1cd");T.n(t),E()}catch(T){E(T)}},!0),62294,T=>T.a(async(e,E)=>{try{var t=T.i(18520),a=e([t]);[t]=a.then?(await a)():a;let i=process.env.DATABASE_URL||process.env.TURSO_DATABASE_URL||"file:./data/dev.db",N=process.env.DATABASE_AUTH_TOKEN||process.env.TURSO_AUTH_TOKEN,r=[`CREATE TABLE IF NOT EXISTS users (
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
  )`,"CREATE INDEX IF NOT EXISTS idx_listings_created ON listings(status, created_at DESC)","CREATE INDEX IF NOT EXISTS idx_listings_owner ON listings(user_id, created_at DESC)"],c=globalThis;async function s(){if("phase-production-build"===process.env.NEXT_PHASE||"phase-export"===process.env.NEXT_PHASE)return null;let T=c.__marketDb??=(0,t.createClient)({url:i,authToken:N});return c.__marketSchema??=T.batch(r,"write").then(async()=>{(await T.execute("PRAGMA table_info(listings)")).rows.some(T=>"image_urls"===T.name)||await T.execute("ALTER TABLE listings ADD COLUMN image_urls TEXT NOT NULL DEFAULT '[]'")}).then(()=>void 0).catch(T=>{throw c.__marketSchema=void 0,T}),await c.__marketSchema,T}T.s(["f",0,s]),E()}catch(T){E(T)}},!1)];

//# sourceMappingURL=%5Broot-of-the-server%5D__02ofcgf78mmqr._.js.map