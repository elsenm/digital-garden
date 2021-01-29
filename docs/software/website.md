# Layered Dreamy Drop Shadow For Images
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

# Improve Font Rendering
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

# Improve Page Speed
1. Create the `.htaccess` text file in the root directory of the web server.
2. Paste the following config into the file:
    ```{.shell linenums="1"}
    # Activate gzip compression of text
    mod_gzip_on Yes
    
    # Add correct content-type for fonts
    AddType application/vnd.ms-fontobject .eot 
    AddType application/x-font-ttf .ttf
    AddType application/x-font-opentype .otf
    AddType application/x-font-woff .woff
    AddType application/x-font-woff2 .woff2
    AddType image/svg+xml .svg

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
    ExpiresByType application/vnd.ms-fontobject "access plus 1 years"
    ExpiresByType application/x-font-ttf "access plus 1 years"
    ExpiresByType application/x-font-opentype "access plus 1 years"
    ExpiresByType application/x-font-woff "access plus 1 years"
    ExpiresByType application/x-font-woff2  "access plus 1 years"
    ExpiresByType image/svg+xml "access plus 1 years"
    ```

# HEAD Meta

## Minimum
```{.html linenums="1"}
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Marvin's Digital Garden</title>
```

## Recommended
```{.html linenums="1"}
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Marvin's Digital Garden</title>

<meta name="theme-color" content="#108761">
<meta name="application-name" content="Marvin's Digital Garden">

<meta name="robots" content="index,follow">
<meta name="googlebot" content="index,follow">

<meta name="rating" content="General">
<meta name="referrer" content="no-referrer">

<link rel="license" href="/license/">
<link rel="me" href="mailto:contact@marvin-elsen.com">
```

# Set Table Width to 100%
To stretch every table to 100% of its available width in [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) add the following to your `extra.css` stylesheet.

```css linenums="1"
.md-typeset__table {
   min-width: 100%;
}

.md-typeset table:not([class]) {
    display: table;
}
```

# Security Links
* https://securitytxt.org/
* https://spacehost.de/10-apache-header-eintraege-webseite-sicher-machen/
* https://www.strato.de/faq/hosting/wie-kann-ich-die-htaccess-anpassen/

# Tests For This Website
* [PageSpeed](https://developers.google.com/speed/pagespeed/insights/?url=https%3A%2F%2Fmarvin-elsen.com%2F)
* [Mozilla Observatory](https://observatory.mozilla.org/analyze/marvin-elsen.com)
* [Qualys SSL Labs](https://www.ssllabs.com/ssltest/analyze?d=marvin-elsen.com)
* [ImmuniWeb](https://www.immuniweb.com/ssl/?id=f8leUSOn)
* [tls.imirhil.fr](https://tls.imirhil.fr/https/marvin-elsen.com)
* [Security Headers](https://securityheaders.com/?q=marvin-elsen.com&followRedirects=on)
* [hstspreload.org](https://hstspreload.org/?domain=marvin-elsen.com)
* [webbkoll](https://webbkoll.dataskydd.net/de/results?url=http%3A%2F%2Fmarvin-elsen.com)

# References
* [Smoother & sharper shadows with layered box-shadows](https://tobiasahlin.com/blog/layered-smooth-box-shadows/)
* [Improving Font Rendering With CSS](https://medium.com/better-programming/improving-font-rendering-with-css-3383fc358cbc)
* [Font Smoothing](https://tailwindcss.com/docs/font-smoothing)
* [How to apply font anti-alias effects in CSS?](https://stackoverflow.com/questions/17864742/how-to-apply-font-anti-alias-effects-in-css)
* [font-smooth](https://developer.mozilla.org/en-US/docs/Web/CSS/font-smooth)
* [So verbessern Sie die Performance Ihrer Webseite über Einstellungen in der .htaccess-Datei](https://www.strato.de/faq/hosting/so-verbessern-sie-die-performance-ihrer-webseite-ueber-einstellungen-in-der-htaccess-datei/)
* [gzip bei Strato aktivieren ](https://technikkram.net/blog/2013/04/02/gzip-bei-strato-aktivieren/)
* [How do I leverage browser caching of .woff fonts?](https://stackoverflow.com/a/28148035)
* [A free guide to HTML5 HEAD elements](https://htmlhead.dev/)
* [Tables cannot be set to 100% width #175](https://github.com/squidfunk/mkdocs-material/issues/175)
