// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'feedback_database.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'feedback_database.UserRole'
grails.plugin.springsecurity.authority.className = 'feedback_database.Role'
// Added by developer
grails.plugin.springsecurity.auth.loginFormUrl = '/login/index'
grails.plugin.springsecurity.successHandler.alwaysUseDeault = true
grails.plugin.springsecurity.successHandler.alwaysUseDeaultTargetUrl = true
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.logout.alwaysUseDefaultTargetUrl=true
grails.plugin.springsecurity.logout.afterLogoutUrl='/login/index'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl='/login/index?loginFailed=1'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/login/getuser'

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
		[pattern: '/',               access: ['permitAll']],
		[pattern: '/error',          access: ['permitAll']],
		[pattern: '/index',          access: ['permitAll']],
		[pattern: '/index.gsp',      access: ['permitAll']],
		[pattern: '/shutdown',       access: ['permitAll']],
		[pattern: '/assets/**',      access: ['permitAll']],
		[pattern: '/**/js/**',       access: ['permitAll']],
		[pattern: '/**/css/**',      access: ['permitAll']],
		[pattern: '/**/images/**',   access: ['permitAll']],
		[pattern: '/**/favicon.ico', access: ['permitAll']],
		[pattern: '/login/**',		 access: ['ROLE_USER']],
		[pattern: '/register/**', 	 access: ['permitAll']],
		[pattern: '/feedback/**', 	 access: ['permitAll']],
		[pattern: '/logout/**', 	 access: ['permitAll']],
		[pattern: '/deleteFeedback/**', access: ['ROLE_USER']],
		[pattern: '/oauth/**', 		    access: ['permitAll']],
		[pattern: '/login/update/',		 access: ['permitAll']],
]

grails.plugin.springsecurity.filterChain.chainMap = [
		[pattern: '/assets/**',      filters: 'none'],
		[pattern: '/**/js/**',       filters: 'none'],
		[pattern: '/**/css/**',      filters: 'none'],
		[pattern: '/**/images/**',   filters: 'none'],
		[pattern: '/**/favicon.ico', filters: 'none'],
		[pattern: '/**',             filters: 'JOINED_FILTERS']
]
//Facebook OAuth Login Details
oauth{
	providers{
		facebook{
			api= "org.scribe.builder.api.FacebookApi"
			key= "145244925952453"
			secret= "578034cf4c75a1a92448120b415e56ef"
			successUri= "/login/fbsuccess/"
			failureUri= "/login/index/"
			callback=  "http://localhost:8080/oauth/facebook/callback"
		}
	}
}