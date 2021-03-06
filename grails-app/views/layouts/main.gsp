<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <g:layoutHead/>
</head>
<body>
    <header class="bottom-margin-large">
        <div class="row">
            <div class="col-10">
                <div class="d-none d-md-block">
                    <a class="disable-link-colors" href="http://su.se">
                        <g:if test="${(session.logoUrl && session.logoUrl == 'internal') || !session.logoUrl}">
                            <asset:image id="logoBig" class="pull-left" alt="Stockholms universitet" src="su-logo.png"/>
                        </g:if>
                        <g:else>
                            <img class="pull-left" alt="Stockholms universitet" src="${session.logoUrl}" width="156" height="130"/>
                        </g:else>
                    </a>
                </div>
                <div id="logoSmall" class="d-block d-md-none">
                    <asset:image src="su-logo-small.png" alt="Stockholms universitet, startsida"/>
                </div>
            </div>
            <div class="col-2">
                <div class="pull-right">
                    <g:render template="/layouts/userInfoMenu"/>
                </div>
                <div class="clearfix"></div>
                <div class="pull-right d-none d-md-block">
                    <g:link class="disable-link-colors" controller="dashboard" action="index">
                        <h1>${session.applicationName?:'Vaulttool'}</h1>
                    </g:link>
                </div>
            </div>
        </div>
        <div class="d-block d-md-none" style="text-align: center">
            <g:link class="disable-link-colors" controller="dashboard" action="index">
                <h1>${session.applicationName?:'Vaulttool'}</h1>
            </g:link>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <g:if test="${controllerName == 'admin'}">
                <div id="nav-column" class="col-md-3 bottom-margin-large">
                    <div class="row">
                        <div class="col-sm-12">
                            <g:link action="index" class="menuNav ${(actionName == 'index') ? 'active':''}">
                                <span class="fa fa-home"></span>
                                Start
                            </g:link>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <g:link action="user" class="menuNav ${(actionName == 'user') ? 'active':''}">
                                <span class="fa fa-users"></span>
                                Users
                            </g:link>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <g:link action="policies" class="menuNav ${(actionName == 'policies') ? 'active':''}">
                                <span class="fa fa-file-text-o"></span>
                                Policies
                            </g:link>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <g:link action="approles" class="menuNav ${(actionName == 'approles') ? 'active':''}">
                                <span class="fa fa-key"></span>
                                Application Roles
                            </g:link>
                        </div>
                    </div>
                    <div class="row">

                    </div>
                </div>
            </g:if>
            <div id="main-column" class="${(controllerName == 'admin') ? 'col-md-9' : 'col-md-12' }">
                <g:if test="${flash.error}">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="alert alert-danger">${flash.error}</div>
                        </div>
                    </div>
                </g:if>
                <g:if test="${flash.warning}">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="alert alert-warning">
                                ${flash.warning}
                            </div>

                        </div>
                    </div>
                </g:if>
                <g:if test="${flash.message}">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="alert alert-success">
                                ${flash.message}
                            </div>

                        </div>
                    </div>
                </g:if>
                <div class="row">
                    <div class="col-sm-12">
                        <g:render template="/layouts/scrollTop"/>
                        <g:layoutBody/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p class="footer" role="contentinfo">${session.applicationName?:'Vaulttool'} | version&nbsp;${grailsApplication.metadata.getApplicationVersion()} | ${InetAddress?.getLocalHost()?.getHostName()}</p>
    </footer>
</body>
</html>
