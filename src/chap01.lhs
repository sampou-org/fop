---
title: 第１章 二分ヒープ木の楽しみ
date: 2010-07-02 06:08:10 JST
---

関数プログラミングにおけるデータ構造の考え方

## 関連サイト

著者のページ

-    [Chris Okasaki](http://www.eecs.usma.edu/webs/people/okasaki/default.htm)

## Tree型の制約について

p.1 では二分ヒープ木のデータ型は以下のように宣言されている．

> data (Ord a) => Tree a = Null | Fork a (Tree a) (Tree a)

ここでの，(Ord a)という制約は二分ヒープ木の要素は Ord クラスのインスタンスでなければならないことを表している．このようなデータ宣言をすると，この型の値を引数とする関数すべてがこの制約を満たさなければならない．したがって，次のページ以降，この木を引数とする関数を宣言する場合には，その関数についてはいちいちこの制約を宣言する必要がある．すなわち，

> isEmpty    :: Tree a -> Bool
> minElem    :: Tree a -> a
> deleteMin  :: Tree a -> Tree a
> insert     :: a -> Tree a -> Tree a
> merge      :: Tree a -> Tree a -> Tree a

のシグネチャは，現在のGHC（6.12.3）ではコンパイラのチェックをパスしない．これは，

> isEmpty    :: Ord a => Tree a -> Bool
> minElem    :: Ord a => Tree a -> a
> deleteMin  :: Ord a => Tree a -> Tree a
> insert     :: Ord a => a -> Tree a -> Tree a
> merge      :: Ord a => Tree a -> Tree a -> Tree a

としなければならない．

## Tree の表示

この章で定義した二分ヒープ木を印字する方法があれば Show クラスのインスタンスとして宣言が可能でになる．そうしておけば，キュー操作の結果を見られる．以下に Data.Tree にある drawTree を使う方法を示す．

> import qualified Data.Tree as T
>
> data (Ord a) => Tree a = Null | Fork a (Tree a) (Tree a)
>
> drawTree :: (Ord a, Show a) => Tree a -> String
> drawTree = T.drawTree . conv
>   where 
>     conv Null = T.Node "Null" []
>     conv (Fork x a b) = T.Node (show x) (map conv [a,b])
>
> instance (Ord a, Show a) => Show (Tree a) where
>   show = drawTree

この方法では，左側の部分木が先，すなわち，上の行に，右側の部分木が後，すなわち，下の行に印字されることに注意すること．
