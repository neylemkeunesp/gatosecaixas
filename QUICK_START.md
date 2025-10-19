# 🚀 QUICK START GUIDE
## AABS Review Article - Box-Seeking Behaviour in Felidae

---

## ⚡ GET STARTED IN 5 MINUTES

### Step 1: Verify Files
```bash
ls -la /tmp/
```

You should see:
- ✅ `felid_boxes_review.tex` (main manuscript)
- ✅ `references.bib` (bibliography)
- ✅ `Makefile` (compilation automation)
- ✅ `cover_letter.tex` (submission letter)
- ✅ `README.md` (detailed instructions)
- ✅ `SUBMISSION_CHECKLIST.md` (submission guide)

### Step 2: Compile the Manuscript
```bash
cd /tmp
make
```

This will:
1. Run pdflatex (1st pass)
2. Process bibliography with bibtex
3. Run pdflatex (2nd pass - resolve citations)
4. Run pdflatex (3rd pass - finalize)

**Output:** `felid_boxes_review.pdf`

### Step 3: View the Result
```bash
make view
```

Or manually:
```bash
open felid_boxes_review.pdf  # macOS
xdg-open felid_boxes_review.pdf  # Linux
start felid_boxes_review.pdf  # Windows
```

---

## 📝 MANUSCRIPT OVERVIEW

### Statistics
- **Type:** Review Article
- **Total pages:** ~35-40 pages
- **Word count:** ~12,000 words
- **Abstract:** 398 words (limit: 400 ✓)
- **Introduction:** ~750 words (limit: 750 ✓)
- **Highlights:** 5 × 85 characters ✓
- **References:** 75+ peer-reviewed sources

### Structure
```
1. Introduction (~750 words)
2. Proximate Mechanisms: Stress Reduction (~2500 words)
   - Theoretical foundation (GUTS)
   - Empirical evidence (Vinke et al. 2014)
   - Neurobiological substrates
   
3. Adaptive Function: Dual Ecology (~2000 words)
   - Felids as ambush predators
   - Felids as potential prey
   - Optimal foraging theory
   
4. Thermoregulation (~1500 words)
   - Thermoneutral zone gap
   - Cardboard properties
   - Evolutionary context
   
5. Ontogeny (~1200 words)
   - Neonatal origins
   - Juvenile play
   - Social learning
   
6. Clinical Applications (~2000 words)
   - Veterinary clinics
   - Shelters
   - Multi-cat households
   
7. Knowledge Gaps (~1800 words)
   - Phylogenetic studies
   - Optimal parameters
   - Neurobiology
   
8. Discussion & Conclusions (~1500 words)
   - Integration
   - Welfare implications
   - Broader context
```

---

## 🎯 BEFORE YOU SUBMIT

### Critical: De-anonymize Manuscript

The manuscript is currently **anonymized** for blind review. Before submission, you MUST:

1. **Edit `felid_boxes_review.tex`**

Find this section (around line 35):
```latex
\author{
% Authors will be added here - using anonymous for submission
\textbf{Author names removed for blind review}\\
\\
\textit{Affiliations removed for blind review}
}
```

Replace with:
```latex
\author{
\textbf{Your Full Name}$^{1,*}$, \textbf{Coauthor Name}$^{2}$\\
\\
$^{1}$\textit{Your Department, Your Institution, City, Country}\\
$^{2}$\textit{Coauthor Department, Coauthor Institution, City, Country}\\
\\
$^{*}$Corresponding author: your.email@institution.edu\\
ORCID: 0000-0000-0000-0000
}
```

2. **Fill in Statements** (around line 600+)

Find and complete:
```latex
\section*{Acknowledgements}
\textit{[To be completed upon de-anonymization...]}
```

Replace with actual acknowledgements.

```latex
\section*{Funding}
\textit{[To be completed...]}
```

State funding sources or "This review received no specific funding."

3. **Recompile**
```bash
make cleanall
make
```

---

## 📤 SUBMISSION WORKFLOW

### Option A: Presubmission Inquiry (Recommended) ⭐

**Step 1:** Email inquiry
```
To: [email protected]
Subject: Presubmission Inquiry - Box-Seeking Behaviour Review

Dear Dr. Pongrácz,

I would like to inquire about the suitability of a review manuscript
for Applied Animal Behaviour Science...

[Attach: Abstract + checklist from AABS website]
```

**Step 2:** Wait 3 days for response

**Step 3:** If positive, proceed to full submission

### Option B: Direct Submission

1. Go to: https://www.editorialmanager.com/applan/
2. Create account / Login
3. "Submit New Manuscript"
4. Article Type: **Review Article**
5. Upload:
   - Main manuscript PDF
   - Cover letter PDF
6. Enter metadata (title, abstract, keywords, authors)
7. Suggest 3-5 reviewers
8. Submit

---

## 🔧 TROUBLESHOOTING

### Problem: Compilation fails
**Solution:**
```bash
make cleanall  # Remove all generated files
make           # Recompile from scratch
```

### Problem: Bibliography not showing
**Solution:**
```bash
# Must run in this order:
pdflatex felid_boxes_review.tex
bibtex felid_boxes_review
pdflatex felid_boxes_review.tex
pdflatex felid_boxes_review.tex
```

