(setq org-publish-project-alist
      '(("blog"
         :base-directory "~/project/blog/diszgaurav.github.io/static/org"
         :base-extension "org"
         :publishing-directory "~/project/blog/diszgaurav.github.io/"
         :publishing-function org-twbs-publish-to-html
         :recursive t
         :headline-levels 3
         :html-preamble "<h3><a href=\"index.html\">gv.io</a></h3>"
         :author "Gaurav Verma"
         :email "diszgaurav@gmail.com"
         :auto-sitemap t
         :sitemap-filename "index.org"
         :sitemap-title "Posts"
         :html-postamble "<p>Author: <a href=\"https://plus.google.com/u/0/+GauravVermaDiszme\">%a</a></p><p>Last edited: %T</p><p>Creator: %c</p>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-74245839-1', 'auto');
  ga('send', 'pageview');
</script>"
         )
        )
      )

(setq org-export-with-sub-superscripts nil)
(defvar org-twbs--pre/postamble-class "container" "CSS class used for pre/postamble")

(provide 'gv-blog)
;;; gv-blog.el ends here
