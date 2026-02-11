Here is the updated **Project Specification** file. I have modified the **Design Directive** and **Assets** sections to instruct the AI agent to extract and apply the specific color palette (Maroon and Gold) from your uploaded logo file.

You can copy the code block below directly.

***

# Instructions for the User
Copy the content inside the code block below and save it as `PROMPT.md` or paste it directly into your AI coding tool (Cursor, Replit, etc.). Ensure the file `Data Bounty LLC-mg-white.png` is in your project's root or `public/` folder so the agent can access it.

```markdown
# Project Specification: Data Bounty LLC Website

## 1. Project Overview
**Objective:** Build a professional, fast, and SEO-friendly static website for "Data Bounty LLC," a single-member data science and applied economics consulting firm.
**Target Audience:** Corporate clients (Retail, Ag-Tech), Research Institutions, and Technical Stakeholders looking for high-level causal inference and econometric modeling.
**Tech Stack:** 
- Framework: Astro (v4 or latest)
- Styling: Tailwind CSS
- Content: Markdown/MDX (for blogs and projects)
- Deployment: Ready for GitHub Pages
- UI Library: React or Preact (if needed for interactive components)

## 2. Design Directive
- **Aesthetic:** Minimalist, academic yet corporate, "Swiss Style" typography. Clean lines with high readability.
- **Color Palette (Strict Adherence to Logo):** 
  - **Source:** Extract exact hex codes from the provided file: `Data Bounty LLC-mg-white.png`.
  - **Primary Color:** The **Deep Maroon/Burgundy** used in the "DATA BOUNTY" text and outer ring of the logo. Use this for headings, primary buttons, and the footer background.
  - **Accent Color:** The **Mustard/Gold** used in the "Analytics for Insights" text and the inner logo nodes. Use this for highlights, icons, and secondary buttons.
  - **Background:** White or very light gray (warm tone) to complement the warm maroon/gold palette.
- **Vibe:** Trustworthy, rigorous, scientific, data-driven.

## 3. Site Architecture & Content Strategy

The site must include the following pages. Please use the specific copy provided below, which is derived from the owner's CV and LLC formation documents.

### A. Landing Page (index.astro)
**Hero Section:**
- **Headline:** "Turning Complex Data into Actionable Economic Insight."
- **Sub-headline:** "Specialized consulting in Causal Inference, Econometric Modeling, and Spatial Analysis."
- **CTA Button:** "View Solutions" (Solid Maroon with White text)

**Features/Value Proposition:**
1. **Causal Inference:** Moving beyond correlation to measure true impact using A/B testing, DiD, and Synthetic Control methods.
2. **Economic Modeling:** Custom production functions, demand estimation, and benefit-cost analysis.
3. **Strategic Impact:** Translating technical findings into business strategies for retail and agribusiness sectors.

### B. About Page (/about)
**Bio:**
"Yuan Chai is the Principal Data Scientist and founder of Data Bounty LLC. With a Ph.D. in Applied Economics from the University of Minnesota and over 7 years of experience in both industry and academia, Yuan specializes in bridging the gap between theoretical econometrics and real-world business challenges.

Previously serving as a Principal Data Scientist at Walmart and an Applied Economist at the GEMS Informatics Center, Yuan has led interdisciplinary teams to solve complex problems in marketing attribution, risk management, and productivity performance. His expertise lies in translating complex data into actionable business strategies for technical and non-technical stakeholders."

**Credentials:**
- **Ph.D. Applied Economics**, University of Minnesota (GPA 4.0/4.0)
- **M.S. Plant Pathology**, University of Minnesota
- **B.S. Biological Science**, Tsinghua University

### C. Services Page (/services)
*Structure this as a grid of service cards. Use the Accent Gold for card borders or icons.*

1. **Marketing Science & Attribution**
   - Marketing Mix Modeling (MMM)
   - Geo-Experimentation (TBR-MM, Synthetic Control)
   - ROAS (Return on Ad Spend) Optimization
   - Customer Segmentation & Lift Analysis

2. **Applied Economics & Policy Analysis**
   - Impact Assessment & Program Evaluation
   - Risk Management Modeling
   - Cost-Benefit Tradeoff Analysis
   - Supply Chain & Agribusiness Insights

3. **Data Science & Engineering**
   - Spatial Data Analytics & Visualization
   - Bayesian Structural Time-series Modeling
   - Pipeline Automation (Python/R/SQL)
   - Big Data Processing & Supercomputing

### D. Projects / Portfolio (/projects)
*Create a collection for projects. Populate with these 3 initial entries:*

**Project 1: Retail Media Causal Attribution**
*Summary:* Designed and operationalized a suite of causal inference frameworks (Geo-filtered A/B tests, DiD) to quantify the incremental lift of AI-driven campaigns.
*Outcome:* Delivered granular channel-level ROAS insights for a major retailer, optimizing resource allocation across beauty, fashion, and pharmacy departments.

**Project 2: Ag-Tech Risk & Impact Assessment**
*Summary:* Led an interdisciplinary lab to analyze spatiotemporal dynamics of crop production. Implemented hierarchical random coefficient models to identify heterogeneous causal effects of inputs on yield.
*Outcome:* Produced policy-relevant findings for public and private partners regarding nitrogen fertilizer efficiency and environmental impact.

**Project 3: Global Bio-Economic Risk Modeling**
*Summary:* Developed probabilistic bio-economic assessments of biotic risks in global agriculture.
*Outcome:* Created models to identify causal drivers for crop insurance from long-term, large-scale panel data, assisting in risk prediction for wheat production.

### E. Blog / Insights (/blog)
*Create a collection for blog posts. Please generate placeholder markdown files for these titles based on the owner's publications:*
1. "Nudging Farmers: Reducing Water Pollution via Nitrogen Fertilizer Optimization."
2. "The Economics of Climate Change: Sustaining Productivity in Wheat."
3. "Methods in Causal Inference: Synthetic Control vs. Time-Based Regression."

### F. Contact Page (/contact)
- **Email:** [Insert Email from CV]
- **LinkedIn:** [Insert LinkedIn URL]
- **GitHub:** [Insert GitHub URL]
- **Location:** Owatonna, MN (Serving Clients Globally)
- **Form:** A simple Netlify-ready or static form endpoint.

## 4. Technical Requirements for the Agent
1. **Directory Structure:**
   - `src/pages/`
   - `src/components/` (Header, Footer, Card, Hero)
   - `src/layouts/` (Layout.astro)
   - `src/content/config.ts` (Define collections for projects and blog)
   
2. **SEO & Metadata:**
   - Default Title: "Data Bounty LLC | Applied Economics & Data Science Consulting"
   - Description: "Data Bounty LLC provides comprehensive data analytics, causal inference, and economic consulting services to drive actionable insights."

3. **Assets:**
   - **Logo:** Place `Data Bounty LLC-mg-white.png` in the `public/` directory. Use this image in the Header (resized appropriately).
   - **Favicon:** Create a favicon using the "DB" monogram from the logo.
   - **Images:** Use high-quality, free stock images (Unsplash) that match the Maroon/Gold palette (warm tones, academic, data viz).

4. **Footer:**
   - Copyright © 2024-2025 Data Bounty LLC. All Rights Reserved.
   - Founded in Minnesota, USA.

## 5. Execution Steps
1. Initialize a new Astro project with `npm create astro@latest`.
2. Install Tailwind CSS integration.
3. **CRITICAL:** Analyze `Data Bounty LLC-mg-white.png` to define the Tailwind config colors (`colors: { brand: { maroon: '...', gold: '...' } }`).
4. Create the Layout and Component architecture using these brand colors.
5. Populate the content pages (`.md` or `.astro`).
6. Create a `gh-pages` deployment script in `package.json`.
```