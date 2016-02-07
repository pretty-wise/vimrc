set nocompatible "required by vundle
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set noexpandtab
syntax on
set number
set showmatch
set splitbelow
set splitright
set laststatus=2 " always show status bar

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Right> <NOP>
noremap <Left> <NOP>

" display tabs and trailing spaces
"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"set hlsearch " highlight search by default

set wrap " don't wrap lines
set linebreak " wrap lines at convenient points

"
" vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let vundle manager vundle (required)
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'rhysd/vim-clang-format'

call vundle#end()
filetype plugin indent on " required

" cling-format config for vim-clang-format
let g:clang_format#auto_format = 1
let g:clang_format#style_options = {
			\ "Language": "Cpp",
			\ "AccessModifierOffset": -2,
			\ "AlignAfterOpenBracket": "true",
			\ "AlignConsecutiveAssignments": "false",
			\ "AlignEscapedNewlinesLeft": "false",
			\ "AlignOperands": "true",
			\ "AlignTrailingComments": "true",
			\ "AllowAllParametersOfDeclarationOnNextLine": "true",
			\ "AllowShortBlocksOnASingleLine": "false",
			\ "AllowShortCaseLabelsOnASingleLine": "false",
			\ "AllowShortFunctionsOnASingleLine": "All",
			\ "AllowShortIfStatementsOnASingleLine": "false",
			\ "AllowShortLoopsOnASingleLine": "false",
			\ "AlwaysBreakAfterDefinitionReturnType": "None",
			\ "AlwaysBreakBeforeMultilineStrings": "false",
			\ "AlwaysBreakTemplateDeclarations": "false",
			\ "BinPackArguments": "true",
			\ "BinPackParameters": "true",
			\ "BreakBeforeBinaryOperators": "None",
			\ "BreakBeforeBraces": "Attach",
			\ "BreakBeforeTernaryOperators": "true",
			\ "BreakConstructorInitializersBeforeComma": "false",
			\ "ColumnLimit": 80,
			\ "CommentPragmas":  "'^ IWYU pragma:'",
			\ "ConstructorInitializerAllOnOneLineOrOnePerLine": "false",
			\ "ConstructorInitializerIndentWidth": 4,
			\ "ContinuationIndentWidth": 4,
			\ "Cpp11BracedListStyle": "true",
			\ "DerivePointerAlignment": "false",
			\ "DisableFormat": "false",
			\ "ExperimentalAutoDetectBinPacking": "false",
			\ "ForEachMacros": "[ foreach, Q_FOREACH, BOOST_FOREACH ]",
			\ "IndentCaseLabels": "false",
			\ "IndentWidth": 2,
			\ "IndentWrappedFunctionNames": "false",
			\ "KeepEmptyLinesAtTheStartOfBlocks": "true",
			\ "MacroBlockBegin": "''",
			\ "MacroBlockEnd": "''",
			\ "MaxEmptyLinesToKeep": 1,
			\ "NamespaceIndentation": "None",
			\ "ObjCBlockIndentWidth": 2,
			\ "ObjCSpaceAfterProperty": "false",
			\ "ObjCSpaceBeforeProtocolList": "true",
			\ "PenaltyBreakBeforeFirstCallParameter": 19,
			\ "PenaltyBreakComment": 300,
			\ "PenaltyBreakFirstLessLess": 120,
			\ "PenaltyBreakString": 1000,
			\ "PenaltyExcessCharacter": 1000000,
			\ "PenaltyReturnTypeOnItsOwnLine": 60,
			\ "PointerAlignment": "Right",
			\ "SpaceAfterCStyleCast": "false",
			\ "SpaceBeforeAssignmentOperators": "true",
			\ "SpaceBeforeParens": "Never",
			\ "SpaceInEmptyParentheses": "false",
			\ "SpacesBeforeTrailingComments": 1,
			\ "SpacesInAngles":  "false",
			\ "SpacesInContainerLiterals": "true",
			\ "SpacesInCStyleCastParentheses": "false",
			\ "SpacesInParentheses": "false",
			\ "SpacesInSquareBrackets": "false",
			\ "Standard": "Cpp11",
			\ "TabWidth": 8,
			\ "UseTab": "Never" }

"map <C-K> :pyf /usr/local/Cellar/clang-format/2016-01-05/share/clang/clang-format.py

" ignore files in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set wildmenu
