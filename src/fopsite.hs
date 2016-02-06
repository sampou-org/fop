module Main (main) where

import Text.Hakyll (hakyll)
import Text.Hakyll.File (directory)
import Text.Hakyll.Render (css, static, renderChain)
import Text.Hakyll.CreateContext (createPage)

main = hakyll "http://fop.sampou.org" $ do
    directory css "css"
    directory static "static"
    render "index.markdown"
    render "chap01.lhs"
    render "chap02.lhs"
    render "chap03.lhs"
    render "chap04.lhs"
    render "chap05.lhs"
    render "chap06.lhs"
    render "chap07.lhs"
    render "chap08.lhs"
    render "chap09.lhs"
    render "chap10.lhs"
    render "chap11.lhs"
    render "chap12.lhs"
  where
    render = renderChain ["templates/default.html"]
           . createPage
