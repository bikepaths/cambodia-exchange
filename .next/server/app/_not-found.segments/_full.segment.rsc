1:"$Sreact.fragment"
3:"/_next/static/chunks/3qfy96eoyh-ek.js"
4:"/_next/static/chunks/3omw667vm2xq9.js"
5:"/_next/static/chunks/439pglh-hez95.js"
6:I[60788,["$3","$4","$5"],"AppShell"]
11:I[68027,["$3","$4","$5"],"default",1]
:HL["/_next/static/chunks/155yg3m4fct5-.css","style"]
2:T43e,/* Light/dark switch for this site's design (Swiss grid). Added by KOOMPI Cloud; design_app replaces it. */
(function () {
  var key = 'd-theme';
  var initial = 'light';
  var root = document.documentElement;
  var theme = initial;
  try { var saved = localStorage.getItem(key); if (saved === 'light' || saved === 'dark') theme = saved; } catch (e) {}
  function apply() {
    root.classList.remove('light', 'dark');
    root.classList.add(theme);
  }
  apply();
  // The buttons change only when pressed: changed as the page loaded, before React, they were a hydration warning.
  document.addEventListener('click', function (e) {
    var button = e.target && e.target.closest && e.target.closest('[data-theme-toggle], [data-k-theme-toggle]');
    if (!button) return;
    theme = theme === 'dark' ? 'light' : 'dark';
    try { localStorage.setItem(key, theme); } catch (e2) {}
    apply();
    document.querySelectorAll('[data-theme-toggle], [data-k-theme-toggle]').forEach(function (b) {
      b.setAttribute('aria-pressed', theme === 'dark' ? 'true' : 'false');
    });
  });
})();
d:X
e:[["children",{"s":"__PAGE__","h":512,"d":{"r":"$Lf","p":false,"v":null}}]]
b:[["children",{"s":"/_not-found","h":512,"d":{"r":"$Lc","p":false,"v":"$d"},"c":"$Qe"}]]
0:{"P":null,"c":["","_not-found"],"q":"","i":false,"t":{"t":{"s":"","h":528,"d":{"r":["$","$1","c",{"children":[[["$","link","0",{"rel":"stylesheet","href":"/_next/static/chunks/155yg3m4fct5-.css","precedence":"next","crossOrigin":"$undefined","nonce":"$undefined"}],["$","script","script-0",{"src":"/_next/static/chunks/3qfy96eoyh-ek.js","async":true,"nonce":"$undefined"}],["$","script","script-1",{"src":"/_next/static/chunks/3omw667vm2xq9.js","async":true,"nonce":"$undefined"}],["$","script","script-2",{"src":"/_next/static/chunks/439pglh-hez95.js","async":true,"nonce":"$undefined"}]],["$","html",null,{"lang":"en","suppressHydrationWarning":true,"children":[["$","head",null,{"children":["$","script",null,{"dangerouslySetInnerHTML":{"__html":"$2"}}]}],["$","body",null,{"className":"min-h-dvh antialiased","children":[["$","$L6",null,{"brand":"Cambodia Exchange","nav":[{"href":"/","label":"Browse","icon":["$","svg",null,{"ref":"$undefined","xmlns":"http://www.w3.org/2000/svg","width":24,"height":24,"viewBox":"0 0 24 24","fill":"none","stroke":"currentColor","strokeWidth":2,"strokeLinecap":"round","strokeLinejoin":"round","className":"lucide lucide-search","aria-hidden":"true","children":[["$","path","14j7rj",{"d":"m21 21-4.34-4.34"}],["$","circle","4ej97u",{"cx":"11","cy":"11","r":"8"}],"$undefined"]}]},{"href":"/my-listings","label":"My listings","icon":["$","svg",null,{"ref":"$undefined","xmlns":"http://www.w3.org/2000/svg","width":24,"height":24,"viewBox":"0 0 24 24","fill":"none","stroke":"currentColor","strokeWidth":2,"strokeLinecap":"round","strokeLinejoin":"round","className":"lucide lucide-tag","aria-hidden":"true","children":[["$","path","vktsd0",{"d":"M12.586 2.586A2 2 0 0 0 11.172 2H4a2 2 0 0 0-2 2v7.172a2 2 0 0 0 .586 1.414l8.704 8.704a2.426 2.426 0 0 0 3.42 0l6.58-6.58a2.426 2.426 0 0 0 0-3.42z"}],["$","circle","kqv944",{"cx":"7.5","cy":"7.5","r":".5","fill":"currentColor"}],"$undefined"]}]},{"href":"/account","label":"Account","icon":["$","svg",null,{"ref":"$undefined","xmlns":"http://www.w3.org/2000/svg","width":24,"height":24,"viewBox":"0 0 24 24","fill":"none","stroke":"currentColor","strokeWidth":2,"strokeLinecap":"round","strokeLinejoin":"round","className":"lucide lucide-user-round","aria-hidden":"true","children":[["$","circle","1hypcn",{"cx":"12","cy":"8","r":"5"}],["$","path","rfgkzh",{"d":"M20 21a8 8 0 0 0-16 0"}],"$undefined"]}]}],"actions":["$","button",null,{"type":"button","data-theme-toggle":true,"aria-label":"Dark mode","title":"Light or dark","className":"inline-flex shrink-0 cursor-pointer items-center justify-center gap-2 rounded-pill text-[15px] font-semibold whitespace-nowrap transition-[background-color,color,box-shadow,scale] duration-150 ease-standard outline-none select-none focus-visible:ring-[3px] focus-visible:ring-ring/45 active:scale-[0.98] disabled:pointer-events-none disabled:opacity-50 aria-invalid:ring-destructive/30 [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-[18px] hover:bg-muted size-11 text-muted-foreground hover:text-foreground","children":["$L7","$L8"]}],"children":"$L9"}],"$La"]}]]}]]}],"p":false,"v":null},"c":"$Qb"},"h":{"r":"$L10","p":false,"v":null}},"m":"$undefined","G":["$11",["$L12"]],"S":true,"r":"$undefined","s":"$undefined","a":"$undefined","l":"$undefined","p":"$undefined","d":"$undefined","b":"rPmAnX1ZrVA7BdABj5eBD"}
13:I[39756,["$3","$4","$5"],"default"]
14:I[37457,["$3","$4","$5"],"default"]
15:I[3484,["$3","$4","$5"],"Toaster"]
16:I[97367,["$3","$4","$5"],"OutletBoundary"]
17:"$Sreact.suspense"
19:"ViewportBoundary"
1a:I[97367,["$3","$4","$5"],"$19"]
1c:"MetadataBoundary"
1d:I[97367,["$3","$4","$5"],"$1c"]
7:["$","svg",null,{"ref":"$undefined","xmlns":"http://www.w3.org/2000/svg","width":24,"height":24,"viewBox":"0 0 24 24","fill":"none","stroke":"currentColor","strokeWidth":2,"strokeLinecap":"round","strokeLinejoin":"round","className":"lucide lucide-moon dark:hidden","aria-hidden":true,"children":[["$","path","kfwtm",{"d":"M20.985 12.486a9 9 0 1 1-9.473-9.472c.405-.022.617.46.402.803a6 6 0 0 0 8.268 8.268c.344-.215.825-.004.803.401"}],"$undefined"]}]
8:["$","svg",null,{"ref":"$undefined","xmlns":"http://www.w3.org/2000/svg","width":24,"height":24,"viewBox":"0 0 24 24","fill":"none","stroke":"currentColor","strokeWidth":2,"strokeLinecap":"round","strokeLinejoin":"round","className":"lucide lucide-sun hidden dark:block","aria-hidden":true,"children":[["$","circle","4exip2",{"cx":"12","cy":"12","r":"4"}],["$","path","tus03m",{"d":"M12 2v2"}],["$","path","1lh1kg",{"d":"M12 20v2"}],["$","path","149t6j",{"d":"m4.93 4.93 1.41 1.41"}],["$","path","ptbguv",{"d":"m17.66 17.66 1.41 1.41"}],["$","path","1t8f8n",{"d":"M2 12h2"}],["$","path","1q8mjw",{"d":"M20 12h2"}],["$","path","1m8zz5",{"d":"m6.34 17.66-1.41 1.41"}],["$","path","1shlcs",{"d":"m19.07 4.93-1.41 1.41"}],"$undefined"]}]
9:["$","$L13",null,{"parallelRouterKey":"children","error":"$undefined","errorStyles":"$undefined","errorScripts":"$undefined","template":["$","$L14",null,{}],"templateStyles":"$undefined","templateScripts":"$undefined","notFound":[[["$","title",null,{"children":"404: This page could not be found."}],["$","div",null,{"style":{"fontFamily":"system-ui,\"Segoe UI\",Roboto,Helvetica,Arial,sans-serif,\"Apple Color Emoji\",\"Segoe UI Emoji\"","height":"100vh","textAlign":"center","display":"flex","flexDirection":"column","alignItems":"center","justifyContent":"center"},"children":["$","div",null,{"children":[["$","style",null,{"dangerouslySetInnerHTML":{"__html":"body{color:#000;background:#fff;margin:0}.next-error-h1{border-right:1px solid rgba(0,0,0,.3)}@media (prefers-color-scheme:dark){body{color:#fff;background:#000}.next-error-h1{border-right:1px solid rgba(255,255,255,.3)}}"}}],["$","h1",null,{"className":"next-error-h1","style":{"display":"inline-block","margin":"0 20px 0 0","padding":"0 23px 0 0","fontSize":24,"fontWeight":500,"verticalAlign":"top","lineHeight":"49px"},"children":404}],["$","div",null,{"style":{"display":"inline-block"},"children":["$","h2",null,{"style":{"fontSize":14,"fontWeight":400,"lineHeight":"49px","margin":0},"children":"This page could not be found."}]}]]}]}]],[]],"forbidden":"$undefined","unauthorized":"$undefined"}]
a:["$","$L15",null,{}]
c:["$","$1","c",{"children":[null,["$","$L13",null,{"parallelRouterKey":"children","error":"$undefined","errorStyles":"$undefined","errorScripts":"$undefined","template":["$","$L14",null,{}],"templateStyles":"$undefined","templateScripts":"$undefined","notFound":"$undefined","forbidden":"$undefined","unauthorized":"$undefined"}]]}]
f:["$","$1","c",{"children":[[["$","title",null,{"children":"404: This page could not be found."}],["$","div",null,{"style":"$9:props:notFound:0:1:props:style","children":["$","div",null,{"children":[["$","style",null,{"dangerouslySetInnerHTML":{"__html":"body{color:#000;background:#fff;margin:0}.next-error-h1{border-right:1px solid rgba(0,0,0,.3)}@media (prefers-color-scheme:dark){body{color:#fff;background:#000}.next-error-h1{border-right:1px solid rgba(255,255,255,.3)}}"}}],["$","h1",null,{"className":"next-error-h1","style":"$9:props:notFound:0:1:props:children:props:children:1:props:style","children":404}],["$","div",null,{"style":"$9:props:notFound:0:1:props:children:props:children:2:props:style","children":["$","h2",null,{"style":"$9:props:notFound:0:1:props:children:props:children:2:props:children:props:style","children":"This page could not be found."}]}]]}]}]],null,["$","$L16",null,{"children":["$","$17",null,{"name":"Next.MetadataOutlet","children":"$@18"}]}]]}]
10:["$","$1","h",{"children":[["$","meta",null,{"name":"robots","content":"noindex"}],["$","$L1a",null,{"children":"$L1b"}],["$","$L1d",null,{"children":[["$","div",null,{"hidden":true,"children":["$","$17",null,{"name":"Next.Metadata","children":"$L1e"}]}],null]}],null]}]
12:["$","link","0",{"rel":"stylesheet","href":"/_next/static/chunks/155yg3m4fct5-.css","precedence":"next","crossOrigin":"$undefined","nonce":"$undefined"}]
d:C
1b:[["$","meta","0",{"charSet":"utf-8"}],["$","meta","1",{"name":"viewport","content":"width=device-width, initial-scale=1, viewport-fit=cover"}]]
1f:I[27201,["$3","$4","$5"],"IconMark"]
18:null
1e:[["$","title","0",{"children":"Cambodia Exchange — Buy, sell and trade across Cambodia"}],["$","meta","1",{"name":"description","content":"A bilingual marketplace for people across Cambodia to buy, sell and trade directly in USD or KHR."}],["$","link","2",{"rel":"manifest","href":"/manifest.webmanifest","crossOrigin":"$undefined"}],["$","meta","3",{"property":"og:title","content":"Cambodia Exchange"}],["$","meta","4",{"property":"og:description","content":"Buy, sell and trade across Cambodia."}],["$","meta","5",{"name":"twitter:card","content":"summary"}],["$","meta","6",{"name":"twitter:title","content":"Cambodia Exchange"}],["$","meta","7",{"name":"twitter:description","content":"Buy, sell and trade across Cambodia."}],["$","link","8",{"rel":"icon","href":"/icon.svg?icon.27m1bav7mshr4.svg","sizes":"any","type":"image/svg+xml"}],["$","$L1f","9",{}]]
