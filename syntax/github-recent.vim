" Vim syntax file
" Language:  Github 'recent' feed ( https://github.com/c9s/App-gh )
" Maintaner: Magnus Woldrich <m@japh.se>
" URL:       http://github.com/trapd00r/vim-syntax-github-recent
" Last Change: 2011-05-04 13:43:59

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match githubNick "\v^([A-Za-z0-9_-]+) "    skipwhite nextgroup=githubAction
syn match githubAction
  \ "\v(comment|fork|upload|update|open|push|commit|create|watch)e?d"
  \ skipwhite contained

syn match githubPullReq "\vpull request"       skipwhite nextgroup=githubNumber
syn match githubIssue   "\vissue"              skipwhite nextgroup=githubNumber
syn match githubGist    "\vgist:"              skipwhite nextgroup=githubNumber

syn match githubNumber  "\v([0-9]+)"           skipwhite contained

syn match githubUser    "\v ([A-Za-z0-9_-]+)/" skipwhite nextgroup=githubRepo
syn match githubRepo    "\v([A-Za-z0-9_-]+)"   skipwhite contained

syn match githubMsg     "^\v\s{2,}.+"          skipwhite

high    githubAction  ctermfg=NONE ctermbg=NONE cterm=bold
hi link githubNick    Constant
hi link githubNumber  Number
hi link githubPullReq Todo
hi link githubIssue   Statement

hi link githubUser    Constant
hi link githubRepo    Type
hi link githubMsg     Comment

let b:current_syntax = "github-recent"
