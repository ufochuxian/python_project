.class public Lorg/jsoup/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/c/b$e;,
        Lorg/jsoup/c/b$c;,
        Lorg/jsoup/c/b$b;,
        Lorg/jsoup/c/b$a;,
        Lorg/jsoup/c/b$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/c/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/c/b$d;",
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/c/b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/c/b$d;",
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/c/b$a;",
            "Lorg/jsoup/c/b$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/c/b$d;",
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/c/b$a;",
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/c/b$c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/b;->b:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/b;->c:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/b;->d:Ljava/util/Map;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/c/b;->e:Z

    .line 177
    return-void
.end method

.method public static a()Lorg/jsoup/c/b;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/jsoup/c/b;

    invoke-direct {v0}, Lorg/jsoup/c/b;-><init>()V

    return-object v0
.end method

.method private a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/a;Ljava/util/Set;)Z
    .locals 6
    .param p1, "el"    # Lorg/jsoup/nodes/f;
    .param p2, "attr"    # Lorg/jsoup/nodes/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/f;",
            "Lorg/jsoup/nodes/a;",
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/c/b$c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, "protocols":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$c;>;"
    invoke-virtual {p2}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jsoup/nodes/f;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 363
    invoke-virtual {p2}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 364
    :cond_0
    iget-boolean v4, p0, Lorg/jsoup/c/b;->e:Z

    if-nez v4, :cond_1

    .line 365
    invoke-virtual {p2, v3}, Lorg/jsoup/nodes/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/c/b$c;

    .line 368
    .local v2, "protocol":Lorg/jsoup/c/b$c;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/jsoup/c/b$c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "prot":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    const/4 v4, 0x1

    .line 373
    .end local v1    # "prot":Ljava/lang/String;
    .end local v2    # "protocol":Lorg/jsoup/c/b$c;
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static b()Lorg/jsoup/c/b;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lorg/jsoup/c/b;

    invoke-direct {v0}, Lorg/jsoup/c/b;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "em"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "u"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/jsoup/c/b;->a([Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lorg/jsoup/c/b;
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    new-instance v0, Lorg/jsoup/c/b;

    invoke-direct {v0}, Lorg/jsoup/c/b;-><init>()V

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    const-string v2, "b"

    aput-object v2, v1, v6

    const-string v2, "blockquote"

    aput-object v2, v1, v7

    const-string v2, "br"

    aput-object v2, v1, v8

    const-string v2, "cite"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "em"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "li"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ol"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "pre"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "small"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "strike"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "sub"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "sup"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ul"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/jsoup/c/b;->a([Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "a"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "href"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "blockquote"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "q"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "a"

    const-string v2, "href"

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "ftp"

    aput-object v4, v3, v5

    const-string v4, "http"

    aput-object v4, v3, v6

    const-string v4, "https"

    aput-object v4, v3, v7

    const-string v4, "mailto"

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "blockquote"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "cite"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "a"

    const-string v2, "rel"

    const-string v3, "nofollow"

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lorg/jsoup/c/b;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-static {}, Lorg/jsoup/c/b;->c()Lorg/jsoup/c/b;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "img"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/jsoup/c/b;->a([Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "img"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "align"

    aput-object v3, v2, v5

    const-string v3, "alt"

    aput-object v3, v2, v6

    const-string v3, "height"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "src"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "img"

    const-string v2, "src"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lorg/jsoup/c/b;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    new-instance v0, Lorg/jsoup/c/b;

    invoke-direct {v0}, Lorg/jsoup/c/b;-><init>()V

    const/16 v1, 0x29

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    const-string v2, "b"

    aput-object v2, v1, v6

    const-string v2, "blockquote"

    aput-object v2, v1, v7

    const-string v2, "br"

    aput-object v2, v1, v8

    const-string v2, "caption"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "cite"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "col"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "colgroup"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "div"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "dl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "em"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "h1"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "h5"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "h6"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "img"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "li"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ol"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "pre"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "small"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "strike"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "sub"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "sup"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "table"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "tbody"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "td"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "tfoot"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "th"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "thead"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "tr"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "ul"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/jsoup/c/b;->a([Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "a"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "href"

    aput-object v3, v2, v5

    const-string v3, "title"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "blockquote"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "col"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "span"

    aput-object v3, v2, v5

    const-string v3, "width"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "colgroup"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "span"

    aput-object v3, v2, v5

    const-string v3, "width"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "img"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "align"

    aput-object v3, v2, v5

    const-string v3, "alt"

    aput-object v3, v2, v6

    const-string v3, "height"

    aput-object v3, v2, v7

    const-string v3, "src"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "ol"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "start"

    aput-object v3, v2, v5

    const-string v3, "type"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "q"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "table"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "summary"

    aput-object v3, v2, v5

    const-string v3, "width"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "td"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "abbr"

    aput-object v3, v2, v5

    const-string v3, "axis"

    aput-object v3, v2, v6

    const-string v3, "colspan"

    aput-object v3, v2, v7

    const-string v3, "rowspan"

    aput-object v3, v2, v8

    const-string v3, "width"

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "th"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "abbr"

    aput-object v3, v2, v5

    const-string v3, "axis"

    aput-object v3, v2, v6

    const-string v3, "colspan"

    aput-object v3, v2, v7

    const-string v3, "rowspan"

    aput-object v3, v2, v8

    const-string v3, "scope"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "ul"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "a"

    const-string v2, "href"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "ftp"

    aput-object v4, v3, v5

    const-string v4, "http"

    aput-object v4, v3, v6

    const-string v4, "https"

    aput-object v4, v3, v7

    const-string v4, "mailto"

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "blockquote"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "cite"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "img"

    const-string v2, "src"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    const-string v1, "q"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/c/b;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 244
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 245
    invoke-static {p3}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v3

    .line 248
    .local v3, "tagName":Lorg/jsoup/c/b$d;
    iget-object v4, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    iget-object v4, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    invoke-static {p2}, Lorg/jsoup/c/b$a;->a(Ljava/lang/String;)Lorg/jsoup/c/b$a;

    move-result-object v0

    .line 251
    .local v0, "attrKey":Lorg/jsoup/c/b$a;
    invoke-static {p3}, Lorg/jsoup/c/b$b;->a(Ljava/lang/String;)Lorg/jsoup/c/b$b;

    move-result-object v2

    .line 253
    .local v2, "attrVal":Lorg/jsoup/c/b$b;
    iget-object v4, p0, Lorg/jsoup/c/b;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lorg/jsoup/c/b;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_0
    return-object p0

    .line 256
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v1, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Lorg/jsoup/c/b$b;>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v4, p0, Lorg/jsoup/c/b;->c:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 295
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 296
    invoke-static {p3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 298
    invoke-static {p1}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v8

    .line 299
    .local v8, "tagName":Lorg/jsoup/c/b$d;
    invoke-static {p2}, Lorg/jsoup/c/b$a;->a(Ljava/lang/String;)Lorg/jsoup/c/b$a;

    move-result-object v1

    .line 303
    .local v1, "attrKey":Lorg/jsoup/c/b$a;
    iget-object v9, p0, Lorg/jsoup/c/b;->d:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 304
    iget-object v9, p0, Lorg/jsoup/c/b;->d:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 309
    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 310
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 315
    .local v6, "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$c;>;"
    :goto_1
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 316
    .local v7, "protocol":Ljava/lang/String;
    invoke-static {v7}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 317
    invoke-static {v7}, Lorg/jsoup/c/b$c;->a(Ljava/lang/String;)Lorg/jsoup/c/b$c;

    move-result-object v5

    .line 318
    .local v5, "prot":Lorg/jsoup/c/b$c;
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 306
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "prot":Lorg/jsoup/c/b$c;
    .end local v6    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$c;>;"
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 307
    .restart local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    iget-object v9, p0, Lorg/jsoup/c/b;->d:Ljava/util/Map;

    invoke-interface {v9, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 313
    .restart local v6    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$c;>;"
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 320
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2
    return-object p0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/c/b;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 210
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 211
    array-length v7, p2

    if-lez v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    const-string v8, "No attributes supplied."

    invoke-static {v7, v8}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 213
    invoke-static {p1}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v6

    .line 214
    .local v6, "tagName":Lorg/jsoup/c/b$d;
    iget-object v7, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 215
    iget-object v7, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 217
    .local v1, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$a;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 218
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 219
    invoke-static {v4}, Lorg/jsoup/c/b$a;->a(Ljava/lang/String;)Lorg/jsoup/c/b$a;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$a;>;"
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "tagName":Lorg/jsoup/c/b$d;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 221
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$a;>;"
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "tagName":Lorg/jsoup/c/b$d;
    :cond_2
    iget-object v7, p0, Lorg/jsoup/c/b;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 222
    iget-object v7, p0, Lorg/jsoup/c/b;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 223
    .local v2, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$a;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 227
    .end local v2    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/c/b$a;>;"
    :goto_2
    return-object p0

    .line 225
    :cond_3
    iget-object v7, p0, Lorg/jsoup/c/b;->b:Ljava/util/Map;

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public a(Z)Lorg/jsoup/c/b;
    .locals 0
    .param p1, "preserve"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lorg/jsoup/c/b;->e:Z

    .line 279
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lorg/jsoup/c/b;
    .locals 6
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 188
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 189
    .local v3, "tagName":Ljava/lang/String;
    invoke-static {v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    invoke-static {v3}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lorg/jsoup/c/b;->a:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/a;)Z
    .locals 6
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "el"    # Lorg/jsoup/nodes/f;
    .param p3, "attr"    # Lorg/jsoup/nodes/a;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 340
    invoke-static {p1}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v2

    .line 341
    .local v2, "tag":Lorg/jsoup/c/b$d;
    invoke-virtual {p3}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/c/b$a;->a(Ljava/lang/String;)Lorg/jsoup/c/b$a;

    move-result-object v1

    .line 343
    .local v1, "key":Lorg/jsoup/c/b$a;
    iget-object v3, p0, Lorg/jsoup/c/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    iget-object v3, p0, Lorg/jsoup/c/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lorg/jsoup/c/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lorg/jsoup/c/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 348
    .local v0, "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct {p0, p2, p3, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/a;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    move v5, v3

    .line 355
    .end local v0    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    :cond_1
    :goto_1
    return v5

    .restart local v0    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    :cond_2
    move v3, v4

    .line 348
    goto :goto_0

    .line 355
    .end local v0    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Ljava/util/Set<Lorg/jsoup/c/b$c;>;>;"
    :cond_3
    const-string v3, ":all"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ":all"

    invoke-virtual {p0, v3, p2, p3}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/a;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    move v5, v4

    goto :goto_1
.end method

.method b(Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 7
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    .line 378
    .local v0, "attrs":Lorg/jsoup/nodes/b;
    invoke-static {p1}, Lorg/jsoup/c/b$d;->a(Ljava/lang/String;)Lorg/jsoup/c/b$d;

    move-result-object v4

    .line 379
    .local v4, "tag":Lorg/jsoup/c/b$d;
    iget-object v5, p0, Lorg/jsoup/c/b;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    iget-object v5, p0, Lorg/jsoup/c/b;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 381
    .local v3, "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Lorg/jsoup/c/b$b;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 382
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/c/b$a;Lorg/jsoup/c/b$b;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/c/b$a;

    invoke-virtual {v5}, Lorg/jsoup/c/b$a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/c/b$b;

    invoke-virtual {v5}, Lorg/jsoup/c/b$b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/c/b$a;Lorg/jsoup/c/b$b;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/c/b$a;Lorg/jsoup/c/b$b;>;"
    :cond_0
    return-object v0
.end method
