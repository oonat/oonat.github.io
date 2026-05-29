---
layout: page
permalink: /cv/
title: cv
nav: true
nav_order: 3
---

<p>
  <a href="{{ '/assets/pdf/cv.pdf' | relative_url }}" target="_blank" rel="noopener noreferrer">
    <i class="fa-solid fa-file-pdf"></i> Download PDF
  </a>
  &nbsp;·&nbsp;
  <span style="color: var(--global-text-color-light);">Last updated: {{ "assets/pdf/cv.pdf" | file_modified: "%B %Y" }}</span>
</p>

<iframe
  src="{{ '/assets/pdf/cv.pdf' | relative_url }}#view=FitH&pagemode=none"
  title="Onat Özdemir — CV"
  width="100%"
  height="900"
  style="border: 1px solid var(--global-divider-color); border-radius: 6px;"
  loading="lazy">
  <p>Your browser doesn't support inline PDFs.
     <a href="{{ '/assets/pdf/cv.pdf' | relative_url }}">Download the CV</a> instead.</p>
</iframe>
