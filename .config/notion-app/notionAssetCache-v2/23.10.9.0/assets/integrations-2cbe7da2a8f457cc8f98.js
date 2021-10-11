"use strict";(self.webpackChunknotion_next=self.webpackChunknotion_next||[]).push([[801],{3036:(e,t,o)=>{o.r(t),o.d(t,{default:()=>k});var r=o(98135),i=o.n(r),a=(o(33948),o(67294)),n=o(58879),s=o(45016),l=o(89940),d=o(27832),u=o(3403),c=o(97812),p=o(5366),g=o(43250),m=o(7170),f=o(40039),v=o(91149),b=o(50906),y=o(56200),h=o(85227),M=o(70043),S=o(3779);function F(){const e=(0,n.O7)();return i()(c.Z,{className:g.wG,title:i()(p.FormattedMessage,{id:"developerIntegrationNotFound.title.label",defaultMessage:"Not Found"}),subtitle:i()(p.FormattedMessage,{id:"developerIntegrationNotFound.subtitle.label",defaultMessage:"This integration doesn’t exist."}),onNavigateBack:()=>(0,s.A1)(e),icon:S.Z.eyes({width:98,height:98}),sideContent:null},void 0,null)}var _=o(80574),w=o(97880);function k(e){const{botOrIntegrationPointer:t}=e,o=(0,n.O7)(),[{currentUserStore:r}]=(0,l.oR)(d.default),[,,S]=(0,l.oR)(void 0,h.Z),k=(0,l.Kw)(S),I=(0,l.VK)((()=>{if(t&&r){const e=r.getRecordValue(t);if(e)return{value:e,table:t.table}}}),[r,t]);(0,a.useEffect)((()=>{I&&(S.initializeNewForm(I),b.DUp(o,{table:I.table}))}),[S,o,I]);const Z=(0,_.V)({value:k.startingRecord});if("rejected"===Z.status||!t)return i()(F,{});if("pending"===Z.status)return i()(u.Z,{});"resolved"!==Z.status&&(0,w.t1)(Z);const T=Z.value,C=T.value.name,B=T.table===m.c?T.value.icon:T.value.info.icon,x={id:T.value.id,table:T.table},R=B?{pointer:x,icon:B}:void 0;return i()(c.Z,{className:g.TF,title:C,subtitle:i()(p.FormattedMessage,{id:"developerIntegrationView.subtitle.label",defaultMessage:"Review and edit integration information."}),onNavigateBack:()=>(0,s.A1)(o),icon:i()(f.Z,{disabled:!0,icon:R,title:C,isEmptyPage:!1,size:98,isLarge:!0,style:{boxShadow:M.Z.frontDeepShadow},useInvertedColors:!0}),sideContent:i()(y.T,{integrationFormStore:S})},void 0,i()(v.Z,{integrationFormStore:S}))}},8871:(e,t,o)=>{o.r(t),o.d(t,{default:()=>p});var r=o(98135),i=o.n(r),a=(o(33948),o(67294),o(97812)),n=o(5366),s=o(43250),l=o(91149),d=o(56200),u=o(89940),c=o(85227);function p(e){const{onClose:t,onSuccess:o}=e,[,,r]=(0,u.oR)(void 0,c.Z);return i()(a.Z,{className:s.Zp,title:i()(n.FormattedMessage,{id:"developerIntegrationsCreateInternal.title.label",defaultMessage:"Create a new integration"}),subtitle:i()(n.FormattedMessage,{id:"developerIntegrationsCreateInternal.subtitle.label",defaultMessage:"We’ll walk you through how to setup a new integration."}),onNavigateBack:t,sideContent:i()(d.T,{integrationFormStore:r})},void 0,i()(l.Z,{onCreateNew:o,integrationFormStore:r,shouldAutoFocusFirstField:!0}))}},91149:(e,t,o)=>{o.d(t,{Z:()=>Se});var r=o(67154),i=o.n(r),a=o(98135),n=o.n(a),s=(o(33948),o(73210),o(96486)),l=o(67294),d=o.n(l),u=o(5366),c=o(7170),p=o(1985),g=o(97880),m=o(89940),f=o(27832),v=o(90031),b=o(64442),y=o(3779),h=o(98481),M=o(42402),S=o(89101),F=o(8848),_=o(38381);function w(e){const{onSubmit:t,children:o,submitType:r}=e,i="create-bot"===r||"create-integration"===r;return n()("form",{id:"developer-integration-form",style:{minWidth:200,maxWidth:440,marginLeft:24,display:"flex",flexDirection:"column"},onSubmit:e=>{e.preventDefault(),"create-integration"===r?_.Z.setState({open:!0,isDestructive:!1,title:n()(u.FormattedMessage,{id:"developerIntegrationFormHandler.createIntegration.confirmationModal.title",defaultMessage:"Switch to Public integration?"}),message:n()(u.FormattedMessage,{id:"developerIntegrationFormHandler.createIntegration.confirmationModal.message",defaultMessage:"You‘ll get an OAuth secret and will need to implement OAuth for authorization. See <oauthdocumentationlink>developer docs</oauthdocumentationlink> for more information.",values:{oauthdocumentationlink:(...e)=>n()(M.Z,{href:S._j.developerOAuthDocs},void 0,e)}}),onConfirm:()=>{t()}}):t()}},void 0,o,n()("div",{style:{display:"flex",marginTop:24,flexDirection:"row-reverse",alignItems:"center"}},void 0,n()(h.h,{onClick:()=>{const e=document.querySelector("form#developer-integration-form");if(e){const t=e.ownerDocument.createElement("input");t.style.display="none",t.type="submit",e.appendChild(t).click(),e.removeChild(t)}}},void 0,n()(k,{isCreate:i})),i&&n()("span",{style:{fontSize:15,color:F.ZP.frontTextLight,marginRight:42}},void 0,n()(u.FormattedMessage,{id:"developerIntegrationFormHandler.create.developerTerms",defaultMessage:"By submitting, you agree to Notion's <developertermslink>Developer Terms</developertermslink>.",values:{developertermslink:(...e)=>n()(M.Z,{href:S._j.developerTerms},void 0,e)}}))))}function k(e){const{isCreate:t}=e;return t?d().createElement(d().Fragment,null,n()("div",{style:{marginRight:4}},void 0,n()(u.FormattedMessage,{id:"formHandler.submitButton.create.label",defaultMessage:"Submit"})),y.Z.arrowRight({width:14,height:14})):n()(u.FormattedMessage,{id:"formHandler.submitButton.create.update",defaultMessage:"Save changes"})}var I=o(62727),Z=o(58879),T=o(66055),C=o(14947),B=o(37235),x=o(82990),R=o(74350);function N(e){const{fetchSecret:t,secretName:o,onCopy:r,onError:i,confirmationModalProps:a,hasSecretBeenViewed:s}=e,l=(0,Z.O7)(),[u,c]=d().useState();return n()(I.Z,{type:u?"text":"password",disabled:!0,style:{fontFamily:x.Z.getCompositeFontFamily(R.SP).mono,color:F.ZP.frontTextMedium},inputStyle:u?{cursor:"text"}:void 0,value:u||" ".repeat(40),right:n()("div",{style:{display:"flex"}},void 0,n()("div",{style:{width:30,marginLeft:-30,height:24,backgroundImage:"linear-gradient(to left, #f7f7f3 20%, rgba(255, 255, 255, 0) 100%)",zIndex:1}}),u?n()(V,{secretName:o,onClick:()=>{r&&r(),(0,T.RD)({environment:l,stringValue:u})}}):n()(P,{hasSecretBeenViewed:s,onClick:async()=>{const e=async()=>{const e=await t();"secret"in e?c(e.secret):i(e.error.body.message)};a?_.Z.setState({...a,open:!0,onConfirm:e}):await e()}}))})}function P(e){const{onClick:t,hasSecretBeenViewed:o}=e;return n()(C.Z,{onClick:t,style:O.button},void 0,n()(u.FormattedMessage,o?{id:"formSecretShow.refreshSecret.label",defaultMessage:"Refresh"}:{id:"formSecretShow.showSecret.label",defaultMessage:"Show"}))}function V(e){const{onClick:t,secretName:o}=e,[r,a]=d().useState(!1),s=n()(u.FormattedMessage,r?{defaultMessage:"{secretName} copied",id:"formSecretShow.secretCopied.tooltip",description:"Tooltip shown when user copied integration secret to clipboard",values:{secretName:o}}:{defaultMessage:"Copy {secretName}",id:"formSecretShow.copySecret.tooltip",description:"Shortcut for copying a token from an integration management page; 'secretName' will be either 'secret' or 'token'",values:{secretName:o}});return n()(B.Z,{placement:B.Z.Placement.Top,renderTooltip:()=>s,render:e=>d().createElement(C.Z,i()({onClick:e=>{e.preventDefault(),a(!0),setTimeout((()=>{a(!1)}),1500),t()}},e,{style:{...O.button,color:r?F.ZP.mediumTextColor:F.ZP.blue}}),n()(u.FormattedMessage,r?{id:"formSecretShow.copied.label",defaultMessage:"Copied"}:{id:"formSecretShow.copySecret.label",defaultMessage:"Copy"}))})}const O={button:{display:"inline-flex",alignItems:"center",fontFamily:x.Z.getCompositeFontFamily(R.SP).sans,borderRadius:3,padding:"0 6px",height:24,color:F.ZP.blue}};var E=o(61269),D=o(64215),W=o(14598),z=o(47966),A=o(46951);function q(e){const{options:t,value:o,setValue:r}=e;return n()("div",{style:{display:"flex",flexDirection:"column"}},void 0,t.map(((e,i)=>n()(K,{option:e,value:o,setValue:r,isFirst:0===i,isLast:i===t.length-1},e.key))))}function K(e){const{option:t,value:o,setValue:r,isFirst:i,isLast:a}=e,s=(0,D.y)((e=>({outliner:{display:"flex",flexDirection:"column",alignItems:"flex-start",height:"auto",padding:18,whiteSpace:"normal",fontSize:15,background:e.whiteButtonBackground,borderTopLeftRadius:i?3:0,borderTopRightRadius:i?3:0,borderBottomLeftRadius:a?3:0,borderBottomRightRadius:a?3:0,...!i&&{borderTop:void 0}}})),[i,a]);return n()(z.Z,{onClick:()=>r(t.key),style:s.outliner},void 0,n()(W.Z,{title:t.title,isSelected:o===t.key,onClick:()=>{}},t.key),n()(A.Z,{isMultiline:!0,isSecondaryColor:!0,style:{marginLeft:24,marginTop:-4,fontSize:15}},void 0,t.caption))}var L=o(48243),U=o(4637),$=o(53471),H=o(68932);function G(e){const{value:t,setValue:o,setError:r}=e,i=(0,Z.O7)(),[a,s]=d().useState(!1);return d().createElement(d().Fragment,null,t&&n()(L.Z,{url:t,isAuthenticated:!1,stripGoogleIconQuery:!0,width:90,render:(e,t)=>n()("div",{style:{width:90,height:90}},void 0,n()(U.Z,{src:t,style:{width:90,height:90,objectFit:"cover",borderRadius:3}}))}),n()(z.Z,{isLarge:!0,style:{width:"fit-content",backgroundColor:"white"},onClick:()=>{(0,$.cR)({environment:i,onStart:()=>s(!0),bucket:"public",onError:e=>{r(e.message),s(!1)},onComplete:e=>{o(e[0]),s(!1)},accept:"image/*"})}},void 0,n()(u.FormattedMessage,{id:"formInputIcon.uploadButton.label",defaultMessage:"Upload image"}),a&&n()(H.Z,{style:{marginLeft:4}})))}var Y=o(66722),j=o(25584),X=o(95009),Q=o(83071);function J(e){const{value:t}=e,[o,r]=d().useState(!1),a=()=>r(!1);return n()(Y.GI,{popupType:Y.GI.PopupType.Popup,alignmentToOrigin:Y.GI.Alignment.Start,placementToOrigin:Y.GI.Placement.Bottom,originGap:2,sameWidthAsOrigin:!0,open:o,onDismiss:a,render:()=>d().createElement(te,i()({},e,{value:t,onClose:a})),origin:d().createElement(ee,i()({},e,{value:t,onClick:()=>r(!0)}))})}function ee(e){const{onClick:t,value:o,renderMenuItem:r}=e,i=(0,D.y)((e=>({dropdown:{background:e.whiteButtonBackground,border:"1px solid ".concat(e.outlineButtonBorder),borderRadius:3,height:32},expandIcon:{height:12,width:12,fill:e.lightIconColor}})),[]);return d().createElement(d().Fragment,null,r({item:o,focused:!1,onClick:t,style:i.dropdown,right:y.Z.expand(i.expandIcon)}))}function te(e){const{keyName:t,items:o,value:r,setValue:i,renderMenuItem:a,onClose:s}=e;let l=0;const u=o.map(((e,t)=>(e.id===(null==r?void 0:r.id)&&(l=t),{key:e.id,action:()=>{i(e),s()},render:t=>a({...t,item:e})})));return n()(X.ZP,{menuType:X.ZP.MenuType.Popup},void 0,n()(j.Z,{type:j.Z.Type.Vertical,initialFocus:l,sections:[{key:"form-input-section-".concat(t),items:u,render:e=>d().createElement(Q.Z,e)}]}))}var oe=o(38755),re=o(48762),ie=o(40039),ae=o(79029);const ne=d().forwardRef(((e,t)=>{const{item:o,...r}=e,a=(0,Z.O7)(),s=(0,m.VK)((()=>o&&(0,oe.getSpaceIcon)(a,o)),[a,o]),l=(0,m.VK)((()=>o&&(0,oe.getSpaceName)(a,o)),[a,o]);return d().createElement(re.Z,i()({},r,{ref:t,title:o&&n()(ae.Z,{store:o}),icon:o&&n()(ie.Z,{disabled:!0,icon:s,title:l,isEmptyPage:!1,size:19})}))}));var se=o(50906),le=o(56200),de=o(81710);function ue(e){const{label:t,subtitle:o,error:r,children:i}=e,a=(0,D.y)((()=>({label:{fontSize:15,fontWeight:x.Z.fontWeight.medium,color:F.ZP.frontTextMedium},subtitle:{fontSize:15,color:F.ZP.frontTextLight},error:{marginTop:4,fontSize:15,color:F.ZP.frontRed},field:{display:"grid",gridTemplateColumns:"1fr",gap:6,marginBottom:32}})),[]);return n()("label",{style:a.field},void 0,n()("div",{style:a.label},void 0,t),i,o&&n()("div",{style:a.subtitle},void 0,o),r&&n()("div",{style:a.error},void 0,r))}var ce=o(26178),pe=o(45016),ge=o(33665),me=o(47307),fe=o(43250),ve=o(719),be=o(85567),ye=o(95477),he=o(74181),Me=o(84619);function Se(e){const{integrationFormStore:t,onCreateNew:o,shouldAutoFocusFirstField:r}=e,i=(0,Z.O7)(),[{currentUserRootStore:a}]=(0,m.oR)(f.default),c=(0,m.Kw)(t),{type:p}=c,[v,b]=d().useReducer(de.x6,de.yb);(0,l.useEffect)((()=>{if(!a)return;const e=(0,de.hl)({formStoreState:c,userRootStore:a});for(const t of(0,g.Yd)(e))b({field:t,value:e[t]})}),[c,a]);const y=(0,m.VK)((()=>a?a.getAdminSpaceStores():[]),[a]),h=s.debounce((()=>{const e=(0,de.Xk)({formData:v,formStateType:p});e.forEach((e=>{b({field:e,error:n()(u.FormattedMessage,{id:"developerIntegrationsForm.error.missingRequired",defaultMessage:"{ fieldName } is required.",values:{fieldName:de.Rh[e].label}})})}));const t=(0,de.bd)({formData:v,formStateType:p});t.forEach((e=>{b({field:e,error:n()(u.FormattedMessage,{id:"developerIntegrationsCreateInternal.error.invalidInput",defaultMessage:"{ fieldName } is invalid.",values:{fieldName:de.Rh[e].label}})})}));if(e.length>0||t.length>0||(0,de.tm)({formData:v,formStateType:p})||!a)return;const r=(0,pe.JJ)({environment:i,formState:c,formData:(0,de.Xr)(v)});if(!r)return void me.showErrorMessage(n()(u.FormattedMessage,{id:"developerIntegrationsForm.error.submission",defaultMessage:"There was an error submitting your integration. Please try again or contact support if the issue persists."}));o&&o(r);const s=document.querySelector(".".concat(fe.rI));s&&s.scrollIntoView({behavior:"smooth"})}),300);return n()(w,{submitType:p,onSubmit:h},void 0,de.cW.map((e=>de.gO[e].supportedBy[p]?n()("div",{style:{marginBottom:24}},e,n()(le.e,{keyName:e}),de.gO[e].fields.map((e=>{const{supportedBy:o,label:i,subtitle:a}=de.Rh[e];if(o[p]){const o=Fe[e];return n()(ue,{label:i,subtitle:a,error:v[e].error},e,n()(o,{autoFocus:Boolean(r&&"name"===e),spaces:y,currentValue:v[e].value,setErrorValue:t=>{b({field:e,error:t})},setNewValue:o=>{"submission_type"!==e?"client_secret"!==e&&"token"!==e&&b({value:o,field:e}):t.updateRecordTypeOnSubmission(o)}}))}return null}))):null)))}const Fe={token:function(e){const{currentValue:t,setErrorValue:o}=e,[{currentUserStore:r}]=(0,m.oR)(f.default),i=(0,Z.O7)(),a=(0,m.VK)((()=>{if(!r||!t)return;if(t.value.parent_table!==ce.bx)return;const e=b.Z.createChildStore(r,{id:t.value.parent_id,table:t.value.parent_table});return(0,oe.getSpaceName)(i,e)}),[r,t,i]);if(!t)return null;return d().createElement(d().Fragment,null,n()(N,{fetchSecret:async()=>{const e=await E.getBotToken(i,{botId:t.value.id});return"success"===e.type?(se.Cm3(i,{table:t.table}),{secret:e.data.token}):{error:e}},secretName:n()(u.FormattedMessage,{id:"developerIntegrationForm.botToken.secretName",defaultMessage:"token"}),onCopy:()=>{se.IVn(i,{table:t.table,from:"developer-integrations-view"})},onError:o}),a&&n()("div",{style:{fontSize:15,color:F.ZP.frontTextLight}},void 0,n()(u.FormattedMessage,{id:"developerIntegrationForm.botToken.subtitle",defaultMessage:"Only works with the <bold>{spaceName}</bold> workspace. To change workspace, <developertermslink>create another integration</developertermslink>.",values:{spaceName:a,bold:(...e)=>n()("b",{},void 0,e),developertermslink:(...e)=>n()(M.Z,{href:S._j.myIntegrations},void 0,e)}})))},client_id:function(e){const{currentValue:t}=e,o=(0,Z.O7)(),[r,a]=d().useState(!1);if(!t)return null;const s=n()(u.FormattedMessage,r?{defaultMessage:"ID copied",id:"developerIntegrationsForm.clientIdCopied.tooltip"}:{defaultMessage:"Copy client ID",id:"developerIntegrationsForm.copyClientId.tooltip"});return n()(I.Z,{type:"text",disabled:!0,style:{color:F.ZP.frontTextMedium,fontFamily:x.Z.getCompositeFontFamily(R.SP).mono},value:t.value.id,right:n()("div",{style:{display:"flex"}},void 0,n()("div",{style:{width:30,marginLeft:-30,height:24,backgroundImage:"linear-gradient(to left, #f7f7f3 20%, rgba(255, 255, 255, 0) 100%)",zIndex:1}}),n()(B.Z,{placement:B.Z.Placement.Top,renderTooltip:()=>s,render:e=>d().createElement(C.Z,i()({onClick:e=>{e.preventDefault(),a(!0),setTimeout((()=>{a(!1)}),1500),(0,T.RD)({environment:o,stringValue:t.value.id})}},e,{style:{display:"inline-flex",alignItems:"center",borderRadius:3,padding:"0 6px",height:24,color:r?F.ZP.frontTextMedium:F.ZP.blue,fontFamily:x.Z.getCompositeFontFamily(R.SP).sans}}),n()(u.FormattedMessage,r?{id:"developerIntegrationsForm.copiedId.label",defaultMessage:"Copied"}:{id:"developerIntegrationsForm.copyId.label",defaultMessage:"Copy"}))}))})},client_secret:function(e){const{currentValue:t,setErrorValue:o}=e,r=(0,Z.O7)(),[{currentUserStore:i}]=(0,m.oR)(f.default);if(!t||!i)return null;const a=t.value.info.has_viewed_secret,s=(0,v.Kv)(i,{id:t.value.id,table:p.K});return n()(N,{fetchSecret:async()=>{const e=await E.getIntegrationSecret(r,{integrationId:t.value.id});return"success"===e.type?((0,pe.bO)({environment:r,integrationStore:s}),se.Cm3(r,{table:t.table}),{secret:e.data.secret}):{error:e}},secretName:n()(u.FormattedMessage,{id:"developerIntegrationForm.integrationSecret.secretName",defaultMessage:"secret"}),onCopy:()=>{se.IVn(r,{table:t.table,from:"developer-integrations-view"})},onError:o,hasSecretBeenViewed:a,confirmationModalProps:{isDestructive:!1,title:n()(u.FormattedMessage,a?{id:"developerIntegrationForm.clientSecret.confirmationModal.title",defaultMessage:"Refresh OAuth client secret?"}:{id:"developerIntegrationForm.clientSecret.confirmationModal.title",defaultMessage:"Show OAuth client secret?"}),message:n()(u.FormattedMessage,a?{id:"developerIntegrationForm.clientSecret.confirmationModal.message",defaultMessage:"You’ve already viewed the client secret. Viewing again will revoke and generate a new one. Make sure you’re storing the secret securely."}:{id:"developerIntegrationForm.clientSecret.confirmationModal.message",defaultMessage:"This client secret will only be displayed once and cannot be viewed again. Make sure you’re storing the secret securely."})}})},name:_e,icon:function(e){const{currentValue:t,setNewValue:o,setErrorValue:r}=e;return n()(G,{value:t,setValue:o,setError:r})},space:function(e){const{spaces:t,currentValue:o,setNewValue:r,setErrorValue:i}=e,[a,s]=d().useState(!1);return(0,l.useEffect)((()=>{a||0!==t.length||(s(!0),i(n()(u.FormattedMessage,{id:"developerIntegrationsForm.spacePicker.missingSpacesError",defaultMessage:"You are not an admin of any workspaces. Please <linktonotion>create a new one</linktonotion> or ask your workspace admin to update your access.",values:{linktonotion:(...e)=>n()(M.Z,{href:(0,ge.U)("guides.joinOrCreateWorkspace")},void 0,e)}})))}),[t,i,a]),n()(J,{keyName:"space",items:t,value:o,setValue:r,renderMenuItem:e=>d().createElement(ne,e)})},submission_type:function(e){const{currentValue:t,setNewValue:o}=e,r=(0,Z.O7)();if(!t)return null;return n()(q,{options:[{key:c.c,title:n()(u.FormattedMessage,{id:"developerInternalIntegration.integrationType.bot.title",defaultMessage:"Internal integration"}),caption:n()(u.FormattedMessage,{id:"developerInternalIntegration.integrationType.bot.caption",defaultMessage:"Only available for workspaces you’re an admin of. The integration can be installed to those workspaces automatically and does not require review."})},{key:p.K,title:n()(u.FormattedMessage,{id:"developerInternalIntegration.integrationType.integration.title",defaultMessage:"Public integration"}),caption:n()(u.FormattedMessage,{id:"developerInternalIntegration.integrationType.integration.caption",defaultMessage:"Available for any Notion user. May require review and verification for listing in the Integration Gallery."})}],value:t,setValue:e=>{o(e),se.kXt(r,{table:e})}})},redirect_uris:function(e){const{currentValue:t,setNewValue:o}=e,r=t||[],[a,s]=d().useState(""),l=()=>s("");return n()(Y.ZP,{popupType:Y.ZP.PopupType.Popup,sameWidthAsOrigin:!0,open:a.length>0,onDismiss:l,origin:n()(ve.Z,{style:{background:F.ZP.white,minHeight:32,fontSize:15},placeholder:"",value:a,onChange:e=>s(e.target.value),tokens:r.map((e=>n()(be.Z,{format:Me.l.Medium,showRemoveButton:!0,isSingle:!1,value:e,onClickRemove:()=>{o(r.filter((t=>t!==e)))}},e))),onRemoveLastToken:()=>{r.length>0&&o(r.slice(0,r.length-1))}}),render:()=>{const e=a.trim(),t=(0,he.u)(ye.default.domainBaseUrl,e).map((e=>({key:e,render:t=>d().createElement(re.Z,i()({},t,{title:e})),action:()=>{l(),o([...r,e])}})));return n()(X.ZP,{menuType:X.ZP.MenuType.Popup},void 0,n()(j.Z,{type:j.Z.Type.Vertical,initialFocus:0,sections:[{key:"valid-redirect-uri-suggestion",items:t,render:e=>d().createElement(Q.Z,i()({},e,{title:n()(u.FormattedMessage,{id:"developerIntegrationsForm.redirectUri.typePrompt",defaultMessage:"Type a redirect uri…"})}))}]}))}})},website_url:_e,tagline:_e,privacy_policy_url:_e,terms_of_use_url:_e,email:_e};function _e(e){const{autoFocus:t,currentValue:o,setNewValue:r}=e;return n()(I.Z,{autoFocus:t,style:{background:F.ZP.white,height:32,fontSize:15},value:o,onChange:e=>r(e.target.value)})}},56200:(e,t,o)=>{o.d(t,{e:()=>g,T:()=>m});var r=o(98135),i=o.n(r),a=(o(33948),o(67294)),n=o.n(a),s=o(8848),l=o(82990),d=o(81710),u=o(89940),c=o(42001);function p(e){return"developer-integration-section-header-".concat(e)}function g(e){const{keyName:t}=e;return i()("div",{id:p(t),style:{fontSize:30,fontWeight:l.Z.fontWeight.bold,marginTop:24,marginBottom:24}},void 0,d.gO[t].title)}function m(e){const{type:t}=(0,u.Kw)(e.integrationFormStore),o=d.cW.filter((e=>d.gO[e].supportedBy[t])),[r,a]=n().useState(),g=r||o[0];return i()("div",{style:{display:"grid",gridTemplate:"none | auto | auto",marginTop:24,position:"sticky",top:16}},void 0,o.map((e=>i()("div",{},e,i()(c.Z,{style:{fontSize:15,height:28,marginTop:4,color:s.ZP.frontTextLight,width:"100%",...g===e&&{color:s.ZP.frontText,fontWeight:l.Z.fontWeight.medium}},onClick:()=>{const t=document.getElementById(p(e));t&&t.scrollIntoView(),a(e)}},void 0,d.gO[e].title)))))}},719:(e,t,o)=>{o.d(t,{Z:()=>f});var r=o(67154),i=o.n(r),a=o(98135),n=o.n(a),s=o(59713),l=o.n(s),d=(o(33948),o(67294)),u=o.n(d),c=o(66832),p=o(62727),g=o(98742);class m extends c.Z{constructor(...e){super(...e),l()(this,"handleKeyDown",(e=>{"Backspace"===e.key&&0===this.props.value.length&&this.props.onRemoveLastToken()}))}renderComponent(){const{device:e}=this.environment;return n()("div",{onClick:this.props.onClick,style:e.isMobile?this.getMobileWrapStyle():this.getDesktopWrapStyle()},void 0,this.props.tokens,this.renderInput())}renderInput(){const{device:e}=this.environment,t=0===this.props.tokens.length;return u().createElement(p.Z,i()({format:p.Z.Format.Transparent},(0,g.Z)({onKeyDown:this.handleKeyDown},{onChange:this.props.onChange}),{value:this.props.value,onSubmit:this.props.onSubmit,onBlur:this.props.onBlur,focus:this.props.focus,style:{...m.inputStyle,margin:e.isMobile?"0 8px 8px 0":"0 6px 6px 0"},readOnly:this.props.readOnly,inputStyle:{height:18},size:1,type:this.props.type,placeholder:t?this.props.placeholder:"",autoComplete:"off",autoCorrect:"off",autoCapitalize:"off",spellCheck:!1}))}getDesktopWrapStyle(){return{display:"flex",flexWrap:"wrap",alignItems:"flex-start",minHeight:32,boxShadow:this.theme.inputBoxShadow,background:this.theme.inputBackground,borderRadius:3,fontSize:14,cursor:"text",overflow:"hidden",padding:"7px 9px 0px",...this.props.style}}getMobileWrapStyle(){return{...this.getDesktopWrapStyle(),fontSize:14,padding:"7px 10px 0"}}}l()(m,"inputStyle",{flexGrow:1,flexShrink:1,flexBasis:60,minWidth:60,width:"auto",lineHeight:"20px"});const f=m},81710:(e,t,o)=>{o.d(t,{cW:()=>g,gO:()=>m,Rh:()=>f,yb:()=>b,x6:()=>y,hl:()=>h,Xk:()=>M,bd:()=>w,tm:()=>k,Xr:()=>I});var r=o(98135),i=o.n(r),a=(o(33948),o(67294),o(5366)),n=o(64442),s=o(97880),l=o(26178),d=o(74181),u=o(95477),c=o(33728),p=o(64002);const g=["secrets","basic","oauth"],m={secrets:{title:i()(a.FormattedMessage,{id:"developerIntegrationForm.sectionHeader.secrets",defaultMessage:"Secrets"}),supportedBy:{"create-bot":!1,"update-bot":!0,"create-integration":!0,"update-integration":!0},fields:["token","client_id","client_secret"]},basic:{title:i()(a.FormattedMessage,{id:"developerIntegrationForm.sectionHeader.basic",defaultMessage:"Basic information"}),supportedBy:{"create-bot":!0,"update-bot":!0,"create-integration":!0,"update-integration":!0},fields:["name","icon","space","submission_type"]},oauth:{title:i()(a.FormattedMessage,{id:"developerIntegrationForm.sectionHeader.oauth",defaultMessage:"OAuth Domain & URIs"}),supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},fields:["redirect_uris","website_url","tagline","privacy_policy_url","terms_of_use_url","email"]}},f={token:{supportedBy:{"create-bot":!1,"update-bot":!0,"create-integration":!0,"update-integration":!1},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.botToken.label",defaultMessage:"Internal Integration Token"})},client_id:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.integrationClientId.label",defaultMessage:"OAuth client ID"})},client_secret:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.integrationSecret.label",defaultMessage:"OAuth client secret"})},name:{supportedBy:{"create-bot":!0,"update-bot":!0,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!0,"update-bot":!0,"create-integration":!0,"update-integration":!0},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.name.label",defaultMessage:"Name"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.name.subtitle",defaultMessage:"Name to identify your integration to users."})},icon:{supportedBy:{"create-bot":!0,"update-bot":!0,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.icon.label",defaultMessage:"Logo"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.icon.subtitle",defaultMessage:"512px x 512px in PNG format is recommended."})},space:{supportedBy:{"create-bot":!0,"update-bot":!1,"create-integration":!1,"update-integration":!1},requiredBy:{"create-bot":!0,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.space.label",defaultMessage:"Associated workspace"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.space.subtitle",defaultMessage:"Select a workspace to install the integration to. You can upgrade the integration to use OAuth later."})},submission_type:{supportedBy:{"create-bot":!1,"update-bot":!0,"create-integration":!0,"update-integration":!1},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.submissionType.label",defaultMessage:"Integration type"})},redirect_uris:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.redirect_uris.label",defaultMessage:"Redirect URIs"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.redirect_uri.subtitle",defaultMessage:"Users will be redirected to this path after they have authenticated with Notion. The path will be appended with the authorization code for access and must have a protocol. It can’t contain URL fragments, relative paths or wildcards, and can’t be a public IP address."})},website_url:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.website_url.label",defaultMessage:"Website or homepage"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.website_url.subtitle",defaultMessage:"Used to link to your integration’s website or homepage in your integration page and authentication screens."})},tagline:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!1,"update-integration":!1},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.tagline.label",defaultMessage:"Tagline"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.tagline.subtitle",defaultMessage:"A short description of what the integration does."})},privacy_policy_url:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.privacy_policy_url.label",defaultMessage:"Privacy policy"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.privacy_policy_url.subtitle",defaultMessage:"Used to link to your integration’s privacy policy in your integration page and authentication screens."})},terms_of_use_url:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.terms_of_use_url.label",defaultMessage:"Terms of use"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.terms_of_use_url.subtitle",defaultMessage:"Used to link to your integration’s terms of use in your integration page and authentication screens."})},email:{supportedBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},requiredBy:{"create-bot":!1,"update-bot":!1,"create-integration":!0,"update-integration":!0},label:i()(a.FormattedMessage,{id:"developerIntegrationForm.email.label",defaultMessage:"Support email"}),subtitle:i()(a.FormattedMessage,{id:"developerIntegrationForm.email.subtitle",defaultMessage:"Used to link to your integration’s support email in your integration page and authentication screens."})}},v={value:void 0,error:void 0},b={token:v,client_id:v,client_secret:v,name:v,icon:v,space:v,submission_type:v,tagline:v,email:v,website_url:v,privacy_policy_url:v,terms_of_use_url:v,redirect_uris:v};function y(e,t){return"error"in t?{...e,[t.field]:{...e[t.field],error:t.error}}:{...e,[t.field]:{...e[t.field],...t.value&&{error:void 0},value:t.value}}}function h(e){const{userRootStore:t,formStoreState:o}=e;if("create-bot"===o.type){return{token:void 0,client_id:void 0,client_secret:void 0,name:void 0,icon:void 0,space:(t?t.getAdminSpaceStores():[])[0],submission_type:o.recordTypeOnSubmission,tagline:void 0,email:void 0,website_url:void 0,privacy_policy_url:void 0,terms_of_use_url:void 0,redirect_uris:void 0}}if("update-bot"===o.type||"create-integration"===o.type){const e=o.startingRecord.value,r=t&&n.Z.createChildStore(t,{id:e.space_id,table:l.bx});return{token:o.startingRecord,client_id:void 0,client_secret:void 0,name:e.name,icon:e.icon,space:r,submission_type:o.recordTypeOnSubmission,tagline:void 0,email:void 0,website_url:void 0,privacy_policy_url:void 0,terms_of_use_url:void 0,redirect_uris:void 0}}if("update-integration"===o.type){const e=o.startingRecord.value;return{token:void 0,client_id:o.startingRecord,client_secret:o.startingRecord,name:e.name,icon:e.info.icon,space:void 0,submission_type:o.recordTypeOnSubmission,tagline:e.info.tagline,email:e.info.email,website_url:e.info.website_url,privacy_policy_url:e.info.privacy_policy_url,terms_of_use_url:e.info.terms_of_use_url,redirect_uris:e.redirect_uris}}(0,s.t1)(o)}function M(e){const{formData:t,formStateType:o}=e,r=[];for(const i of(0,s.Yd)(f)){const e=t[i].value;f[i].requiredBy[o]&&!e&&r.push(i)}return r}function S(e){const t=p.yn(e);if(!t)return!1;return!!p.Qc(t).hostname}function F(e){const t=p.yn(e);if(!t||!e)return;const o=t[t.length-1],r=e[e.length-1];return"/"===o&&"/"!==r?t.slice(0,t.length-1):t}const _={email:function(e){const t=c.H3(e);return!!t&&c.oH(t)},redirect_uris:e=>e.every((e=>(0,d.m)(u.default.domainBaseUrl,e))),website_url:S,privacy_policy_url:S,terms_of_use_url:S};function w(e){const{formData:t,formStateType:o}=e,r=[];for(const i of(0,s.Yd)(t)){const e=t[i].value,a=f[i].supportedBy[o],n=_[i];a&&e&&n&&(n(e)||r.push(i))}return r}function k(e){const{formData:t,formStateType:o}=e;return(0,s.Yd)(t).some((e=>f[e].supportedBy[o]&&t[e].error))}function I(e){return{token:e.token.value,client_id:e.client_id.value,client_secret:e.client_secret.value,name:e.name.value,icon:e.icon.value,space:e.space.value,submission_type:e.submission_type.value,redirect_uris:(e.redirect_uris.value||[]).map((e=>F(e))),website_url:F(e.website_url.value),tagline:e.tagline.value,privacy_policy_url:F(e.privacy_policy_url.value),terms_of_use_url:F(e.terms_of_use_url.value),email:c.H3(e.email.value)}}},85227:(e,t,o)=>{o.d(t,{Z:()=>s});var r=o(7170),i=o(1985),a=o(52016);class n extends a.Z{getInitialState(){return{type:"create-bot",startingRecord:void 0,recordTypeOnSubmission:r.c}}updateRecordTypeOnSubmission(e){"create-integration"===this.state.type&&e===r.c&&this.setState({type:"update-bot",startingRecord:this.state.startingRecord,recordTypeOnSubmission:r.c}),"update-bot"===this.state.type&&e===i.K&&this.setState({type:"create-integration",startingRecord:this.state.startingRecord,recordTypeOnSubmission:i.K})}initializeNewForm(e){e.table===r.c&&this.setState({type:"update-bot",startingRecord:e,recordTypeOnSubmission:r.c}),e.table===i.K&&this.setState({type:"update-integration",startingRecord:e,recordTypeOnSubmission:i.K})}}const s=n},74181:(e,t,o)=>{o.d(t,{m:()=>a,u:()=>n});var r=o(64002),i=o(97880);function a(e,t){const o=r.yn(t);if(!o)return!1;const i=r.Qc(o);if(!i.hostname)return!1;if("http:"===i.protocol&&"localhost"===i.hostname)return!0;if("https:"!==i.protocol)return!1;const{hostname:a}=r.Qc(e);if(!a)return!1;const n=a.split(".").slice(-2,-1).join("."),s="".concat(n,".so"),l="".concat(n,".com");return i.hostname!==s&&!i.hostname.endsWith(".".concat(s))&&i.hostname!==l&&!i.hostname.endsWith(".".concat(l))}function n(e,t){const o=t.match(/^(h|$)(t|$)(t|$)(p|$)(s|$)(:|$)(\/|$)(\/|$).*$/),r=t.match(/^(h|$)(t|$)(t|$)(p|$)(:|$)(\/|$)(\/|$).*$/);return[t,o?void 0:"https://".concat(t),r?void 0:"http://".concat(t)].filter(i.$K).filter((t=>t&&a(e,t)))}}}]);