"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[188],{85404:(e,t,n)=>{n.d(t,{K:()=>h});var a=n(67154),r=n.n(a),o=n(6479),l=n.n(o),c=n(67294),s=n.n(c),i=n(94184),u=n.n(i),d=n(99450),m=n(28760);const f="G8b_VGQSxRwZSatAhUTd";var v=["children","data-testid","className"];function h(e){var t=e.children,n=e["data-testid"],a=e.className,o=l()(e,v);return s().createElement("div",{className:u()(f,a),"data-testid":n},s().createElement(d.D,r()({},o,{buttonSize:o.buttonSize||d.D.sm}),s().createElement(m.Dy,{variant:"mestoBold"},t)))}},49188:(e,t,n)=>{n.r(t),n.d(t,{MAX_SPONSORS_TO_DISPLAY_IN_PREVIEW_IF_SOME_ARE_HIDDEN:()=>R,ShowSponsorsPreviewWithData:()=>T,default:()=>M});var a=n(48926),r=n.n(a),o=n(59713),l=n.n(o),c=n(87757),s=n.n(c),i=(n(47042),n(89554),n(41539),n(54747),n(21249),n(92222),n(47941),n(82526),n(57327),n(38880),n(49337),n(33321),n(69070),n(67294)),u=n.n(i),d=n(28760),m=n(1486),f=n(41001),v=n(85404),h=n(74820),p=n(65013),S=(n(86535),n(99244),n(94184)),w=n.n(S),E=n(67154),g=n.n(E);const y="GoBUqE90bjUv_7ndH9Fw";function b(e){return u().createElement("span",g()({},e,{className:w()(y,e.className)}))}const O="RnqjezHOt23z2EKd7j_l",_="M33ItRKEoYWPnq4DwL8n",k="KfQ2IK1i8BYSRgl3VYf4",P="Re1JThkswwaLzRdqavcO",D="uvrjZps73BZs41Z_0JcP",I="w2tPVFzE6CB2GFDWFwlE";function j(e){var t=e.thereIsOnlyASingleShowSponsor,n=e.firstShowSponsor,a=e.showSponsorsDataThatActuallyGetDisplayedInPreview,r=e.numberOfHiddenSponsors;return u().createElement(d.Dy,{className:w()(_,l()({},P,t))},"Sponsored by"," ",t?u().createElement(b,null,n.metadata.advertiser):u().createElement(u().Fragment,null,a.length>2?a.slice(0,-2).flatMap((function(e,t){return[u().createElement(b,{key:"advertiser ".concat(e.metadata.creativeId||e.metadata.creative_id||e.metadata.advertiser," - ").concat(t)},e.metadata.advertiser),", "]})):"",r?u().createElement(u().Fragment,null,u().createElement(b,null,a[a.length-2].metadata.advertiser),","," ",u().createElement(b,null,a[a.length-1].metadata.advertiser)," ","and more"):u().createElement(u().Fragment,null,u().createElement(b,null,a[a.length-2].metadata.advertiser)," ","and"," ",u().createElement(b,null,a[a.length-1].metadata.advertiser)),"."))}n(88674);var N=n(40160),A="".concat(38,"px");function C(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,a)}return n}function F(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?C(Object(n),!0).forEach((function(t){l()(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):C(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}var R=5;function T(e){var t,n=F(F({},e),{},{fireTrackingEvent:null!==(t=e.fireTrackingEvent)&&void 0!==t?t:p.I}),a=n.showSponsorsData,o=n.showId,c=(0,h.D)(o),S=(0,i.useMemo)((function(){return a.length>6?a.length-R:0}),[a]),E=(0,i.useMemo)((function(){return a.slice(0,S?R:6)}),[a,S]),y=1===E.length,b=E[0],_=(0,f.s4)();(0,i.useEffect)((function(){y&&E.forEach((function(e){var t=e.trackingEvents;return null==t?void 0:t.viewed.forEach(n.fireTrackingEvent)}))}),[y,E,n.fireTrackingEvent]);var P=(0,i.useCallback)(function(){var e=r()(s().mark((function e(t){return s().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.abrupt("return",_.send((0,m.$)(F({uri:n.uri,reason:"Show page",lineitem_id:E.map((function(e){return e.metadata.lineitemId}))},t))));case 1:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}(),[n.uri,E,_]);(0,i.useEffect)((function(){P()}),[n.showSponsorsData,P]);var C=function(e){var t=e.thereIsOnlyASingleShowSponsor,n=e.props,a=e.allShowSponsorsPathname,r=e.sendPodcastAdCtaCardEventForShowSponsorsPreview,o=e.firstShowSponsor;return(0,i.useMemo)((function(){var e=w()(O,l()({},k,t)),c={"--max-sponsors-to-display-in-preview":6,"--logo-size":A};return t?function(t){return u().createElement("a",g()({href:o.metadata.clickthroughUrl,className:e,style:c},t,{onClick:function(e){var n,a,l;null===(n=t.onClick)||void 0===n||n.call(t,e),null===(a=o.trackingEvents)||void 0===a||null===(l=a.clicked)||void 0===l||l.forEach((function(e){return fetch(e)})),r({ui_navigate:[o.clickthrough],navigate_to_external_uri:[!0]})}}),t.children)}:function(t){return u().createElement(N.rU,g()({className:e,style:c,to:{pathname:a,state:n}},t,{onClick:function(e){var n;null===(n=t.onClick)||void 0===n||n.call(t,e),r({cta_card_see_all:!0})}}))}}),[t,n,a,r,o])}({thereIsOnlyASingleShowSponsor:y,props:n,allShowSponsorsPathname:c,sendPodcastAdCtaCardEventForShowSponsorsPreview:P,firstShowSponsor:b});return u().createElement(C,null,null==E?void 0:E.map((function(e,t){return u().createElement("img",{key:"logo image ".concat(e.metadata.creativeId||e.metadata.creative_id||e.metadata.advertiser," - ").concat(t),src:e.metadata.logoImage,alt:e.metadata.advertiser,width:38,height:38,className:D})})),S?u().createElement(d.Dy,{className:I},"+",S):null,u().createElement(j,{thereIsOnlyASingleShowSponsor:y,firstShowSponsor:b,showSponsorsDataThatActuallyGetDisplayedInPreview:E,numberOfHiddenSponsors:S}),y?u().createElement(v.K,null,b.metadata.buttonMessage):null)}const M=T},65013:(e,t,n)=>{n.d(t,{I:()=>a});n(41539),n(88674);var a=function(e){return fetch(e)}}}]);
//# sourceMappingURL=188.js.map