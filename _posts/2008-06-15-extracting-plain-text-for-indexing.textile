---
layout: post
title: Extracting Plain Text for Indexing
tags:
- c#
- asp.net
- pdf
- extract plain text
---
<p>Searching by keyword requires an index (if you don't want to do it dynamically).</p>

<p>An index requires plain text. And there are a lot of formats out there that are not plain text, especially PDF.</p>

<p>Here are some ways to extract plain (possibly formatted) text from a pdf document:</p>
<ul><li><a href="http://www.codeproject.com/KB/cpp/ExtractPDFText.aspx">CodeProject</a>: Using C, directly accessing a pdf using the standard.</li><li><a href="http://www.codeproject.com/KB/cs/PDFToText.aspx">CodeProject</a>: Using C#, utilising iTextSharp.</li><li><a href="http://www.online-tech-tips.com/free-software-downloads/extract-text-from-pdf-doc-html-chm-and-rtf-files/">Text Mining Tool</a>: A command line tool (<a href="http://text-mining-tool.com/">http://text-mining-tool.com/</a>) which can extract plain text from a number of file formats.</li><li><a href="http://www.pdfbox.org/">PDFBox</a>: open source Java library.</li></ul>

<p>There are also plenty of shareware and strictly commercial products out there.</p>
