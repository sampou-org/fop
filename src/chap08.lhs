---
title: 第８章 Lava: 関数によるハードウェア記述
date: 2010-07-02 03:42:02 JST
---

回路の結線パターンをHaskellで表す．

## 関連サイト

Lava の派生

-   [The Lava Hardware Description Language](http://raintown.org/lava/)
-   [chalmers-lava2000: Hardware description library](http://hackage.haskell.org/package/chalmers-lava2000)
-   [Wired: Wire-aware hardware description](http://hackage.haskell.org/package/Wired)
-   [york-lava: A library for digital circuit description](http://hackage.haskell.org/package/york-lava)
-   [Reduceron](http://www.cs.york.ac.uk/fp/reduceron/)

Chalmers工科大学の講義

- [Hardware description in Functional Languages and Introduction to Lava](http://www.cse.chalmers.se/edu/year/2010/course/TDA956/TH/l08.html)
- [How to Use the Lava System (2010)](http://www.cse.chalmers.se/edu/year/2010/course/TDA956/Tools/lava/)

著者のページ

-   [Koen Claessen](http://www.chalmers.se/cse/EN/people/claessen-koen)
-   [Mary Sheeran](http://www.chalmers.se/cse/EN/people/sheeran-mary)
-   [Satnam Singh](http://research.google.com/pubs/SatnamSingh.html)

## chalmers-lava2000 のインストール

現時点で手に入れやすい Lava のパッケージは Hackage に登録されている chalmers-lava2000 である．これを cabal コマンドを使ってインストールする．

    $ cabal update
    $ cabal install chalmers-lava2000

通常はこれで，$HOME/.cabal/ 以下に必要なものがインストールされる．

## chalmers-lava2000 で外部定理証明器を使う方法（Linux）

chalmers-lava2000 では回路の性質を検証する関数 verify が使えない．これは verify に対応する外部定理証明器へのラッパーが提供されていないためである．その代りに satzoo あるいは smv へのラッパーが用意されているのでこれを使う．

### satzoo を使う

定理証明器 [satzoo](http://een.se/niklas/Satzoo/) はすでに DEPRICATED! とのことで，代りに [MiniSat](http://minisat.se/) を使う．まず，

#### minisat のインストール

minisat を /usr/local/bin/ にインストールし，これに satzoo という別名を付けておく．

    $ wget http://minisat.se/downloads/minisat2-070721.zip
    $ unzip minisat2-070721.zip
    $ cd minisat
    $ cd simp
    $ make rs
    $ sudo cp minisat_static /usr/local/bin/minisat
    $ sudo ln -s /usr/local/bin/minisat /usr/local/bin/satzoo

#### ラッパーを設定

利用時に環境変数 Lava2000_Satzoo が /usr/local/bin/satzoo を指すようにしておく．シェルとして bash を使っているなら，$HOME/.bashrc に

    export Lava2000_Satzoo=/usr/local/bin/satzoo

を書いておけばよいでしょう．ラッパースクリプトに実行パーミッションを立てる．chalmers-lava2000 を前述のようにインストールしたのなら，ラッパースクリプトは $HOME/.cabal/share/chalmers-lava2000-<version>/Scripts に置かれているはず.

    $ chmod +x $HOME/.cabal/share/chalmers-lava2000-1.1.1/Scripts/satzoo.wrapper



