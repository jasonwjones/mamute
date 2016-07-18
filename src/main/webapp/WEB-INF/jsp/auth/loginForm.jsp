<c:set var="siteName" value="${t['site.name']}"/>

<c:set var="title" value="${t['metas.login.title']}"/>

<c:set var="genericTitle" value="${t['metas.generic.title'].args(siteName)}"/>

<tags:header title="${genericTitle} - ${title}"/>

<h2 class="title page-title subheader">Login</h2>

<p>
	<c:set var="linkToPrivacyPolicy" value="${linkTo[SignupController].privacyPolicy}"/>
	${t['privacy_policy.acceptance.content'].args(linkToPrivacyPolicy)} 
</p>

<div class="login-or-signup">
	<div class="login">
		<tags:loginForm redirectUrl="${redirectUrl}"/>
	</div>
	<div class="signup">
		<tags:signupForm/>
	</div>
</div>
