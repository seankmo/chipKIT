"""
Replace occurrences of strings of the form '<code>..*</code>' with the
appropriate keyword-tagged text as defined by the information in the
keywords.txt file that specifies color highlighting for MPIDE.

So, for example, occurrences of '<code>setup()</code>' are replaced with 
'<KEYWORD3>setup</KEYWORD3><tt>()</tt>'.

NOTE: This needs to be modified to incorporate the true tags once
those get nailed down with Norm.

For now, if the following is included in the HEAD of the CFM/HTML
file, the tags should work properly.

"""

import re
import os

filename = input("Enter input file name: ")
file_in = open(filename)
filename = input("Enter output file name: ")
if os.path.exists(filename):
    choice = input(filename + " already exists.  Are you sure you want to continue? [y/n] ")
    if choice != 'y':
        exit()
        
all = file_in.read()
file_out = open(filename, "w")


# Place style information in header.
style_string = """
  <style>
  LITERAL1 {font-family:"Courier";color:#0066ff}
  KEYWORD1 {font-family:"Courier";color:#ff0000}
  KEYWORD2 {font-family:"Courier";color:#ff8000}
  KEYWORD3 {font-family:"Courier";color:#8b308b}
  BLACK {font-family:"Courier";color:#000000}
  </style>
"""
all = all.replace("</head>", style_string + "</head>")

# Create a dictionary of the keywords and their "type" based on the
# information in the keywords.txt file that ships with MPIDE.
keywordsTags = {}
for line in open("keywords.txt"):
    line = line.strip()
    # Skip blank lines and comment lines.
    if not line or line[0] == '#':
        continue
    #print("line: ", line)
    words = line.split()
    if len(words) == 1:
        continue
    word, type =  words[:2]
    keywordsTags[word] = type

# Find all occurrences of the <code> tag.
codeParams = re.findall("<code>(..*?)</code>", all)

# Get a list of unique occurrences.
codeParamsUnique = [codeParams[0]]
for codeParam in codeParams:
    if codeParam not in codeParamsUnique:
        codeParamsUnique.append(codeParam)

#print(codeParamsUnique)

# For each occurrence, replace <code></code> with the appropriate tag
# for the given content.  Move any parameters outside of the tag and
# merely enclose them in the <tt></tt> tag.
for codeParam in codeParamsUnique:
    #print("========================================")
    #print("========== ", codeParam, " ===========")
    #print("========================================")
    codeParamItems = codeParam.split("(")
    codeItem = codeParamItems[0]
    if len(codeParamItems) == 2:
        paramItem = "(" + codeParamItems[1]
    else:
        paramItem = ""

    tagType = keywordsTags.get(codeItem, "BLACK")
        
    codeParamSearch = codeParam.replace('(', '\(')
    codeParamSearch = codeParamSearch.replace(')', '\)')
    searchString = "<code>" + codeParamSearch + "</code>"
    if paramItem:
        replacementString = ("<" + tagType +
                             ">" + codeItem +
                             "</" + tagType +
                             "><tt>" + paramItem + "</tt>")
    else:
        replacementString = ("<" + tagType +
                             ">" + codeItem +
                             "</" + tagType +
                             ">")

    #print("Search: ", searchString)
    #print("replacement: ", replacementString)
    all = re.sub(searchString, replacementString, all)

# Fix box associated with <pre>-formatted code.
# First, handle opening <pre> tag which may have multiple parameters.
preTags = re.findall('(<pre class="brush: mpide;..*?>)', all)

# Get a list of unique occurrences.
preTagsUnique = [preTags[0]]
for tag in preTags[1 : ]:
    if tag not in preTagsUnique:
        preTagsUnique.append(tag)

#print(preTagsUnique)

for preTag in preTagsUnique:
    replacementString = '''<div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    '''
    all = re.sub(preTag, replacementString + preTag, all)

searchString = '^\s*</pre>'
replacementString = '''</pre>
</cf_box>
</div>'''
all = re.sub(searchString, replacementString, all, flags=re.MULTILINE)

print(all, file=file_out)

