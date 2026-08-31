$headTemplate = @"
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>__DYNAMIC_TITLE__</title>
  <meta name="description" content="__DYNAMIC_DESC__">
  <meta name="keywords" content="atk, toko atk, distributor atk, atk malang, alat tulis kantor, perlengkapan kantor, alat tulis, atk murah">
  <meta name="author" content="ATKMalang">
  <meta name="publisher" content="ATKMalang">
  <meta name="audience" content="all">
  <meta name="subject" content="Alat Tulis Kantor dan Perlengkapan Kantor">

  <!-- SEO, AEO & GEO Optimization -->
  <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
  <meta name="googlebot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
  <meta name="bingbot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
  <link rel="canonical" href="__DYNAMIC_URL__">

  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="__DYNAMIC_URL__">
  <meta property="og:title" content="__DYNAMIC_TITLE__">
  <meta property="og:description" content="__DYNAMIC_DESC__">
  <meta property="og:image" content="https://atkmalang.web.id/assets/img/logo-atk.webp">
  <meta property="og:image:width" content="1200">
  <meta property="og:image:height" content="630">
  <meta property="og:site_name" content="ATKMalang">
  <meta property="og:locale" content="id_ID">

  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:url" content="__DYNAMIC_URL__">
  <meta name="twitter:title" content="__DYNAMIC_TITLE__">
  <meta name="twitter:description" content="__DYNAMIC_DESC__">
  <meta name="twitter:image" content="https://atkmalang.web.id/assets/img/logo-atk.webp">

  <!-- Favicons -->
  <link href="assets/img/favicon-atk.webp" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="site.webmanifest" rel="manifest">
  <meta name="theme-color" content="#20c997">

  <!-- Preconnect & DNS-Prefetch for Pagespeed -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="dns-prefetch" href="https://fonts.googleapis.com">
  <link rel="dns-prefetch" href="https://fonts.gstatic.com">

  <!-- Preload Critical Resources -->
  <link rel="preload" href="assets/css/main.css" as="style">
  <link rel="preload" href="assets/vendor/bootstrap/css/bootstrap.min.css" as="style">

  <!-- JSON-LD Advanced Schema (Organization, LocalBusiness, WebSite, WebPage, BreadcrumbList) -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "Organization",
        "@id": "https://atkmalang.web.id/#organization",
        "name": "ATKMalang",
        "url": "https://atkmalang.web.id/",
        "logo": {
          "@type": "ImageObject",
          "url": "https://atkmalang.web.id/assets/img/logo-atk.webp",
          "width": 1200,
          "height": 630
        },
        "sameAs": [
          "https://web.facebook.com/profile.php?id=61580593539769",
          "https://www.instagram.com/atkmalang",
          "https://www.tiktok.com/@atkmalang",
          "https://twitter.com/atkmalang"
        ]
      },
      {
        "@type": "LocalBusiness",
        "@id": "https://atkmalang.web.id/#localbusiness",
        "name": "ATKMalang",
        "url": "https://atkmalang.web.id/",
        "logo": "https://atkmalang.web.id/assets/img/logo-atk.webp",
        "image": "https://atkmalang.web.id/assets/img/logo-atk.webp",
        "description": "Distributor alat tulis kantor terlengkap dan termurah di Malang. Kami melayani grosir, eceran, dan pengadaan kontrak supply perusahaan.",
        "telephone": "+6288989643555",
        "email": "info@atkmalang.web.id",
        "address": {
          "@type": "PostalAddress",
          "streetAddress": "Jl. Pasar Besar No. 123",
          "addressLocality": "Klojen",
          "addressRegion": "Kota Malang",
          "postalCode": "65111",
          "addressCountry": "ID"
        },
        "geo": {
          "@type": "GeoCoordinates",
          "latitude": -7.9826,
          "longitude": 112.6308
        },
        "openingHoursSpecification": [
          {
            "@type": "OpeningHoursSpecification",
            "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
            "opens": "08:00",
            "closes": "17:00"
          }
        ],
        "priceRange": "$$"
      },
      {
        "@type": "WebSite",
        "@id": "https://atkmalang.web.id/#website",
        "url": "https://atkmalang.web.id/",
        "name": "ATKMalang",
        "publisher": {
          "@id": "https://atkmalang.web.id/#organization"
        },
        "inLanguage": "id-ID",
        "potentialAction": {
          "@type": "SearchAction",
          "target": "https://atkmalang.web.id/search?q={search_term_string}",
          "query-input": "required name=search_term_string"
        }
      },
      {
        "@type": "WebPage",
        "@id": "__DYNAMIC_URL__#webpage",
        "url": "__DYNAMIC_URL__",
        "name": "__DYNAMIC_TITLE__",
        "isPartOf": {
          "@id": "https://atkmalang.web.id/#website"
        },
        "about": {
          "@id": "https://atkmalang.web.id/#localbusiness"
        },
        "description": "__DYNAMIC_DESC__",
        "inLanguage": "id-ID"
      },
      {
        "@type": "BreadcrumbList",
        "@id": "__DYNAMIC_URL__#breadcrumb",
        "itemListElement": [
          {
            "@type": "ListItem",
            "position": 1,
            "name": "Beranda",
            "item": "https://atkmalang.web.id/"
          },
          {
            "@type": "ListItem",
            "position": 2,
            "name": "__DYNAMIC_TITLE__",
            "item": "__DYNAMIC_URL__"
          }
        ]
      }
    ]
  }
  </script>

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>
"@

$utf8NoBom = New-Object System.Text.UTF8Encoding($False)

foreach ($file in Get-ChildItem -Path . -Filter *.html) {
    $content = [System.IO.File]::ReadAllText($file.FullName)
    
    # Extract title
    $title = "ATKMalang"
    if ($content -match '<title>(.*?)</title>') {
        $title = $matches[1]
    }
    
    # Extract description
    $desc = "ATKMalang adalah distributor atk dan toko atk malang terlengkap. Temukan berbagai macam kebutuhan alat tulis kantor (atk) dengan harga terbaik hanya di sini."
    if ($content -match '<meta\s+name="description"\s+content="([^"]+)">') {
        $desc = $matches[1]
    } elseif ($content -match '<meta\s+content="([^"]+)"\s+name="description">') {
        $desc = $matches[1]
    }
    
    # Generate URL
    $filename = $file.Name
    $url = "https://atkmalang.web.id/$filename"
    if ($filename -eq "index.html") {
        $url = "https://atkmalang.web.id/"
    }
    
    # Generate new head
    $newHead = $headTemplate.Replace('__DYNAMIC_TITLE__', $title).Replace('__DYNAMIC_DESC__', $desc).Replace('__DYNAMIC_URL__', $url)
    
    # Replace old head
    $newContent = $content -replace '(?s)<head>.*?</head>', $newHead
    
    [System.IO.File]::WriteAllText($file.FullName, $newContent, $utf8NoBom)
    Write-Output "Processed $($file.Name)"
}
