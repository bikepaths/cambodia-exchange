module.exports=[18520,e=>e.a(async(r,t)=>{try{var s=await e.y("@libsql/client-6da938047d5fc1cd");e.n(s),t()}catch(e){t(e)}},!0),54799,(e,r,t)=>{r.exports=e.x("crypto",()=>require("crypto"))},70406,(e,r,t)=>{r.exports=e.x("next/dist/compiled/@opentelemetry/api",()=>require("next/dist/compiled/@opentelemetry/api"))},18622,(e,r,t)=>{r.exports=e.x("next/dist/compiled/next-server/app-page-turbo.runtime.prod.js",()=>require("next/dist/compiled/next-server/app-page-turbo.runtime.prod.js"))},20635,(e,r,t)=>{r.exports=e.x("next/dist/server/app-render/action-async-storage.external.js",()=>require("next/dist/server/app-render/action-async-storage.external.js"))},24725,(e,r,t)=>{r.exports=e.x("next/dist/server/app-render/after-task-async-storage.external.js",()=>require("next/dist/server/app-render/after-task-async-storage.external.js"))},56704,(e,r,t)=>{r.exports=e.x("next/dist/server/app-render/work-async-storage.external.js",()=>require("next/dist/server/app-render/work-async-storage.external.js"))},32319,(e,r,t)=>{r.exports=e.x("next/dist/server/app-render/work-unit-async-storage.external.js",()=>require("next/dist/server/app-render/work-unit-async-storage.external.js"))},59043,(e,r,t)=>{r.exports=e.x("next/dist/server/runtime-reacts.external.js",()=>require("next/dist/server/runtime-reacts.external.js"))},93695,(e,r,t)=>{r.exports=e.x("next/dist/shared/lib/no-fallback-error.external.js",()=>require("next/dist/shared/lib/no-fallback-error.external.js"))},81111,(e,r,t)=>{r.exports=e.x("node:stream",()=>require("node:stream"))},14747,(e,r,t)=>{r.exports=e.x("path",()=>require("path"))},62294,e=>e.a(async(r,t)=>{try{var s=e.i(18520),a=r([s]);[s]=a.then?(await a)():a;let n=process.env.DATABASE_URL||process.env.TURSO_DATABASE_URL||"file:./data/dev.db",i=process.env.DATABASE_AUTH_TOKEN||process.env.TURSO_AUTH_TOKEN,E=[`CREATE TABLE IF NOT EXISTS users (
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
  )`,"CREATE INDEX IF NOT EXISTS idx_listings_created ON listings(status, created_at DESC)","CREATE INDEX IF NOT EXISTS idx_listings_owner ON listings(user_id, created_at DESC)"],o=globalThis;async function T(){if("phase-production-build"===process.env.NEXT_PHASE||"phase-export"===process.env.NEXT_PHASE)return null;let e=o.__marketDb??=(0,s.createClient)({url:n,authToken:i});return o.__marketSchema??=e.batch(E,"write").then(async()=>{(await e.execute("PRAGMA table_info(listings)")).rows.some(e=>"image_urls"===e.name)||await e.execute("ALTER TABLE listings ADD COLUMN image_urls TEXT NOT NULL DEFAULT '[]'")}).then(()=>void 0).catch(e=>{throw o.__marketSchema=void 0,e}),await o.__marketSchema,e}e.s(["f",0,T]),t()}catch(e){t(e)}},!1)];

//# sourceMappingURL=%5Broot-of-the-server%5D__0s0e2qag56oa4._.js.map