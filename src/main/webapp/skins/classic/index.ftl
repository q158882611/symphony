<#include "macro-head.ftl">
<#include "macro-list.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel}">
        <meta name="description" content="${symDescriptionLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/index${miniPostfix}.css?${staticResourceVersion}" />
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="content fn-clear">
                    <div class="domains fn-clear">
                        <a href='/domains'>All Domains</a>
                        <#list domains as domain>
                        <a href='/domain/${domain.domainURI}'>${domain.domainTitle}</a>
                        </#list>
                    </div>
                    <@list listData=indexArticles/>
                    <div>
                        <br/>
                        <span class="ft-gray"><a href="/recent">${moreRecentArticleLabel}</a></span>
                    </div>
                </div>
                <div class="side">
                    <#include "side.ftl">
                </div>
            </div>
        </div>
        <#include "footer.ftl">
        <script>
            Util.initArticlePreview();
        </script>
    </body>
</html>
