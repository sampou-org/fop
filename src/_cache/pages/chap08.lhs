              body      ï<p
>åè·¯ã®çµç·ãã¿ã¼ã³ãHaskellã§è¡¨ãï¼</p
><div id="&#38306;&#36899;&#12469;&#12452;&#12488;"
><h2
  >é¢é£ãµã¤ã</h2
  ><p
  >Lava ã®æ´¾ç</p
  ><ul
  ><li
    ><a href="http://raintown.org/lava/"
      >The Lava Hardware Description Language</a
      ></li
    ><li
    ><a href="http://hackage.haskell.org/package/chalmers-lava2000"
      >chalmers-lava2000: Hardware description library</a
      ></li
    ><li
    ><a href="http://hackage.haskell.org/package/Wired"
      >Wired: Wire-aware hardware description</a
      ></li
    ><li
    ><a href="http://hackage.haskell.org/package/york-lava"
      >york-lava: A library for digital circuit description</a
      ></li
    ><li
    ><a href="http://www.cs.york.ac.uk/fp/reduceron/"
      >Reduceron</a
      ></li
    ></ul
  ><p
  >Chalmerså·¥ç§å¤§å­¦ã®è¬ç¾©</p
  ><ul
  ><li
    ><a href="http://www.cse.chalmers.se/edu/year/2010/course/TDA956/TH/l08.html"
      >Hardware description in Functional Languages and Introduction to Lava</a
      ></li
    ><li
    ><a href="http://www.cse.chalmers.se/edu/year/2010/course/TDA956/Tools/lava/"
      >How to Use the Lava System (2010)</a
      ></li
    ></ul
  ><p
  >èèã®ãã¼ã¸</p
  ><ul
  ><li
    ><a href="http://www.chalmers.se/cse/EN/people/claessen-koen"
      >Koen Claessen</a
      ></li
    ><li
    ><a href="http://www.chalmers.se/cse/EN/people/sheeran-mary"
      >Mary Sheeran</a
      ></li
    ><li
    ><a href="http://research.google.com/pubs/SatnamSingh.html"
      >Satnam Singh</a
      ></li
    ></ul
  ></div
><div id="chalmers-lava2000-&#12398;&#12452;&#12531;&#12473;&#12488;&#12540;&#12523;"
><h2
  >chalmers-lava2000 ã®ã¤ã³ã¹ãã¼ã«</h2
  ><p
  >ç¾æç¹ã§æã«å¥ãããã Lava ã®ããã±ã¼ã¸ã¯ Hackage ã«ç»é²ããã¦ãã chalmers-lava2000 ã§ããï¼ããã cabal ã³ãã³ããä½¿ã£ã¦ã¤ã³ã¹ãã¼ã«ããï¼</p
  ><pre
  ><code
    >$ cabal update
$ cabal install chalmers-lava2000
</code
    ></pre
  ><p
  >éå¸¸ã¯ããã§ï¼$HOME/.cabal/ ä»¥ä¸ã«å¿è¦ãªãã®ãã¤ã³ã¹ãã¼ã«ãããï¼</p
  ></div
><div id="chalmers-lava2000-&#12391;&#22806;&#37096;&#23450;&#29702;&#35388;&#26126;&#22120;&#12434;&#20351;&#12358;&#26041;&#27861;linux"
><h2
  >chalmers-lava2000 ã§å¤é¨å®çè¨¼æå¨ãä½¿ãæ¹æ³ï¼Linuxï¼</h2
  ><p
  >chalmers-lava2000 ã§ã¯åè·¯ã®æ§è³ªãæ¤è¨¼ããé¢æ° verify ãä½¿ããªãï¼ããã¯ verify ã«å¯¾å¿ããå¤é¨å®çè¨¼æå¨ã¸ã®ã©ããã¼ãæä¾ããã¦ããªãããã§ããï¼ãã®ä»£ãã« satzoo ãããã¯ smv ã¸ã®ã©ããã¼ãç¨æããã¦ããã®ã§ãããä½¿ãï¼</p
  ><div id="satzoo-&#12434;&#20351;&#12358;"
  ><h3
    >satzoo ãä½¿ã</h3
    ><p
    >å®çè¨¼æå¨ <a href="http://een.se/niklas/Satzoo/"
      >satzoo</a
      > ã¯ãã§ã« DEPRICATED! ã¨ã®ãã¨ã§ï¼ä»£ãã« <a href="http://minisat.se/"
      >MiniSat</a
      > ãä½¿ãï¼ã¾ãï¼</p
    ><div id="minisat-&#12398;&#12452;&#12531;&#12473;&#12488;&#12540;&#12523;"
    ><h4
      >minisat ã®ã¤ã³ã¹ãã¼ã«</h4
      ><p
      >minisat ã /usr/local/bin/ ã«ã¤ã³ã¹ãã¼ã«ãï¼ããã« satzoo ã¨ããå¥åãä»ãã¦ããï¼</p
      ><pre
      ><code
	>$ wget http://minisat.se/downloads/minisat2-070721.zip
$ unzip minisat2-070721.zip
$ cd minisat
$ cd simp
$ make rs
$ sudo cp minisat_static /usr/local/bin/minisat
$ sudo ln -s /usr/local/bin/minisat /usr/local/bin/satzoo
</code
	></pre
      ></div
    ><div id="&#12521;&#12483;&#12497;&#12540;&#12434;&#35373;&#23450;"
    ><h4
      >ã©ããã¼ãè¨­å®</h4
      ><p
      >å©ç¨æã«ç°å¢å¤æ° Lava2000_Satzoo ã /usr/local/bin/satzoo ãæãããã«ãã¦ããï¼ã·ã§ã«ã¨ãã¦ bash ãä½¿ã£ã¦ãããªãï¼$HOME/.bashrc ã«</p
      ><pre
      ><code
	>export Lava2000_Satzoo=/usr/local/bin/satzoo
</code
	></pre
      ><p
      >ãæ¸ãã¦ããã°ããã§ãããï¼ã©ããã¼ã¹ã¯ãªããã«å®è¡ãã¼ããã·ã§ã³ãç«ã¦ãï¼chalmers-lava2000 ãåè¿°ã®ããã«ã¤ã³ã¹ãã¼ã«ããã®ãªãï¼ã©ããã¼ã¹ã¯ãªããã¯ $HOME/.cabal/share/chalmers-lava2000-<version>/Scripts ã«ç½®ããã¦ããã¯ã.</p
      ><pre
      ><code
	>$ chmod +x $HOME/.cabal/share/chalmers-lava2000-1.1.1/Scripts/satzoo.wrapper
</code
	></pre
      ></div
    ></div
  ></div
>       date       2010-07-02 03:42:02 JST       path       
chap08.lhs       title       ç¬¬ï¼ç«  Lava: é¢æ°ã«ãããã¼ãã¦ã§ã¢è¨è¿°       url       chap08.html