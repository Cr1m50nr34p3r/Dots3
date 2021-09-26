"use strict";(self.webpackChunknotion_next=self.webpackChunknotion_next||[]).push([[370],{93683:(e,t,i)=>{i.r(t),i.d(t,{default:()=>Te});var o=i(98135),s=i.n(o),n=i(59713),r=i.n(n),a=(i(33948),i(85827),i(15306),i(67294)),d=i.n(a),l=i(3779),c=i(66832),h=i(82990),g=i(72693),p=i(47966),u=i(36110),m=i(67154),S=i.n(m),v=i(37871),y=i(83071),f=i(77420),k=i(27832),b=i(81236),P=i(17364),w=i(5366),M=i(45094),x=i(55138),A=i(38755),I=i(7313),Z=i(31280),C=i(34011),T=i(97148);class z extends Z.g6{renderAccountHeader(e){const t=P.Z.getUserEmailAddress(this.environment,e);return t&&s()(f.Z,{emailAddress:t,userId:e,disabled:!1,accountActions:[(0,I.qu)(e)]})}renderFooter(){return s()("div",{style:this.getFooterStyle()},void 0,s()(y.Z,{},void 0,v.k(this.environment)&&d().createElement(x.Z,S()({createType:"add-account",disableLoginLink:this.props.disableLoginLink},this.stores))))}getMenuListSections(e){const{device:t}=this.environment;return[{key:"spaces",render:e=>d().createElement(y.Z,S()({},e,{disableMobilePadding:!0,topBorder:t.isMobile,style:{borderBottom:"1px solid ".concat(this.theme.regularDividerColor)}})),items:this.getSpaceMenuListItems(e)}]}getSpaceMenuListItems(e){const{onSpaceClick:t}=this.props,i=[],{currentUserRootStore:o,currentSpaceStore:n}=k.default.state,r=P.Z.getSpaceViewStores(this.environment,e);if(!o||!n)return[];const a="on"===T.default.getGroup(this.environment,"pied-piper");r.sort(((e,t)=>{var i,o;const s=Number(Boolean(null===(i=e.getSpaceStore())||void 0===i?void 0:i.canAdmin()));return Number(Boolean(null===(o=t.getSpaceStore())||void 0===o?void 0:o.canAdmin()))-s}));for(const l of r){const r=l.getSpaceStore();if(r){const c=e===o.id&&r.id===n.id,h=(0,A.getSpaceName)(this.environment,r),g=r.canAdmin(),p=!r.canRead()||!a&&!g;let u;const m=b.Z.getPublicSpaceData(this.environment,r.id);if(m){const e=m.productId?this.props.intl.formatMessage((0,M.em)(m.productId)):this.props.intl.formatMessage("team"===r.getPlanType()?M.js.teamTrialPlan:M.js.personalPlan);u=this.props.intl.formatMessage("personal"===r.getPlanType()?M.js.workspaceSubtitleWithoutMembers:M.js.workspaceSubtitleWithMembers,{numberOfWorkspaceMembers:this.props.intl.formatNumber(m.memberCount),planType:e})}i.push({key:l.id,render:e=>d().createElement(C.Z,S()({},e,{id:l.id,icon:(0,A.getSpaceIcon)(this.environment,r),title:h,caption:u,isCheck:c,showDragHandle:!1,disabled:p,disableTooltip:!p,tooltipMessage:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.workspaceSwitcher.disabledWorkspace.tooltip",defaultMessage:"This integration can only be added by someone with Admin access."})})),action:async({event:e})=>{this.close(),c||await t({event:e,spaceViewStore:l})}})}}return i}getUnreadCountForOtherSpaces(){return 0}}const B=(0,w.injectIntl)(z);var N=i(29974),E=i(12318),F=i(68932),L=i(90031),_=i(1985),W=i(7170),R=i(4615),U=i(64215),V=i(8848),D=i(82036),O=i(56589),j=i(40039),q=i(9852),H=i(89101),K=i(26111),G=i(62213),J=i(42402),Y=i(85404),Q=i(28020),$=i(26435),X=i(48762),ee=i(82970),te=i(62727),ie=i(25584),oe=i(14694),se=i(79029),ne=i(28452);class re extends ne.Z{renderComponent(){const{isMobile:e,nestingLevel:t}=this.props;return d().createElement(X.Z,S()({},this.props,{title:s()(oe.Z,{childrenStyle:re.sidebarChildrenStyle,left:this.renderLeftCheckbox(),icon:this.renderIcon(),isMobile:e,style:{marginLeft:8*t}},void 0,this.renderTitle())}))}renderLeftCheckbox(){return s()(ee.Z,{size:16,checked:this.props.isChecked,onClick:this.props.onClick})}renderIcon(){const{store:e,isMobile:t}=this.props,i=e.getIcon();return s()(j.Z,{disabled:!0,icon:i,title:void 0,isEmptyPage:e.isEmptyPage(),size:t?24:20,pageIconStyle:{fill:this.theme.mediumIconColor}})}renderTitle(){return s()(se.Z,{store:this.props.store})}}r()(re,"sidebarChildrenStyle",{display:"flex",alignItems:"center"});const ae=re;var de=i(15692),le=i(59054),ce=i(58879),he=i(31299),ge=i(95009),pe=i(24042),ue=i(16328),me=i(78948),Se=i(27006),ve=i(97880);function ye(e){const{spaceId:t,onSelectPage:i,query:o,source:n,findSelectedBlockAncestorId:r}=e,a=(0,ce.O7)();let l=null;const[{status:c,value:h}]=(0,le.r5)((async()=>await he.kz({environment:a,query:o,limit:10,requireEditPermissions:!0,spaceId:t,excludeTemplates:!0,source:n})),[a,o,t,n],{debounce:he.vp});if("idle"===c||"pending"===c)l=s()(y.Z,{},void 0,s()(me.Z,{}));else{const e=((null==h?void 0:h.results)||[]).map((({id:e})=>{const t=new $.Z(a,{table:Y.iU,id:e});return function(e){const{store:t,environment:i,alreadySelectedAncestorId:o,onSelectPage:n}=e;if(o&&o===t.id)return{key:t.id,action:()=>{},render:e=>d().createElement(pe.Z,S()({},e,{store:t,hidePath:!0,disabled:!0,style:{opacity:.5},caption:s()(w.FormattedMessage,{id:"oauthPageSearchResults.disabledResult.bySelf.message",defaultMessage:"Already added"})}))};if(o){const e=new $.Z(i,{table:Y.iU,id:o});return{key:t.id,action:()=>{},render:i=>d().createElement(pe.Z,S()({},i,{store:t,hidePath:!0,disabled:!0,style:{opacity:.5},caption:s()(w.FormattedMessage,{id:"oauthPageSearchResults.disabledResult.byAncestor.message",defaultMessage:"Already added via {ancestorPageName}",values:{ancestorPageName:s()(se.Z,{store:e,style:{display:"inline"}})}})}))}}const r=t.getRole();return r&&Se.zz(r)?{key:t.id,action:()=>n(t.id),render:e=>d().createElement(pe.Z,S()({store:t,hidePath:!1},e))}:void 0}({store:t,alreadySelectedAncestorId:r(t),environment:a,onSelectPage:i})})).filter(ve.$K);l=0===e.length?s()(y.Z,{},void 0,s()(ue.Z,{title:s()(w.FormattedMessage,{id:"oauthPageSearchResults.noResults.placeholder",defaultMessage:"No results"})})):function(e){return s()(ie.Z,{type:ie.Z.Type.Vertical,initialFocus:void 0,sections:[{key:"results",items:e,render:e=>d().createElement(y.Z,e)}]})}(e)}const g={menuType:ge.ZP.MenuType.Popup};return d().createElement(ge.ZP,g,l)}var fe=i(81997);class ke extends c.Z{constructor(...e){super(...e),r()(this,"sidebarState",this.createComputedStore((()=>(0,Q.vK)(this.environment)))),r()(this,"storeTypes",{selectedBlockIdsStore:E.Z.of({}),searchStore:E.Z.of({open:!1,query:void 0})}),r()(this,"getPageSection",((e,t,i)=>{const o=i.filter((e=>Se.zz(e.getRole()||"none")));return{key:e,render:e=>d().createElement(y.Z,e),items:[this.getPageSectionHeader(t,o),...0===o.length?[this.getEmptyState()]:o.map((e=>this.getPageItem(e,1)))]}})),r()(this,"getPageItem",((e,t)=>{const{selectedBlockIdsStore:i}=this.stores,{device:o}=this.environment,s=i.state[e.id];return{key:e.id,action:()=>this.props.onClickPage(e.id,s),render:i=>d().createElement(ae,S()({},i,{isMobile:o.isMobile,store:e,isChecked:s,disabled:!1,nestingLevel:t}))}})),r()(this,"getPageSectionHeader",((e,t)=>{const{selectedBlockIdsStore:i}=this.stores,{device:o}=this.environment,n=t.length>0&&t.every((e=>i.state[e.id]));return{key:e,action:()=>this.props.onClickSection(t),render:t=>d().createElement(X.Z,S()({},t,{title:s()(oe.Z,{left:s()(ee.Z,{onClick:t.onClick,checked:n,size:16}),isMobile:o.isMobile,style:this.getSectionHeaderStyle()},void 0,e)}))}})),r()(this,"getEmptyState",(()=>{const{device:e}=this.environment;return{key:"empty",action:()=>{},render:t=>d().createElement(X.Z,S()({},t,{title:s()(oe.Z,{isMobile:e.isMobile,style:{fontSize:14,color:this.theme.mediumTextColor,padding:"2px 32px"}},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.selectPageStep.empty",defaultMessage:"No pages inside"}))}))}})),r()(this,"handleSearchQueryChange",(e=>{const t=this.stores.searchStore.state,i=e.length>0;this.stores.searchStore.setState({...t,query:e,open:i})})),r()(this,"handleSearchCancel",(()=>{const e=this.stores.searchStore.state;this.stores.searchStore.setState({...e,open:!1,query:void 0})})),r()(this,"findSelectedBlockAncestorId",(e=>{const{selectedBlockIdsStore:t}=this.stores;if(t.state[e.id])return e.id;const i=fe.fJ(e).find((e=>e.table===Y.iU&&t.state[e.value.id]));return i?i.value.id:void 0}))}renderComponent(){const{intl:e}=this.props,{searchStore:t,selectedBlockIdsStore:i}=this.stores,{device:o}=this.environment;if(!this.sidebarState.state)return s()(F.Z,{});const{allSharedPagesStores:n,showWorkspaceSection:r,showSharedSection:a,showPrivateSection:c,showOnlyPrivateSection:h}=this.sidebarState.state,{currentSpaceViewStore:g,currentSpaceStore:p}=k.default.state;if(!g||!p)return;const u=g.getWorkspacePages().filter((e=>e.state.value&&"copy_indicator"!==e.state.value.type)),m=g.getPrivatePages(this.environment).filter((e=>e.state.value&&"copy_indicator"!==e.state.value.type)),v=Object.keys(i.state).filter((e=>i.state[e])).map((e=>new $.Z(this.environment,{table:Y.iU,id:e}))).filter((e=>{var t;return(null===(t=e.state.value)||void 0===t?void 0:t.space_id)===p.id&&e.isNavigableBlock()&&!e.isTopLevelPrivatePage(p.id,this.environment)&&!e.isTopLevelWorkspacePage(p.id)&&!n.some((t=>t.id===e.id))})),f=(0,A.getSpaceName)(this.environment,p),b=[];if(v.length>0&&b.push({key:"manual",render:e=>d().createElement(y.Z,S()({},e,{title:s()(oe.Z,{isMobile:o.isMobile,style:this.getSectionHeaderStyle()},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.selectPagesStep.pagePicker.manuallyAddedPagesSection.title",defaultMessage:"Manually added"})),isTitleUppercase:!0})),items:v.map((e=>this.getPageItem(e,0)))}),r&&b.push(this.getPageSection("workspace",e.formatMessage({id:"oauthAuthorizationPage.selectPagesStep.pagePicker.workspaceSection.title",defaultMessage:"Workspace",description:"This word is used in the same context as the title for the Workspace section of the sidebar."}),u)),a&&b.push(this.getPageSection("shared",e.formatMessage({id:"oauthAuthorizationPage.selectPagesStep.pagePicker.sharedSection.title",defaultMessage:"Shared",description:"This word is used in the same context as the title for the Shared section of the sidebar."}),n)),c){const t=h?f||"":e.formatMessage({id:"oauthAuthorizationPage.selectPagesStep.pagePicker.privateSection.title",defaultMessage:"Private",description:"This word is used in the same context as the title for the Private section of the sidebar."});b.push(this.getPageSection("private",t,m))}return d().createElement(d().Fragment,null,s()(de.GI,{origin:s()(te.Z,{focus:!0,focusAfterAnimation:!0,value:t.state.query||"",onChange:e=>{this.handleSearchQueryChange(e.target.value)},left:l.Z.searchThick(this.getSearchIconStyle()),placeholder:e.formatMessage({id:"oauthAuthorizationPage.selectPagesStep.pagePicker.search.placeholder",defaultMessage:"Search for pages in {workspaceName}"},{workspaceName:f})}),sameWidthAsOrigin:!0,popupType:de.GI.PopupType.Popup,open:t.state.open,render:()=>s()(ye,{spaceId:p.id,onSelectPage:e=>this.props.onClickPage(e,!1),query:t.state.query||"",source:"oauth",findSelectedBlockAncestorId:this.findSelectedBlockAncestorId}),onDismiss:this.handleSearchCancel}),s()("div",{style:this.getPageListStyle()},void 0,s()(ie.Z,{type:ie.Z.Type.Vertical,sections:b,initialFocus:void 0})))}getSectionHeaderStyle(){return{textTransform:"uppercase",fontSize:12,fontWeight:600,color:this.theme.mediumTextColor,padding:"2px 0"}}getPageListStyle(){return{alignItems:"left",width:"100%",height:380,borderWidth:1,borderStyle:"solid",borderColor:V.ZP.contentBorder,overflowY:"auto"}}getSearchIconStyle(){return{width:14,height:14,marginLeft:8,marginRight:8,flexGrow:0,flexShrink:0,fill:this.theme.mediumIconColor}}}const be=(0,w.injectIntl)(ke);var Pe=i(21325),we=i(78291),Me=i(1643),xe=i(26178),Ae=i(85419),Ie=i(90965);class Ze extends c.Z{constructor(...e){super(...e),r()(this,"storeTypes",{authorizationStepStore:E.Z.of("permissions"),selectedBlockIdsStore:E.Z.of({}),existingBotStore:E.Z.of(void 0),botParentTableStore:E.Z.of(Ae.KJ)}),r()(this,"renderErrorOrAuthorizationPage",(()=>{const{responseType:e,integrationId:t}=this.props,{existingBotStore:i}=this.stores,{currentUserRootStore:o,currentSpaceStore:n,currentSpaceViewStore:r,currentUserSettingsStore:a}=k.default.state;if(!(o&&n&&r&&a))return;const d=(0,A.getSpaceName)(this.environment,n);if(!t||!(0,R.e)(t))return this.renderError({type:D._.invalid_request,body:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.invalidClientId.body",defaultMessage:"Missing or incomplete Client ID. See <inlinetextlink>developer docs</inlinetextlink> for more help.",values:{inlinetextlink:(...e)=>s()(J.Z,{href:"https://developers.notion.com/#handling-errors"},void 0,e)}}),integration:void 0});const l=(0,L.Kv)(o,{table:_.K,id:t});return l.isReady()?l.state.value?"code"!==e?this.renderError({type:D._.invalid_request,body:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.invalidResponseType",defaultMessage:"Missing or invalid response_type. See <inlinetextlink>developer docs</inlinetextlink> for more help.",values:{inlinetextlink:(...e)=>s()(J.Z,{href:"https://developers.notion.com/#handling-errors"},void 0,e)},description:"Do not translate 'response_type', it's code."}),integration:l.state.value}):i.state&&i.state.created_by_id!==o.id?this.renderError({type:D._.access_denied,title:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.integrationAlreadyInstalled.title",defaultMessage:"This integration has already been added to {workspaceName}",values:{workspaceName:d}}),body:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.integrationAlreadyInstalled.body",defaultMessage:"You can review and remove added integrations in Settings."}),integration:l.state.value,primaryAction:s()(g.Z,{isLarge:!0,onClick:()=>{u.Hx({environment:this.environment,spaceViewStore:r,spaceStore:n,userSettingsStore:a,userRootStore:o})}},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.integrationAlreadyInstalled.openWorkspaceSettingsButton.label",defaultMessage:"Open Settings"}))}):this.renderAuthorizationPage(l.state.value):this.renderError({type:D._.invalid_request,body:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.clientNotFound.body",defaultMessage:"Missing or incomplete Client ID. See <inlinetextlink>developer docs</inlinetextlink> for more help.",values:{inlinetextlink:(...e)=>s()(J.Z,{href:"https://developers.notion.com/#handling-errors"},void 0,e)}}),integration:l.state.value}):s()(F.Z,{})})),r()(this,"initializeStores",(async()=>{const{integrationId:e}=this.props,{selectedBlockIdsStore:t,existingBotStore:i}=this.stores,{currentUserRootStore:o,currentSpaceStore:s}=k.default.state;if(!o||!s)return;await Pe.bi(this.environment);const{data:n}=we.default.state;if(!n)return;const r=Me.NM(n),a=await Promise.all(r.map((async e=>{const t=(0,L.Kv)(o,{table:W.c,id:e.botId});return await t.load(),t.getValue()}))),d=this.getBotParentTable(),l=d===Ae.KJ?o.id:s.id,c=a.find((t=>t&&t.alive&&t.parent_table===d&&t.parent_id===l&&t.integration_id===e));if(!c)return i.reset(),void t.reset();i.setState(c);const h=r.find((e=>e.botId===c.id));h&&t.setState(h.pageIds.reduce(((e,t)=>(e[t]=!0,e)),{}))})),r()(this,"switchToPagePickerStep",(()=>{this.stores.authorizationStepStore.setState("page_picker")})),r()(this,"switchToPermissionsStep",(()=>{this.stores.authorizationStepStore.setState("permissions")})),r()(this,"handleSpaceSwitch",(async e=>{const{spaceViewStore:t}=e;await N.ce({environment:this.environment,spaceViewStore:t}),await this.initializeStores()})),r()(this,"handleCancel",(e=>{u.VW({environment:this.environment,params:this.props,integration:e,errorType:D._.access_denied})})),r()(this,"handleAuthorize",((e,t)=>{const{selectedBlockIdsStore:i}=this.stores,o=this.getBotParentTable();u.VW({environment:this.environment,params:this.props,integration:e,spaceId:t,blockIdsForBot:Object.keys(i.state).filter((e=>i.state[e])),parentTable:o})})),r()(this,"handleClickPage",((e,t)=>{const{selectedBlockIdsStore:i}=this.stores;i.setState({...i.state,[e]:!t})})),r()(this,"handleClickSection",(e=>{const{selectedBlockIdsStore:t}=this.stores,i=e.every((e=>t.state[e.id]));t.setState({...t.state,...e.reduce(((e,t)=>(e[t.id]=!i,e)),{})})})),r()(this,"togglePersonalIntegrations",(async()=>{const{botParentTableStore:e}=this.stores;e.state===Ae.KJ?e.setState(xe.bx):e.state===xe.bx?e.setState(Ae.KJ):(0,ve.t1)(e.state),await this.initializeStores()}))}willMount(){const{responseType:e,integrationId:t,redirectUri:i,state:o}=this.props;q.setOauthAuthorizationParams({responseType:e,integrationId:t,redirectUri:i,state:o})}async didMount(){const{currentSpaceStore:e,currentSpaceViewStore:t}=k.default.state;e&&t&&e.canAdmin()?await this.initializeStores():await this.setCurrentSpaceToFirstAdminSpace()}renderComponent(){const{currentSpaceStore:e}=k.default.state;if(e)return s()("div",{style:this.getLayoutContainerStyle()},void 0,s()("div",{style:this.getPageContainerStyle()},void 0,s()("div",{style:this.getContentBoxStyle()},void 0,this.renderTopbar(),s()("div",{style:this.getContentBodyStyle()},void 0,this.renderErrorOrAuthorizationPage()))))}renderAuthorizationPage(e){const{redirectUri:t}=this.props,{authorizationStepStore:i}=this.stores,{currentSpaceStore:o,currentSpaceViewStore:n}=k.default.state;if(!o||!n)return;const r=(0,A.getSpaceName)(this.environment,o);return o.state.value&&!this.isOauthDisabledByAdmin&&(this.isPersonalIntegrationsEnabled||o.canAdmin())&&o.canRead()?O._(e,t)?"permissions"===i.state?this.renderPermissionsStep(e,o):"page_picker"===i.state?this.renderPagePickerStep(e,o):(0,ve.t1)(i.state):this.renderError({type:D._.invalid_request,body:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.invalidRedirectUri.body",defaultMessage:"Missing or invalid redirect_uri. See <inlinetextlink>developer docs</inlinetextlink> for more help.",values:{inlinetextlink:(...e)=>s()(J.Z,{href:"https://developers.notion.com/#handling-errors"},void 0,e)},description:"Do not translate 'redirect_uri', it's code."}),integration:e}):this.renderError({type:D._.access_denied,title:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.notAnAdmin.title",defaultMessage:"You're not allowed to add integrations to {workspaceName}",values:{workspaceName:r}}),body:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.notAnAdmin.body",defaultMessage:"Contact an admin to grant you access, or switch to another workspace."}),integration:e,primaryAction:s()(g.Z,{isLarge:!0,onClick:()=>G.Z.setState({...G.Z.state,open:!0})},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.notAnAdmin.switchWorkspaceButton.label",defaultMessage:"Switch workspace"}))})}renderPermissionsStep(e,t){const i=(0,A.getSpaceName)(this.environment,t),o=e.info.website_url,n=e.info.terms_of_use_url,r=e.info.privacy_policy_url,a=e.info.icon?{pointer:{table:_.K,id:e.id},icon:e.info.icon}:void 0,c=this.props.redirectUri?this.props.redirectUri.replace("http://","").replace("https://","").split(/[/?#]/)[0]:void 0;return d().createElement(d().Fragment,null,s()("div",{style:{padding:15}},void 0,s()(j.Z,{icon:a,disabled:!0,title:e.name,size:54,isEmptyPage:!1,style:{margin:"auto"}})),s()("div",{style:this.getTitleStyle()},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.title",defaultMessage:"<inlinetextlink>{integrationName}</inlinetextlink> wants to access {workspaceName}",values:{integrationName:e.name,workspaceName:i,inlinetextlink:(...e)=>o?s()(J.Z,{style:{...this.getInlineTextLinkStyle(),fontWeight:h.Z.fontWeight.semibold},href:o},void 0,e):e}})),s()("div",{style:{marginBottom:8}},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.intro",defaultMessage:"<inlinetextlink>{integrationName}</inlinetextlink> wants to",values:{integrationName:e.name,inlinetextlink:(...e)=>o?s()(J.Z,{href:o,style:this.getInlineTextLinkStyle()},void 0,e):e}})),s()(Ce,{icon:l.Z.pencil,title:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.permissionListItem.viewAndEditPages",defaultMessage:"View and edit pages you select",description:"This is one of the things an integration can do once it's added to a user's workspace."})},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.permissionListItem.viewAndEditPages.description",defaultMessage:"{integrationName} will be able to view and edit pages you select in the next step. You can also share pages later with the {integrationName} via the Share menu.",values:{integrationName:e.name,workspaceName:i}})),s()(Ce,{icon:l.Z.plus,title:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.permissionListItem.addNewPages",defaultMessage:"Add new pages to {workspaceName}",values:{workspaceName:i},description:"This is one of the things an integration can do once it's added to a user's workspace."})},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.permissionListItem.addNewPages.details",defaultMessage:"{integrationName} will be able to add new pages inside pages it has access to.",values:{integrationName:e.name}})),s()(Ce,{icon:l.Z.settingsMembers,title:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.permissionListItem.viewUsers",defaultMessage:"View names and emails",description:"This is one of the things an integration can do once it's added to a user's workspace."})},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.permissionListItem.viewUsers.detail",defaultMessage:"{integrationName} will be able to see all workspace members and guests and their email addresses.",values:{integrationName:e.name}})),this.renderOptionButtons({leftText:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.cancelButton.label",defaultMessage:"Cancel"}),leftAction:()=>this.handleCancel(e),rightText:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.continueButton.label",defaultMessage:"Select pages",description:"This button will take a user to a screen where they can choose pages to share with an integration."}),rightAction:this.switchToPagePickerStep}),this.isPersonalIntegrationsEnabled&&t.canAdmin()&&s()("div",{onClick:this.togglePersonalIntegrations,style:{cursor:"pointer",display:"flex",marginTop:24,alignItems:"center"}},void 0,s()(ee.Z,{style:{marginRight:12,color:V.ZP.uiGray},checked:this.getBotParentTable()===xe.bx,size:16}),s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.createSpaceLevelIntegrationCheckbox.label",defaultMessage:"Share integration with everyone at {workspaceName}",values:{workspaceName:i}})),s()("footer",{style:this.getFooterStyle()},void 0,s()("div",{style:{color:this.theme.regularTextColor,fontWeight:h.Z.fontWeight.semibold,marginBottom:4}},void 0," ",s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.warning.title",defaultMessage:"Make sure you trust {integrationName} ({redirectUriDomain})",values:{integrationName:e.name,redirectUriDomain:c}})),s()("div",{},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.permissionStep.warning.body",defaultMessage:"If you continue, you may be sharing sensitive information. Notion does not review third party integrations such as {integrationName}. Learn how {integrationName} handles your data by reviewing their <privacypolicylink>Privacy Policy</privacypolicylink> and <termsofservicelink>Terms of Service</termsofservicelink>.",values:{integrationName:e.name,privacypolicylink:(...e)=>r?s()(J.Z,{href:r},void 0,e):e,termsofservicelink:(...e)=>n?s()(J.Z,{href:n},void 0,e):e}}))))}renderPagePickerStep(e,t){return d().createElement(d().Fragment,null,s()("div",{style:this.getSubtitleStyle()},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.selectPagesStep.title",defaultMessage:"Allow {integrationName} to access these pages",values:{integrationName:e.name}})),s()(be,{onClickPage:this.handleClickPage,onClickSection:this.handleClickSection,selectedBlockIdsStore:this.stores.selectedBlockIdsStore}),this.renderOptionButtons({leftText:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.selectPagesStep.backButton.label",defaultMessage:"Back"}),leftAction:this.switchToPermissionsStep,rightText:s()(w.FormattedMessage,{id:"oauthAuthorizationPage.selectPagesStep.finishButton.label",defaultMessage:"Allow access",description:"This button, once clicked, adds an integration to a user's workspace and automatically gives it access to a set of pages the user selected."}),rightAction:()=>this.handleAuthorize(e,t.id)}))}renderTopbar(){const{isMobile:e}=this.environment.device;return s()("div",{style:{display:"flex",alignItems:"center",justifyContent:"space-between",height:60,paddingLeft:20,paddingRight:8,borderBottomWidth:1,borderBottomStyle:"solid",borderBottomColor:V.ZP.contentBorder}},void 0,l.Z.notionLogoStroked({width:e?28:30,height:e?28:30,marginRight:10,flexShrink:0}),s()("div",{style:{fontWeight:h.Z.fontWeight.medium,fontSize:16}},void 0,"Notion"),s()("div",{style:{flexGrow:1,flexShrink:1}}),s()("div",{style:{flexShrink:0}},void 0,s()(B,{format:Z._S.Regular,onSpaceClick:({spaceViewStore:e})=>this.handleSpaceSwitch({spaceViewStore:e}),shouldShowUnexpandButton:!1,disableLoginLink:!0,buttonStyle:{borderRadius:3,marginBottom:0}})))}renderOptionButtons(e){return s()("div",{style:this.getButtonGroupStyle()},void 0,s()(p.Z,{isLarge:!0,onClick:e.leftAction,style:{height:32}},void 0,e.leftText),s()(g.Z,{isLarge:!0,onClick:e.rightAction},void 0,e.rightText))}renderError({integration:e,type:t,title:i,body:o,primaryAction:n}){const r=i||s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.genericError.title",defaultMessage:"Something went wrong"});return s()("section",{style:this.getErrorContainerStyle()},void 0,l.Z.genericError(this.getErrorIconStyle()),s()("header",{style:{...this.getTitleStyle(),marginBottom:12}},void 0,r),o&&s()("p",{style:this.getErrorBodyStyle()},void 0,o),n&&s()("div",{style:this.getErrorBodyStyle()},void 0,n),s()(p.Z,{onClick:()=>{u.VW({environment:this.environment,integration:e,errorType:t,params:this.props})}},void 0,s()(w.FormattedMessage,{id:"oauthAuthorizationPage.error.cancelButton.label",defaultMessage:"Cancel"})))}get isPersonalIntegrationsEnabled(){return"on"===T.default.getGroup(this.environment,"pied-piper")}get isOauthDisabledByAdmin(){const{currentSpaceStore:e}=k.default.state;if(!e||!e.state.value)return!1;return(0,Ie.xI)(e.state.value).disablePersonalBots}async setCurrentSpaceToFirstAdminSpace(){const{currentUserRootStore:e}=k.default.state;if(e){const t=e.getSpaceViewStores();if(t.length>0){const e=t.find((e=>e.canAdmin()));return void(await this.handleSpaceSwitch({spaceViewStore:e||t[0]}))}}K.navigate({environment:this.environment,url:H._j.login,redirect:!0})}getBotParentTable(){return this.isPersonalIntegrationsEnabled?this.stores.botParentTableStore.state:xe.bx}getLayoutContainerStyle(){const{WindowSizeStore:e}=this.environment;return{height:"100%",overflow:"auto",backgroundColor:e.state.width>500?V.ZP.frontCreamBackground:V.ZP.white}}getPageContainerStyle(){return{display:"flex",justifyContent:"center"}}getContentBoxStyle(){const{WindowSizeStore:e}=this.environment,t=e.state.width>500,i=e.state.height<600?16:t?"calc((100vh - 600px) / 2)":0,o=t?this.theme.lightBoxShadow:"none";return{width:"500px",minHeight:"600px",borderRadius:5,backgroundColor:V.ZP.white,boxShadow:o,display:"flex",flexDirection:"column",fontSize:h.Z.fontSize.UIRegular.desktop,marginTop:i,transition:"all 0.2s ease"}}getContentBodyStyle(){return{paddingLeft:40,paddingRight:40,paddingTop:25,paddingBottom:25,flex:1,display:"flex",flexDirection:"column"}}getFooterStyle(){return{fontSize:h.Z.fontSize.UISmall.desktop,color:this.theme.mediumTextColor,paddingTop:32,paddingBottom:16}}getTitleStyle(){const{device:e}=this.environment;return{fontSize:e.isMobile?18:20,margin:"0 50px 32px",textAlign:"center",fontWeight:h.Z.fontWeight.medium}}getSubtitleStyle(){return{fontSize:14,textAlign:"center",fontWeight:h.Z.fontWeight.medium,marginBottom:16}}getButtonGroupStyle(){return{display:"grid",gridTemplateColumns:"1fr 1fr",gap:8,marginTop:24}}getErrorContainerStyle(){return{textAlign:"center",flex:1,display:"flex",flexDirection:"column",alignItems:"center",justifyContent:"center"}}getErrorIconStyle(){const{device:e}=this.environment,t=e.isMobile?25:48;return{fill:V.ZP.red,width:t,height:t,marginBottom:20,display:"inline-block"}}getErrorBodyStyle(){return{marginTop:0,marginBottom:24,width:"80%"}}getInlineTextLinkStyle(){return{borderBottom:"1px solid rgba(54, 53, 47, 0.2)",color:"black",textDecoration:"none"}}}function Ce(e){const[t,i]=(0,a.useState)(!1),o=(0,U.y)((e=>({permissionItem:{display:"flex",justifyContent:"space-between",padding:"6px 0",cursor:"pointer",userSelect:"none"},permissionItemHeading:{display:"flex",alignItems:"center"},permissionItemDetails:{paddingLeft:32,transition:"all 0.2s ease",color:e.mediumTextColor},rightStyle:{width:22,height:18},sharedIconStyle:{width:24,height:16,textAlign:"center",marginRight:8}})),[]);return d().createElement(d().Fragment,null,s()("div",{style:o.permissionItem,onClick:()=>i(!t)},void 0,s()("div",{style:o.permissionItemHeading},void 0,s()("div",{style:o.sharedIconStyle},void 0,e.icon({width:16,height:16,color:V.ZP.regularIconColor})),s()("div",{},void 0,e.title)),e.children&&s()("div",{},void 0,l.Z.chevronDownThin({width:12,height:12,color:V.ZP.lightIconColor,transform:t?"rotate(180deg)":void 0,transition:"transform 0.2s ease"}))),s()("div",{style:{...o.permissionItemDetails,opacity:t?1:0,flex:t?1:0,paddingBottom:t?8:0,transform:t?"translate3d(0,-4px,0)":"translate3d(0,-8px,0)"}},void 0,t&&e.children))}const Te=(0,w.injectIntl)(Ze)}}]);