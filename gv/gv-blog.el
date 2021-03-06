;;; gv-blog.el --- setup org2blog
;;; Commentary:
;;; sets up org to wordpress blogging environment
;;; also, github based blog

;;; Code:

(defun add-html-file (arg)
  (with-temp-buffer
    (insert-file-contents arg)
    (buffer-string)))

(defun my-site-format-entry (entry style project)
  (format "[[file:%s][%s]] --- %s"
          entry
          (org-publish-find-title entry project)
          (format-time-string "%Y-%m-%d" (org-publish-find-date entry project))))

(setq my-site-project-path "~/proj/blog/blog/")
(setq my-site-publish-path "~/proj/blog/diszgaurav.github.io/blog/")

(setq my-site-extra-head "
<link rel='stylesheet' href='/static/main.css'/>
<link href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap' rel='stylesheet' />
<link href='https://fonts.googleapis.com/css?family=Source+Code+Pro&display=swap' rel='stylesheet' />

<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-74245839-5\"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'UA-74245839-5');
</script>")

(setq my-site-header-file (concat my-site-project-path "templates/header.html"))
(setq my-site-footer-file (concat my-site-project-path "templates/footer.html"))

(setq org-publish-project-alist
`(("site"
   :components ("site-static", "site-pages", "site-images", "site-articles", "site-dl"))
  ("site-static"
   :base-directory ,(concat my-site-project-path "static/")
   :base-extension ".*"
   :publishing-directory ,(concat my-site-publish-path "static/")
   :publishing-function org-publish-attachment
   :recursive t)

  ("site-images"
   :base-directory ,(concat my-site-project-path "img")
   :base-extension ".*"
   :publishing-directory ,(concat my-site-publish-path "img/")
   :publishing-function org-publish-attachment
   :recursive t)

  ("site-dl"
   :base-directory ,(concat my-site-project-path "dl")
   :base-extension ".*"
   :publishing-directory ,(concat my-site-publish-path "dl/")
   :publishing-function org-publish-attachment
   :recursive t)

  ("site-pages"
   :base-directory ,(concat my-site-project-path "pages/")
   :base-extension "org"
   :publishing-directory ,(concat my-site-publish-path "../")

   :html-link-home "/"
   :html-head nil
   :html-head-extra ,my-site-extra-head
   :html-head-include-default-style nil
   :html-head-include-scripts nil
   :html-home/up-format ""

   :html-preamble ,(add-html-file my-site-header-file)
   :html-postamble ,(add-html-file my-site-footer-file)

   :makeindex nil
   :with-toc nil
   :section-numbers nil

   :publishing-function org-html-publish-to-html)

  ("site-articles"
   :base-directory ,(concat my-site-project-path "articles/")
   :base-extension "org"
   :publishing-directory ,(concat my-site-publish-path "")

   :html-link-home "/"
   :html-head nil
   :html-head-extra ,my-site-extra-head
   :html-head-include-default-style nil
   :html-head-include-scripts nil
   :html-home/up-format ""
   :options ^:{}
   :html-preamble ,(add-html-file my-site-header-file)
   :html-postamble ,(add-html-file my-site-footer-file)

   :makeindex nil
   :auto-sitemap t
   :sitemap-filename "index.org"
   :sitemap-title "Articles"
   :sitemap-style list
   :sitemap-sort-files anti-chronologically
   :sitemap-format-entry my-site-format-entry
   :with-toc nil
   :section-numbers t

   :publishing-function org-html-publish-to-html
   :recursive t)))

(provide 'gv-blog)
;;; gv-blog.el ends here
