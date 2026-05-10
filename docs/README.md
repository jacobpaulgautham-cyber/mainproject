# Eravathody Handloom Society — GitHub Pages

This folder contains a cleaned, production-ready version of the Eravathody Handloom Weavers' Co-operative Society website, optimized for deployment on GitHub Pages.

## 📑 Pages Included

1. **index.html** — Home page (landing page with hero, history, gallery)
2. **craft.html** — The Craft page (5 chapters: Thread, Loom, Weave, Pattern, Cloth)
3. **process5.html** — Process page (6-step weaving process + YouTube video)
4. **artisans_filmstrip_page4.html** — Artisans page (meet the 46 master weavers)
5. **contact.html** — Contact page (location, email, contact form)

## 🎬 What's New

✅ **YouTube Video Added** — `process5.html` now includes an embedded YouTube video showing the handloom weaving process.  
✅ **All Navigation Updated** — Links corrected from `index2.html` to `index.html` for GitHub Pages compatibility.  
✅ **Assets Organized** — All CSS, JavaScript, fonts, images, and other dependencies included.

## 📦 File Structure

```
docs/
├── index.html                       # Home page
├── craft.html                       # Craft page
├── process5.html                    # Process page (with YouTube)
├── artisans_filmstrip_page4.html    # Artisans page
├── contact.html                     # Contact page
├── stylefinal.css                   # Main stylesheet
├── main7 (1).js                     # JavaScript functionality
├── faviconweb.ico                   # Website favicon
├── [46+ image files]                # PNG, JPG, JPEG images
└── README.md                        # This file
```

## 🚀 Deployment to GitHub Pages

### Option 1: Using GitHub Web Interface
1. Push this folder to your GitHub repository
2. Go to **Settings → Pages**
3. Select `docs` as the source folder
4. GitHub will automatically deploy your site

### Option 2: Using Git Command Line
```bash
git add docs/
git commit -m "Add GitHub Pages deployment"
git push origin main
```

Then enable GitHub Pages in repository settings pointing to the `docs/` folder.

## ✅ Verification Checklist

- [x] All 5 HTML pages present and linked correctly
- [x] Navigation menus fixed (index.html instead of index2.html)
- [x] All images (46+ files) copied and accessible
- [x] CSS stylesheet included (stylefinal.css)
- [x] JavaScript file included (main7 (1).js)
- [x] YouTube video embedded in process5.html
- [x] External fonts loaded from Fontshare and TypeKit
- [x] Favicon configured
- [x] Footer links updated for all pages
- [x] No broken links on core pages

## 🌐 External Resources

The website relies on these external font services (CDN):
- **Fontshare**: Google Fonts (Erode family)
- **Adobe TypeKit**: Custom fonts (chq4irm.css)

These are loaded via CDN links in the `<head>` of each page, so internet connectivity is required for proper font rendering.

## 📝 Notes

- The website uses responsive design and should work on mobile, tablet, and desktop
- All images are optimized and reference locally
- Page transitions use custom CSS and JavaScript animations
- Contact form is HTML-only (you may need backend processing for actual submissions)

## 🎨 Key Features

1. **Smooth Page Transitions** — CSS + JavaScript animations between pages
2. **Responsive Mobile Navigation** — Hamburger menu on smaller screens
3. **Interactive Sliders** — Hero carousel, gallery, and process step cards
4. **Scroll Animations** — Reveal effects and animated timeline
5. **Embedded YouTube** — Professional video player on process page
6. **SEO Optimized** — Structured data, meta tags, and Open Graph tags

## 💡 For Further Development

If you want to extend this website:
- **Add Products Page**: Copy the structure of any existing page (e.g., craft.html)
- **Backend Integration**: Connect the contact form to a backend service or email service
- **Image Optimization**: Consider using WebP format or compression for faster loading
- **Analytics**: Add Google Analytics or similar tracking to the pages

---

**Version**: 1.0 (Clean for GitHub Pages)  
**Last Updated**: May 10, 2026  
**Status**: ✅ Ready for deployment
