"use strict";(self.webpackChunknotion_next=self.webpackChunknotion_next||[]).push([[380],{60951:(e,t,o)=>{o.r(t),o.d(t,{PushNotification:()=>b});o(41817);var a=o(55061),c=o(88869),r=o(96486),s=o.n(r),l=o(45454),i=o(66897),n=o(2864),d=o(99036),m=o(40902),u=o(44805),p=o(70203);function b(e){const{activity:t,getRecordValue:o,baseURL:r,userTimeZone:b,intl:f}=e,g=(0,a.P6)({...e}),_=(0,a.XW)(g,f),k=(0,a.oP)({...e,intl:f}),N=(0,a.iR)({...e,intl:f}),y=(0,a.rn)({...e,intl:f});switch(t.type){case"top-level-block-created":return{subject:f.formatMessage(a.qJ.topLevelBlockCreated,{userName:_,targetName:k,spaceName:y})};case"top-level-block-deleted":return{subject:f.formatMessage(a.qJ.topLevelBlockDeleted,{userName:_,targetName:k,spaceName:y})};case"collection-row-created":return{subject:f.formatMessage(a.qJ.collectionRowCreated,{userName:_,targetName:k,collectionName:N})};case"collection-row-deleted":return{subject:f.formatMessage(a.qJ.collectionRowDeleted,{userName:_,targetName:k,collectionName:N})};case"block-edited":{let l;if(t.edits){const i=t.edits[0];if("block-changed"===i.type){const t=i.block_data.after.block_value;if("page"===t.type&&t.parent_table===c.v){const t=i.block_schema||d.Kc(f),c=m.OS({before:i.block_data.before.block_value,after:i.block_data.after.block_value,schema:t}).filter((e=>{const o=t[e];return o&&"formula"!==o.type})).map((c=>{const r=t[c],s=r?r.name:void 0,l=(0,a.Wy)({intl:f,property:c,schema:t,block:i.block_data.after.block_value,getRecordValue:o,userTimeZone:e.userTimeZone,baseURL:e.baseURL})||f.formatMessage(a.qJ.emptyBlockEditedProperty);return f.formatMessage(a.qJ.propertyNameAndValueEdited,{propertyName:s,propertyValue:l})})),r=m.B9({before:i.block_data.before.block_value,after:i.block_data.after.block_value}),n=s().compact(r.map((e=>{const t=(0,a._u)({formatProperty:e,intl:f}),c=(0,a.W9)({formatProperty:e,intl:f,block:i.block_data.after.block_value,getRecordValue:o});if(t&&c)return f.formatMessage(a.qJ.propertyNameAndValueEdited,{propertyName:t,propertyValue:c})})));l=f.formatList(c.concat(n),{type:"conjunction",style:"narrow"})}else l=(0,a._2)({intl:f,blockValue:t,getRecordValue:o,baseURL:r,userTimeZone:b})}else if("block-created"===i.type){const e=i.block_data.block_value;l=(0,a._2)({intl:f,blockValue:e,getRecordValue:o,baseURL:r,userTimeZone:b})}else if("block-deleted"===i.type){const e=i.block_data.block_value,t=(0,a._2)({intl:f,blockValue:e,getRecordValue:o,baseURL:r,userTimeZone:b});l=f.formatMessage(a.qJ.blockDeletedEditBody,{renderedBlock:t})}}return{subject:f.formatMessage(a.qJ.blockEditedNotification,{userName:_,blockName:k}),body:l}}case"permissions-edited":return{subject:f.formatMessage(a.qJ.userEditedPermissionsFor,{userName:_,targetName:k}),body:(0,a.gt)({intl:f,activity:t,getRecordValue:o,userTimeZone:e.userTimeZone})};case"user-mentioned":return{subject:f.formatMessage(a.qJ.userMentionedIn,{userName:_,targetName:k}),body:(0,a.kU)({intl:f,getRecordValue:o,baseURL:r,userTimeZone:e.userTimeZone,blockId:t.mentioned_block_id,property:t.mentioned_property})};case"commented":{let c;if(t.edits){const r=t.edits[0];if("comment-created"===r.type){const t=o({table:l.x,id:r.comment_id,spaceId:r.space_id}),a=r.comment_data||t;a&&(c="💬 ".concat(u.Xh({intl:f,textValue:a.text,getRecordValue:e.getRecordValue,userTimeZone:e.userTimeZone})))}else if("comment-changed"===r.type)c="💬 ".concat(u.Xh({intl:f,textValue:r.comment_data.after.text,getRecordValue:e.getRecordValue,userTimeZone:e.userTimeZone}));else{const t=o({table:l.x,id:r.comment_id,spaceId:r.space_id}),s=r.comment_data||t;if(s){const t=u.Xh({intl:f,textValue:s.text,getRecordValue:e.getRecordValue,userTimeZone:e.userTimeZone});c=f.formatMessage(a.qJ.userDeletedComment,{commentText:t})}}}return{subject:f.formatMessage(a.qJ.userCommentedSubject,{userName:_,targetName:k}),body:c}}case"user-invited":if(t.permission_group_id)return{subject:f.formatMessage(a.qJ.userAddedToSpace,{userName:_,workspaceName:k})};return{subject:0===g.filter(i.uC).length?f.formatMessage(a.qJ.userInvitedToSpaceByBot,{workspaceName:k}):f.formatMessage(a.qJ.userInvitedToSpace,{userName:_,workspaceName:k})};case"collection-edited":{let e,o=f.formatMessage(a.qJ.userEditedCollectionSubject,{userName:_,collectionName:k});if(t.edits){const c=t.edits[0];if("collection-changed"===c.type&&c.collection_data){const t=c.collection_data.after?c.collection_data.after.description:void 0,r=c.collection_data.before?c.collection_data.before.description:void 0;r&&!t?o=f.formatMessage(a.qJ.collectionDescriptionDeleted,{userName:_,collectionName:k}):!r&&t?(o=f.formatMessage(a.qJ.collectionDescriptionCreated,{userName:_,collectionName:k}),e=p.Jc(t)):r&&t&&m.Dn(r,t)&&(e=p.Jc(t))}else if("collection-created"===c.type&&c.collection_data){const t=c.collection_data.description;t&&(o=f.formatMessage(a.qJ.userCreatedCollectionSubject,{userName:_,collectionName:k}),e=p.Jc(t))}}return{subject:o,body:e}}case"collection-view-edited":const J=e.getRecordValue({table:n.n,id:t.collection_view_id,spaceId:t.space_id}),q=J&&J.name||f.formatMessage(a.qJ.untitledCollectionView);return{subject:f.formatMessage(a.qJ.collectionViewEditedSubject,{userName:_,collectionViewName:q,collectionName:k})};case"collection-property-edited":const M=t.edits&&t.edits[0],v=M&&("collection-property-changed"===M.type?M.collection_property_data.after.name:M.collection_property_data.name)||f.formatMessage(a.qJ.collectionPropertyEditedUnknown);return t.collection_property_id,{subject:f.formatMessage(a.qJ.collectionPropertyEditedSubject,{userName:_,propertyType:v,collectionName:k})};case"reminder":return{subject:f.formatMessage(a.qJ.reminderSubject,{pageName:k}),body:(0,a.kU)({getRecordValue:o,baseURL:r,userTimeZone:e.userTimeZone,blockId:t.reminder_block_id,property:t.reminder_property,intl:f})};case"permission-group-edited":return{subject:(0,a.pF)({activity:t,intl:f,userName:_,targetName:k})};case"page-locked":case"page-unlocked":return{subject:"page-locked"===t.type?f.formatMessage(a.qJ.pageLockedActivity,{userName:_,pageName:k}):f.formatMessage(a.qJ.pageUnlockedActivity,{userName:_,pageName:k})};case"email-edited":return{subject:f.formatMessage(a.qJ.emailEditedActivity,{userName:_})};case"access-requested":return{subject:f.formatMessage(a.qJ.accessRequestedSubject,{userName:_,pageName:k})}}}}}]);
//# sourceMappingURL=sourcemapUpload/desktop-66c6f076745554e25f6c.js.map