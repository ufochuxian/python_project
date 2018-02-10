.class public Lorg/jsoup/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jsoup/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 14
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    .line 221
    const/16 v5, 0x3b

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "html"

    aput-object v6, v5, v8

    const-string v6, "head"

    aput-object v6, v5, v9

    const-string v6, "body"

    aput-object v6, v5, v10

    const-string v6, "frameset"

    aput-object v6, v5, v11

    const-string v6, "script"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "noscript"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "style"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "meta"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "link"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "title"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "frame"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "noframes"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "section"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "nav"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "aside"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "hgroup"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "header"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "footer"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "p"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "h1"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "h2"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "h3"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "h4"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "h5"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "h6"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "ul"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "ol"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "pre"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "div"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "blockquote"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "hr"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, "address"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "figure"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "figcaption"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "form"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "fieldset"

    aput-object v7, v5, v6

    const/16 v6, 0x24

    const-string v7, "ins"

    aput-object v7, v5, v6

    const/16 v6, 0x25

    const-string v7, "del"

    aput-object v7, v5, v6

    const/16 v6, 0x26

    const-string v7, "s"

    aput-object v7, v5, v6

    const/16 v6, 0x27

    const-string v7, "dl"

    aput-object v7, v5, v6

    const/16 v6, 0x28

    const-string v7, "dt"

    aput-object v7, v5, v6

    const/16 v6, 0x29

    const-string v7, "dd"

    aput-object v7, v5, v6

    const/16 v6, 0x2a

    const-string v7, "li"

    aput-object v7, v5, v6

    const/16 v6, 0x2b

    const-string v7, "table"

    aput-object v7, v5, v6

    const/16 v6, 0x2c

    const-string v7, "caption"

    aput-object v7, v5, v6

    const/16 v6, 0x2d

    const-string v7, "thead"

    aput-object v7, v5, v6

    const/16 v6, 0x2e

    const-string v7, "tfoot"

    aput-object v7, v5, v6

    const/16 v6, 0x2f

    const-string v7, "tbody"

    aput-object v7, v5, v6

    const/16 v6, 0x30

    const-string v7, "colgroup"

    aput-object v7, v5, v6

    const/16 v6, 0x31

    const-string v7, "col"

    aput-object v7, v5, v6

    const/16 v6, 0x32

    const-string v7, "tr"

    aput-object v7, v5, v6

    const/16 v6, 0x33

    const-string v7, "th"

    aput-object v7, v5, v6

    const/16 v6, 0x34

    const-string v7, "td"

    aput-object v7, v5, v6

    const/16 v6, 0x35

    const-string v7, "video"

    aput-object v7, v5, v6

    const/16 v6, 0x36

    const-string v7, "audio"

    aput-object v7, v5, v6

    const/16 v6, 0x37

    const-string v7, "canvas"

    aput-object v7, v5, v6

    const/16 v6, 0x38

    const-string v7, "details"

    aput-object v7, v5, v6

    const/16 v6, 0x39

    const-string v7, "menu"

    aput-object v7, v5, v6

    const/16 v6, 0x3a

    const-string v7, "plaintext"

    aput-object v7, v5, v6

    sput-object v5, Lorg/jsoup/b/g;->l:[Ljava/lang/String;

    .line 228
    const/16 v5, 0x38

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "object"

    aput-object v6, v5, v8

    const-string v6, "base"

    aput-object v6, v5, v9

    const-string v6, "font"

    aput-object v6, v5, v10

    const-string v6, "tt"

    aput-object v6, v5, v11

    const-string v6, "i"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "b"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "u"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "big"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "small"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "em"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "strong"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "dfn"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "code"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "samp"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "kbd"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "var"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "cite"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "abbr"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "time"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "acronym"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "mark"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "ruby"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "rt"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "rp"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "a"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "img"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "br"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "wbr"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "map"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "q"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "sub"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, "sup"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "bdo"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "iframe"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "embed"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "span"

    aput-object v7, v5, v6

    const/16 v6, 0x24

    const-string v7, "input"

    aput-object v7, v5, v6

    const/16 v6, 0x25

    const-string v7, "select"

    aput-object v7, v5, v6

    const/16 v6, 0x26

    const-string v7, "textarea"

    aput-object v7, v5, v6

    const/16 v6, 0x27

    const-string v7, "label"

    aput-object v7, v5, v6

    const/16 v6, 0x28

    const-string v7, "button"

    aput-object v7, v5, v6

    const/16 v6, 0x29

    const-string v7, "optgroup"

    aput-object v7, v5, v6

    const/16 v6, 0x2a

    const-string v7, "option"

    aput-object v7, v5, v6

    const/16 v6, 0x2b

    const-string v7, "legend"

    aput-object v7, v5, v6

    const/16 v6, 0x2c

    const-string v7, "datalist"

    aput-object v7, v5, v6

    const/16 v6, 0x2d

    const-string v7, "keygen"

    aput-object v7, v5, v6

    const/16 v6, 0x2e

    const-string v7, "output"

    aput-object v7, v5, v6

    const/16 v6, 0x2f

    const-string v7, "progress"

    aput-object v7, v5, v6

    const/16 v6, 0x30

    const-string v7, "meter"

    aput-object v7, v5, v6

    const/16 v6, 0x31

    const-string v7, "area"

    aput-object v7, v5, v6

    const/16 v6, 0x32

    const-string v7, "param"

    aput-object v7, v5, v6

    const/16 v6, 0x33

    const-string v7, "source"

    aput-object v7, v5, v6

    const/16 v6, 0x34

    const-string v7, "track"

    aput-object v7, v5, v6

    const/16 v6, 0x35

    const-string v7, "summary"

    aput-object v7, v5, v6

    const/16 v6, 0x36

    const-string v7, "command"

    aput-object v7, v5, v6

    const/16 v6, 0x37

    const-string v7, "device"

    aput-object v7, v5, v6

    sput-object v5, Lorg/jsoup/b/g;->m:[Ljava/lang/String;

    .line 235
    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "meta"

    aput-object v6, v5, v8

    const-string v6, "link"

    aput-object v6, v5, v9

    const-string v6, "base"

    aput-object v6, v5, v10

    const-string v6, "frame"

    aput-object v6, v5, v11

    const-string v6, "img"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "br"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "wbr"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "embed"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "hr"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "input"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "keygen"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "col"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "command"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "device"

    aput-object v7, v5, v6

    sput-object v5, Lorg/jsoup/b/g;->n:[Ljava/lang/String;

    .line 239
    const/16 v5, 0x13

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "title"

    aput-object v6, v5, v8

    const-string v6, "a"

    aput-object v6, v5, v9

    const-string v6, "p"

    aput-object v6, v5, v10

    const-string v6, "h1"

    aput-object v6, v5, v11

    const-string v6, "h2"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "h3"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "h4"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "h5"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "h6"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "pre"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "address"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "li"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "th"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "td"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "script"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "style"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "ins"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "del"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "s"

    aput-object v7, v5, v6

    sput-object v5, Lorg/jsoup/b/g;->o:[Ljava/lang/String;

    .line 243
    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "pre"

    aput-object v6, v5, v8

    const-string v6, "plaintext"

    aput-object v6, v5, v9

    const-string v6, "title"

    aput-object v6, v5, v10

    const-string v6, "textarea"

    aput-object v6, v5, v11

    sput-object v5, Lorg/jsoup/b/g;->p:[Ljava/lang/String;

    .line 247
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "button"

    aput-object v6, v5, v8

    const-string v6, "fieldset"

    aput-object v6, v5, v9

    const-string v6, "input"

    aput-object v6, v5, v10

    const-string v6, "keygen"

    aput-object v6, v5, v11

    const-string v6, "object"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "output"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "select"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "textarea"

    aput-object v7, v5, v6

    sput-object v5, Lorg/jsoup/b/g;->q:[Ljava/lang/String;

    .line 250
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "input"

    aput-object v6, v5, v8

    const-string v6, "keygen"

    aput-object v6, v5, v9

    const-string v6, "object"

    aput-object v6, v5, v10

    const-string v6, "select"

    aput-object v6, v5, v11

    const-string v6, "textarea"

    aput-object v6, v5, v12

    sput-object v5, Lorg/jsoup/b/g;->r:[Ljava/lang/String;

    .line 256
    sget-object v0, Lorg/jsoup/b/g;->l:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 257
    .local v4, "tagName":Ljava/lang/String;
    new-instance v3, Lorg/jsoup/b/g;

    invoke-direct {v3, v4}, Lorg/jsoup/b/g;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "tag":Lorg/jsoup/b/g;
    invoke-static {v3}, Lorg/jsoup/b/g;->a(Lorg/jsoup/b/g;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lorg/jsoup/b/g;->m:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 261
    .restart local v4    # "tagName":Ljava/lang/String;
    new-instance v3, Lorg/jsoup/b/g;

    invoke-direct {v3, v4}, Lorg/jsoup/b/g;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v3    # "tag":Lorg/jsoup/b/g;
    iput-boolean v8, v3, Lorg/jsoup/b/g;->c:Z

    .line 263
    iput-boolean v8, v3, Lorg/jsoup/b/g;->e:Z

    .line 264
    iput-boolean v8, v3, Lorg/jsoup/b/g;->d:Z

    .line 265
    invoke-static {v3}, Lorg/jsoup/b/g;->a(Lorg/jsoup/b/g;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/jsoup/b/g;->n:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 270
    .restart local v4    # "tagName":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/b/g;

    .line 271
    .restart local v3    # "tag":Lorg/jsoup/b/g;
    invoke-static {v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 272
    iput-boolean v8, v3, Lorg/jsoup/b/g;->e:Z

    .line 273
    iput-boolean v8, v3, Lorg/jsoup/b/g;->f:Z

    .line 274
    iput-boolean v9, v3, Lorg/jsoup/b/g;->g:Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_2
    sget-object v0, Lorg/jsoup/b/g;->o:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 278
    .restart local v4    # "tagName":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/b/g;

    .line 279
    .restart local v3    # "tag":Lorg/jsoup/b/g;
    invoke-static {v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 280
    iput-boolean v8, v3, Lorg/jsoup/b/g;->d:Z

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 283
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_3
    sget-object v0, Lorg/jsoup/b/g;->p:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 284
    .restart local v4    # "tagName":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/b/g;

    .line 285
    .restart local v3    # "tag":Lorg/jsoup/b/g;
    invoke-static {v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 286
    iput-boolean v9, v3, Lorg/jsoup/b/g;->i:Z

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 289
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lorg/jsoup/b/g;->q:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 290
    .restart local v4    # "tagName":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/b/g;

    .line 291
    .restart local v3    # "tag":Lorg/jsoup/b/g;
    invoke-static {v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 292
    iput-boolean v9, v3, Lorg/jsoup/b/g;->j:Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 295
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_5
    sget-object v0, Lorg/jsoup/b/g;->r:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 296
    .restart local v4    # "tagName":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/b/g;

    .line 297
    .restart local v3    # "tag":Lorg/jsoup/b/g;
    invoke-static {v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 298
    iput-boolean v9, v3, Lorg/jsoup/b/g;->k:Z

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 300
    .end local v3    # "tag":Lorg/jsoup/b/g;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lorg/jsoup/b/g;->c:Z

    .line 18
    iput-boolean v1, p0, Lorg/jsoup/b/g;->d:Z

    .line 19
    iput-boolean v1, p0, Lorg/jsoup/b/g;->e:Z

    .line 20
    iput-boolean v1, p0, Lorg/jsoup/b/g;->f:Z

    .line 21
    iput-boolean v0, p0, Lorg/jsoup/b/g;->g:Z

    .line 22
    iput-boolean v0, p0, Lorg/jsoup/b/g;->h:Z

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/b/g;->i:Z

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/b/g;->j:Z

    .line 25
    iput-boolean v0, p0, Lorg/jsoup/b/g;->k:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/jsoup/b/g;
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 50
    sget-object v1, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/b/g;

    .line 52
    .local v0, "tag":Lorg/jsoup/b/g;
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lorg/jsoup/b/g;
    check-cast v0, Lorg/jsoup/b/g;

    .line 57
    .restart local v0    # "tag":Lorg/jsoup/b/g;
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/jsoup/b/g;

    .end local v0    # "tag":Lorg/jsoup/b/g;
    invoke-direct {v0, p0}, Lorg/jsoup/b/g;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v0    # "tag":Lorg/jsoup/b/g;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jsoup/b/g;->c:Z

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/b/g;->e:Z

    .line 64
    :cond_0
    return-object v0
.end method

.method private static a(Lorg/jsoup/b/g;)V
    .locals 2
    .param p0, "tag"    # Lorg/jsoup/b/g;

    .prologue
    .line 303
    sget-object v0, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-object v0, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/jsoup/b/g;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/jsoup/b/g;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/jsoup/b/g;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/jsoup/b/g;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p0, p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    instance-of v3, p1, Lorg/jsoup/b/g;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 184
    check-cast v0, Lorg/jsoup/b/g;

    .line 186
    .local v0, "tag":Lorg/jsoup/b/g;
    iget-boolean v3, p0, Lorg/jsoup/b/g;->e:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->e:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 187
    :cond_3
    iget-boolean v3, p0, Lorg/jsoup/b/g;->f:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->f:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 188
    :cond_4
    iget-boolean v3, p0, Lorg/jsoup/b/g;->g:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->g:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 189
    :cond_5
    iget-boolean v3, p0, Lorg/jsoup/b/g;->d:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->d:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 190
    :cond_6
    iget-boolean v3, p0, Lorg/jsoup/b/g;->c:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->c:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 191
    :cond_7
    iget-boolean v3, p0, Lorg/jsoup/b/g;->i:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->i:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 192
    :cond_8
    iget-boolean v3, p0, Lorg/jsoup/b/g;->h:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->h:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 193
    :cond_9
    iget-boolean v3, p0, Lorg/jsoup/b/g;->j:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->j:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 194
    :cond_a
    iget-boolean v3, p0, Lorg/jsoup/b/g;->k:Z

    iget-boolean v4, v0, Lorg/jsoup/b/g;->k:Z

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 195
    :cond_b
    iget-object v3, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    iget-object v4, v0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/jsoup/b/g;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/b/g;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/jsoup/b/g;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/jsoup/b/g;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jsoup/b/g;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 203
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->c:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 204
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->d:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 205
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->e:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 206
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->f:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 207
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->g:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 208
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->h:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v4, v1

    .line 209
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->i:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v4, v1

    .line 210
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/b/g;->j:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v4, v1

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/jsoup/b/g;->k:Z

    if-eqz v4, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 212
    return v0

    :cond_0
    move v1, v3

    .line 203
    goto :goto_0

    :cond_1
    move v1, v3

    .line 204
    goto :goto_1

    :cond_2
    move v1, v3

    .line 205
    goto :goto_2

    :cond_3
    move v1, v3

    .line 206
    goto :goto_3

    :cond_4
    move v1, v3

    .line 207
    goto :goto_4

    :cond_5
    move v1, v3

    .line 208
    goto :goto_5

    :cond_6
    move v1, v3

    .line 209
    goto :goto_6

    :cond_7
    move v1, v3

    .line 210
    goto :goto_7

    :cond_8
    move v2, v3

    .line 211
    goto :goto_8
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lorg/jsoup/b/g;->a:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/jsoup/b/g;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/jsoup/b/g;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/jsoup/b/g;->k:Z

    return v0
.end method

.method m()Lorg/jsoup/b/g;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/b/g;->h:Z

    .line 176
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/jsoup/b/g;->b:Ljava/lang/String;

    return-object v0
.end method
