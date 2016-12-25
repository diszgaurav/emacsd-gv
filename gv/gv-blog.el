(setq org-publish-project-alist
      '(("home"
         :base-directory "~/project/blog/org/"
         :base-extension "org"
         :publishing-directory "~/project/blog/diszgaurav.github.io/"
         :toc nil
         :publishing-function org-html-publish-to-html
         :recursive nil
         :html-head "<link rel=\"stylesheet\" href=\"static/css/style.css\" type=\"text/css\"/>"
         :html-preamble "<h3><a href=\"index.html\">gv.io</a> | <a href=\"blog/blog.html\">Blog</a></h3>"
         :author gv-user-name
         :email gv-user-email
         :html-postamble "<p>Author: %a</p><p>Last edited: %T</p><p>Creator: %c</p>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-74245839-1', 'auto');
  ga('send', 'pageview');
</script>"
         )

        ("blog"
         :base-directory "~/project/blog/org/blog"
         :base-extension "org"
         :publishing-directory "~/project/blog/diszgaurav.github.io/blog"
         :publishing-function org-html-publish-to-html
         :recursive t
         :headline-levels 3
         :html-head "<link rel=\"stylesheet\" href=\"../static/css/style.css\" type=\"text/css\"/>"
         :html-preamble "<h3><a href=\"../index.html\">gv.io</a> | <a href=\"../blog/blog.html\">Blog</a></h3>"
         :author gv-user-name
         :email gv-user-email
         :auto-sitemap t
         :sitemap-filename "blog.org"
         :sitemap-title "Blog"
         :html-postamble "<p>Author: %a</p><p>Last edited: %T</p><p>Creator: %c</p>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-74245839-1', 'auto');
  ga('send', 'pageview');
</script>"
         )

        ("static"
         :base-directory "~/project/blog/org/static"
         :base-extension "jpg\\|gif\\|png\\|css"
         :publishing-directory "~/project/blog/diszgaurav.github.io/static"
         :recursive t
         :publishing-function org-publish-attachment)

        ("website" :components ("home" "blog" "static"))
        )
      )

(setq org-export-with-sub-superscripts nil)

(provide 'gv-blog)
;;; gv-blog.el ends here
