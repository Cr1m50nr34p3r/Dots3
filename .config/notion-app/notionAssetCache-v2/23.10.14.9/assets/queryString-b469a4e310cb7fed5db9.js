"use strict";(self.webpackChunknotion_next=self.webpackChunknotion_next||[]).push([[96],{53694:(e,r,a)=>{function s(e,r){return Object.keys(r).reduce((function(a,s){s.startsWith(e)&&(a[s.substr(e.length)]=r[s]);return a}),{})}function t(e,r){var a=document.createElement("a");a.href=r;var t=a.search.slice(1).split("&").reduce((function(e,r){var a=r.split("="),s=a[0],t=a[1];return e[s]=decodeURI(t).replace("+"," "),e}),{}),n=[],i=t.ajs_uid,u=t.ajs_event,_=t.ajs_aid;if(i){var c=Array.isArray(t.ajs_uid)?t.ajs_uid[0]:t.ajs_uid,d=s("ajs_trait_",t);n.push(e.identify(c,d))}if(u){var j=Array.isArray(t.ajs_event)?t.ajs_event[0]:t.ajs_event,o=s("ajs_prop_",t);n.push(e.track(j,o))}if(_){var f=Array.isArray(t.ajs_aid)?t.ajs_aid[0]:t.ajs_aid;e.setAnonymousId(f)}return Promise.all(n)}a.r(r),a.d(r,{queryString:()=>t})}}]);
//# sourceMappingURL=sourcemapUpload/queryString-b469a4e310cb7fed5db9.js.map