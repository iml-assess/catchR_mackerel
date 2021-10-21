name: "Mackerel"
output_dir: "docs"
navbar:
  title: "Mackerel"
  left:
    - icon: fa-cogs
      href: 0.0_settings.html
    - text: "Data"
      href: 1.0_read.html
    - text: "Landings"
      menu:
        - text: "Overview"
          href: 2.0_landings.html
        - text: "Comparison"
          href: 2.1_landings_comparison.html
    - text: "CAA"
      menu:
        - text: "Calculation"
          href: 3.0_caa.html
        - text: "Comparison"
          href: 3.1_caa_comparison.html
        - text: "Assessment"
          href: 3.2_caa_assessment.html
        - text: "Regional"
          href: 3.3_caa_region.html
    - text: "CAL"
      menu:
        - text: "Overview"
          href: 4.0_cal.html
        - text: "Gear and Region specific"
          href: 4.1_cal_pop.html
output:
  html_document:
    theme: cosmo
    highlight: textmate
    css: styles.css