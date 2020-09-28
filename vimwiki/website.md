# Layered dreamy drop shadow for images
Add the following .css code to your stylesheet to add beautiful dreamy drop shadows to images:
```{.css linenums="1"}
img {
    box-shadow: 0 1px 2px rgba(0,0,0,0.07), 
                0 2px 4px rgba(0,0,0,0.07), 
                0 4px 8px rgba(0,0,0,0.07), 
                0 8px 16px rgba(0,0,0,0.07),
                0 16px 32px rgba(0,0,0,0.07), 
                0 32px 64px rgba(0,0,0,0.07);
}
```

## Sources
* [Smoother & sharper shadows with layered box-shadows](https://tobiasahlin.com/blog/layered-smooth-box-shadows/)
# Improve font rendering
Add the following .css code to your stylesheet to improve font-rendering (probably does not work on all devices and browsers):
```{.css linenums="1"}
* {
    font-smooth: auto;
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto;
    text-rendering: optimizeLegibility;
    text-shadow: 1px 1px 1px rgba(0,0,0,0.004);
}
```

## Sources
* [Improving Font Rendering With CSS](https://medium.com/better-programming/improving-font-rendering-with-css-3383fc358cbc)
* [Font Smoothing](https://tailwindcss.com/docs/font-smoothing)
* [How to apply font anti-alias effects in CSS?](https://stackoverflow.com/questions/17864742/how-to-apply-font-anti-alias-effects-in-css)
* [font-smooth](https://developer.mozilla.org/en-US/docs/Web/CSS/font-smooth)

# Improve page speed
1. Create the `.htaccess` text file in the root directory of the web server.
2. Paste the following config into the file:
    ```{.shell linenums="1"}
    # Activate gzip compression of text
    mod_gzip_on Yes

    # Create file hashes based on the modification time and size.
    # If the modification time or size of the file changes
    # the existing cache is invalidated on the user's web browser
    FileETag MTime Size

    # Configure expiry periods
    ExpiresActive On
    ExpiresByType text/css "access plus 1 weeks"
    ExpiresByType application/javascript "access plus 1 weeks"
    ExpiresByType application/x-javascript "access plus 1 weeks"
    ExpiresByType image/gif "access plus 1 months"
    ExpiresByType image/jpeg "access plus 1 months"
    ExpiresByType image/png "access plus 1 months"
    ExpiresByType image/x-icon "access plus 1 months"
    ExpiresByType font/woff "access plus 1 months"
    ExpiresByType font/woff2 "access plus 1 months"
    ExpiresByType font/ttf "access plus 1 months"
    ExpiresByType application/vnd.ms-fontobject "access plus 1 months"
    ```

## Sources
* [So verbessern Sie die Performance Ihrer Webseite über Einstellungen in der .htaccess-Datei](https://www.strato.de/faq/hosting/so-verbessern-sie-die-performance-ihrer-webseite-ueber-einstellungen-in-der-htaccess-datei/)
* [gzip bei Strato aktivieren ](https://technikkram.net/blog/2013/04/02/gzip-bei-strato-aktivieren/)
