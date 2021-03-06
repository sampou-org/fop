              body      <p
>é¢æ°ãã­ã°ã©ãã³ã°ã«ããããã¼ã¿æ§é ã®èãæ¹</p
><div id="&#38306;&#36899;&#12469;&#12452;&#12488;"
><h2
  >é¢é£ãµã¤ã</h2
  ><p
  >èèã®ãã¼ã¸</p
  ><ul
  ><li
    ><a href="http://www.eecs.usma.edu/webs/people/okasaki/default.htm"
      >Chris Okasaki</a
      ></li
    ></ul
  ></div
><div id="tree&#22411;&#12398;&#21046;&#32004;&#12395;&#12388;&#12356;&#12390;"
><h2
  >Treeåã®å¶ç´ã«ã¤ãã¦</h2
  ><p
  >p.1 ã§ã¯äºåãã¼ãæ¨ã®ãã¼ã¿åã¯ä»¥ä¸ã®ããã«å®£è¨ããã¦ããï¼</p
  ><pre class="sourceCode haskell"
  ><code
    ><span class="Special"
      >&gt; </span
      ><span class="Keyword"
      >data</span
      ><span class="Normal NormalText"
      > (</span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a) =&gt; Tree a = Null | Fork a (Tree a) (Tree a)</span
      ><br
       /></code
    ></pre
  ><p
  >ããã§ã®ï¼(Ord a)ã¨ããå¶ç´ã¯äºåãã¼ãæ¨ã®è¦ç´ ã¯ Ord ã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ã§ãªããã°ãªããªããã¨ãè¡¨ãã¦ããï¼ãã®ãããªãã¼ã¿å®£è¨ãããã¨ï¼ãã®åã®å¤ãå¼æ°ã¨ããé¢æ°ãã¹ã¦ããã®å¶ç´ãæºãããªããã°ãªããªãï¼ãããã£ã¦ï¼æ¬¡ã®ãã¼ã¸ä»¥éï¼ãã®æ¨ãå¼æ°ã¨ããé¢æ°ãå®£è¨ããå ´åã«ã¯ï¼ãã®é¢æ°ã«ã¤ãã¦ã¯ãã¡ãã¡ãã®å¶ç´ãå®£è¨ããå¿è¦ãããï¼ããªãã¡ï¼</p
  ><pre class="sourceCode haskell"
  ><code
    ><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >isEmpty    ::</span
      ><span class="Normal NormalText"
      > Tree a -&gt; </span
      ><span class="DataType TypeConstructor"
      >Bool</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >minElem    ::</span
      ><span class="Normal NormalText"
      > Tree a -&gt; a</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >deleteMin  ::</span
      ><span class="Normal NormalText"
      > Tree a -&gt; Tree a</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >insert     ::</span
      ><span class="Normal NormalText"
      > a -&gt; Tree a -&gt; Tree a</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >merge      ::</span
      ><span class="Normal NormalText"
      > Tree a -&gt; Tree a -&gt; Tree a</span
      ><br
       /></code
    ></pre
  ><p
  >ã®ã·ã°ããã£ã¯ï¼ç¾å¨ã®GHCï¼6.12.3ï¼ã§ã¯ã³ã³ãã¤ã©ã®ãã§ãã¯ããã¹ããªãï¼ããã¯ï¼</p
  ><pre class="sourceCode haskell"
  ><code
    ><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >isEmpty    ::</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a =&gt; Tree a -&gt; </span
      ><span class="DataType TypeConstructor"
      >Bool</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >minElem    ::</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a =&gt; Tree a -&gt; a</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >deleteMin  ::</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a =&gt; Tree a -&gt; Tree a</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >insert     ::</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a =&gt; a -&gt; Tree a -&gt; Tree a</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >merge      ::</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a =&gt; Tree a -&gt; Tree a -&gt; Tree a</span
      ><br
       /></code
    ></pre
  ><p
  >ã¨ããªããã°ãªããªãï¼</p
  ></div
><div id="tree-&#12398;&#34920;&#31034;"
><h2
  >Tree ã®è¡¨ç¤º</h2
  ><p
  >ãã®ç« ã§å®ç¾©ããäºåãã¼ãæ¨ãå°å­ããæ¹æ³ãããã° Show ã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ã¨ãã¦å®£è¨ãå¯è½ã§ã«ãªãï¼ãããã¦ããã°ï¼ã­ã¥ã¼æä½ã®çµæãè¦ãããï¼ä»¥ä¸ã« Data.Tree ã«ãã drawTree ãä½¿ãæ¹æ³ãç¤ºãï¼</p
  ><pre class="sourceCode haskell"
  ><code
    ><span class="Special"
      >&gt; </span
      ><span class="Keyword"
      >import</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword"
      >qualified</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Normal ModuleName"
      >Data.Tree</span
      ><span class="Normal NormalText"
      > </span
      ><span class="Keyword"
      >as</span
      ><span class="Normal NormalText"
      > T</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Keyword"
      >data</span
      ><span class="Normal NormalText"
      > (</span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a) =&gt; Tree a = Null | Fork a (Tree a) (Tree a)</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Function FunctionDefinition"
      >drawTree ::</span
      ><span class="Normal NormalText"
      > (</span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a, </span
      ><span class="Keyword Class"
      >Show</span
      ><span class="Normal NormalText"
      > a) =&gt; Tree a -&gt; </span
      ><span class="DataType TypeConstructor"
      >String</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Normal NormalText"
      >drawTree = T.drawTree . conv</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Normal NormalText"
      >  </span
      ><span class="Keyword"
      >where</span
      ><span class="Normal NormalText"
      > </span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Normal NormalText"
      >    conv Null = </span
      ><span class="Normal ModuleName"
      >T.Node</span
      ><span class="Normal NormalText"
      > </span
      ><span class="String"
      >&quot;Null&quot;</span
      ><span class="Normal NormalText"
      > []</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Normal NormalText"
      >    conv (Fork x a b) = </span
      ><span class="Normal ModuleName"
      >T.Node</span
      ><span class="Normal NormalText"
      > (</span
      ><span class="Function"
      >show</span
      ><span class="Normal NormalText"
      > x) (</span
      ><span class="Function"
      >map</span
      ><span class="Normal NormalText"
      > conv [a,b])</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Keyword"
      >instance</span
      ><span class="Normal NormalText"
      > (</span
      ><span class="Keyword Class"
      >Ord</span
      ><span class="Normal NormalText"
      > a, </span
      ><span class="Keyword Class"
      >Show</span
      ><span class="Normal NormalText"
      > a) =&gt; </span
      ><span class="Keyword Class"
      >Show</span
      ><span class="Normal NormalText"
      > (Tree a) </span
      ><span class="Keyword"
      >where</span
      ><br
       /><span class="Special"
      >&gt; </span
      ><span class="Normal NormalText"
      >  </span
      ><span class="Function"
      >show</span
      ><span class="Normal NormalText"
      > = drawTree</span
      ><br
       /></code
    ></pre
  ><p
  >ãã®æ¹æ³ã§ã¯ï¼å·¦å´ã®é¨åæ¨ãåï¼ããªãã¡ï¼ä¸ã®è¡ã«ï¼å³å´ã®é¨åæ¨ãå¾ï¼ããªãã¡ï¼ä¸ã®è¡ã«å°å­ããããã¨ã«æ³¨æãããã¨ï¼</p
  ></div
>       date       2010-07-02 06:08:10 JST       path       
chap01.lhs       title       ç¬¬ï¼ç«  äºåãã¼ãæ¨ã®æ¥½ãã¿       url       chap01.html