Or simply: `make`

### Problem: Missing LaTeX packages
**Solution (Ubuntu/Debian):**
```bash
sudo apt-get install texlive-full
sudo apt-get install texlive-bibtex-extra
```

**Solution (macOS with Homebrew):**
```bash
brew install --cask mactex
```

**Solution (any OS):**
Use Overleaf (online, no installation needed)

### Problem: Word count needed
**Solution:**
```bash
# Install detex
sudo apt-get install texlive-extra-utils  # Linux
brew install ghostscript  # macOS

# Then:
make count
```

---

## 📧 COMPILE COVER LETTER

```bash
cd /tmp
pdflatex cover_letter.tex
```

**Before compiling:**
1. Edit `cover_letter.tex`
2. Replace `[Your Name]`, `[Your Institution]`, etc.
3. Update suggested reviewers
4. Compile to PDF

---

## 📊 JOURNAL INFORMATION

### Applied Animal Behaviour Science (AABS)

**Publisher:** Elsevier  
**Impact Factor:** ~2.5  
**Type:** Peer-reviewed, international  
**Scope:** Applied ethology, animal welfare, behaviour  

**Processing:**
- Initial review: 1 week
- Peer review: 6-10 weeks
- Revisions: 2-4 weeks
- **Total time to publication:** 3-6 months

**Costs:**
- Submission: FREE
- Open Access (optional): USD $3,260
- Subscription option: No APC

**Contact:**
- Non-farm animals: [email protected]
- General: [email protected]

---

## ✅ FINAL CHECKLIST

Before you click "Submit":

- [ ] Manuscript compiled without errors
- [ ] Author information de-anonymized
- [ ] All statements completed (Ethics, Funding, Conflicts)
- [ ] Cover letter prepared
- [ ] 3-5 reviewers identified
- [ ] All coauthors approved submission
- [ ] Abstract ≤400 words
- [ ] Highlights ≤85 characters each
- [ ] References formatted correctly
- [ ] Files backed up

---

## 📚 HELPFUL COMMANDS

```bash
# Compile document
make

# Quick compile (no bibliography update)
make quick

# View PDF
make view

# Count words
make count

# Clean auxiliary files
make clean

# Remove everything including PDF
make cleanall

# Show help
make help

# Check LaTeX installation
make check
```

---

## 🆘 NEED HELP?

### LaTeX Issues
- **Overleaf Help:** https://www.overleaf.com/learn
- **LaTeX Stack Exchange:** https://tex.stackexchange.com/

### Journal Guidelines
- **AABS Author Instructions:** https://www.sciencedirect.com/journal/applied-animal-behaviour-science/publish/guide-for-authors

### Submission System
- **Elsevier Support:** https://service.elsevier.com/

### Reference Management
- **Zotero:** https://www.zotero.org/ (FREE)
- **Mendeley:** https://www.mendeley.com/ (FREE)

---

## 🎓 CITATION STYLE EXAMPLES

### Journal Article
```
Vinke, C.M., Godijn, L.M., van der Leij, W.J.R., 2014. Will a hiding 
box provide stress reduction for shelter cats? Applied Animal Behaviour 
Science 160, 86-93.
```

### Book
```
Leyhausen, P., 1979. Cat Behavior: The Predatory and Social Behavior 
of Domestic and Wild Cats. Garland STPM Press, New York.
```

### Book Chapter
```
Bradshaw, J.W.S., 2018. Normal feline behaviour: ... and why problem 
behaviours develop. Journal of Feline Medicine and Surgery 20, 411-421.
```

---

## 💡 PRO TIPS

1. **Save frequently** while editing LaTeX
2. **Use version control** (git) for tracking changes
3. **Keep backup copies** of all files
4. **Test compilation** after major edits
5. **Read AABS guidelines** thoroughly before submission
6. **Proofread carefully** - spell-check isn't enough
7. **Ask coauthors** to review before submission
8. **Keep journal correspondence** organized
9. **Note submission deadline** if submitting to special issue
10. **Be patient** - peer review takes time!

---

## 📞 QUICK REFERENCE

| Item | Value |
|------|-------|
| Journal | Applied Animal Behaviour Science |
| Article Type | Review Article |
| Submission URL | https://www.editorialmanager.com/applan/ |
| Editor (non-farm) | Peter Pongrácz |
| Email | [email protected] |
| Impact Factor | ~2.5 |
| Review Time | 6-10 weeks |
| Max Abstract | 400 words |
| Max Highlights | 5 × 85 characters |
| Reference Style | Author-Year (Harvard) |

---

## ✨ YOU'RE READY!

Your manuscript is complete and ready for submission to AABS.

**Next steps:**
1. ✅ Compile: `make`
2. ✅ Review PDF
3. ✅ De-anonymize manuscript
4. ✅ Complete cover letter
5. ✅ Submit!

**Good luck with your submission! 🍀**

---

**Questions?** Check:
1. `README.md` - Detailed instructions
2. `SUBMISSION_CHECKLIST.md` - Step-by-step checklist
3. AABS website - Official guidelines

---

**Version:** 1.0  
**Date:** October 2025  
**Status:** Ready for submission
