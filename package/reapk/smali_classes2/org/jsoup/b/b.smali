.class Lorg/jsoup/b/b;
.super Lorg/jsoup/b/l;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field static final synthetic b:Z

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private q:Lorg/jsoup/b/c;

.field private r:Lorg/jsoup/b/c;

.field private s:Z

.field private t:Lorg/jsoup/nodes/f;

.field private u:Lorg/jsoup/nodes/g;

.field private v:Lorg/jsoup/nodes/f;

.field private w:Lorg/jsoup/helper/DescendableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/b/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    const-class v0, Lorg/jsoup/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/jsoup/b/b;->b:Z

    .line 19
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "script"

    aput-object v3, v0, v2

    const-string v3, "style"

    aput-object v3, v0, v1

    sput-object v0, Lorg/jsoup/b/b;->j:[Ljava/lang/String;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "applet"

    aput-object v3, v0, v2

    const-string v3, "caption"

    aput-object v3, v0, v1

    const-string v3, "html"

    aput-object v3, v0, v5

    const-string v3, "table"

    aput-object v3, v0, v6

    const-string v3, "td"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "th"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "marquee"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "object"

    aput-object v4, v0, v3

    sput-object v0, Lorg/jsoup/b/b;->a:[Ljava/lang/String;

    .line 21
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "ol"

    aput-object v3, v0, v2

    const-string v3, "ul"

    aput-object v3, v0, v1

    sput-object v0, Lorg/jsoup/b/b;->k:[Ljava/lang/String;

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "button"

    aput-object v3, v0, v2

    sput-object v0, Lorg/jsoup/b/b;->l:[Ljava/lang/String;

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "html"

    aput-object v3, v0, v2

    const-string v3, "table"

    aput-object v3, v0, v1

    sput-object v0, Lorg/jsoup/b/b;->m:[Ljava/lang/String;

    .line 24
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "optgroup"

    aput-object v3, v0, v2

    const-string v3, "option"

    aput-object v3, v0, v1

    sput-object v0, Lorg/jsoup/b/b;->n:[Ljava/lang/String;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "dd"

    aput-object v3, v0, v2

    const-string v3, "dt"

    aput-object v3, v0, v1

    const-string v3, "li"

    aput-object v3, v0, v5

    const-string v3, "option"

    aput-object v3, v0, v6

    const-string v3, "optgroup"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "p"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "rp"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "rt"

    aput-object v4, v0, v3

    sput-object v0, Lorg/jsoup/b/b;->o:[Ljava/lang/String;

    .line 26
    const/16 v0, 0x4f

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v0, v2

    const-string v2, "applet"

    aput-object v2, v0, v1

    const-string v1, "area"

    aput-object v1, v0, v5

    const-string v1, "article"

    aput-object v1, v0, v6

    const-string v1, "aside"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "base"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "basefont"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bgsound"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "blockquote"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "br"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "button"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "caption"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "center"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "col"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "colgroup"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "command"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dd"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "details"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dir"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "dl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "dt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "embed"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "fieldset"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "figcaption"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "figure"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "footer"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "form"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "frame"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "frameset"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "h1"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "h2"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "h3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "h4"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "h5"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "h6"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "head"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "header"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "hgroup"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "html"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "iframe"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "img"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "input"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "isindex"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "listing"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "marquee"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "menu"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "meta"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "nav"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "noembed"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "noframes"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "noscript"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "object"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "ol"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "param"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "plaintext"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "pre"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "script"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "select"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "style"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "table"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "td"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "textarea"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "ul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "wbr"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "xmp"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/b/b;->p:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 17
    goto/16 :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lorg/jsoup/b/l;-><init>()V

    .line 38
    iput-boolean v1, p0, Lorg/jsoup/b/b;->s:Z

    .line 42
    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {v0}, Lorg/jsoup/helper/DescendableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/b;->x:Ljava/util/List;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/b/b;->y:Z

    .line 46
    iput-boolean v1, p0, Lorg/jsoup/b/b;->z:Z

    .line 47
    iput-boolean v1, p0, Lorg/jsoup/b/b;->A:Z

    .line 49
    return-void
.end method

.method private a(Ljava/util/LinkedList;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V
    .locals 2
    .param p2, "out"    # Lorg/jsoup/nodes/f;
    .param p3, "in"    # Lorg/jsoup/nodes/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;",
            "Lorg/jsoup/nodes/f;",
            "Lorg/jsoup/nodes/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 396
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/d;->a(Z)V

    .line 397
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 398
    invoke-virtual {p1, v0, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 399
    return-void

    .line 396
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    .prologue
    .line 453
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/b/b;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p2, "element"    # Lorg/jsoup/nodes/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;",
            "Lorg/jsoup/nodes/f;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "queue":Lorg/jsoup/helper/DescendableLinkedList;, "Lorg/jsoup/helper/DescendableLinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual {p1}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 281
    .local v1, "next":Lorg/jsoup/nodes/f;
    if-ne v1, p2, :cond_0

    .line 282
    const/4 v2, 0x1

    .line 285
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetNames"    # [Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v4, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 458
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 460
    .local v0, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "elName":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 462
    const/4 v3, 0x1

    .line 469
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 463
    .restart local v0    # "el":Lorg/jsoup/nodes/f;
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_2
    invoke-static {v1, p2}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 465
    if-eqz p3, :cond_0

    invoke-static {v1, p3}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 468
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_3
    const-string v4, "Should not be reachable"

    invoke-static {v4}, Lorg/jsoup/helper/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lorg/jsoup/nodes/h;)V
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lorg/jsoup/b/b;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 250
    :goto_0
    instance-of v0, p1, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/f;

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/jsoup/b/b;->u:Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/jsoup/b/b;->u:Lorg/jsoup/nodes/g;

    check-cast p1, Lorg/jsoup/nodes/f;

    .end local p1    # "node":Lorg/jsoup/nodes/h;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->b(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/g;

    .line 254
    :cond_0
    return-void

    .line 244
    .restart local p1    # "node":Lorg/jsoup/nodes/h;
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/nodes/h;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method private varargs c([Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeNames"    # [Ljava/lang/String;

    .prologue
    .line 362
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 363
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 365
    .local v1, "next":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_0
    return-void

    .line 368
    .restart local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private d(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 2
    .param p1, "a"    # Lorg/jsoup/nodes/f;
    .param p2, "b"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 596
    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;Lorg/jsoup/b/e;)Ljava/util/List;
    .locals 10
    .param p1, "inputFragment"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/jsoup/nodes/f;
    .param p3, "baseUri"    # Ljava/lang/String;
    .param p4, "errors"    # Lorg/jsoup/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/f;",
            "Ljava/lang/String;",
            "Lorg/jsoup/b/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 59
    sget-object v5, Lorg/jsoup/b/c;->Initial:Lorg/jsoup/b/c;

    iput-object v5, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    .line 60
    invoke-virtual {p0, p1, p3, p4}, Lorg/jsoup/b/b;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)V

    .line 61
    iput-object p2, p0, Lorg/jsoup/b/b;->v:Lorg/jsoup/nodes/f;

    .line 62
    iput-boolean v7, p0, Lorg/jsoup/b/b;->A:Z

    .line 63
    const/4 v4, 0x0

    .line 65
    .local v4, "root":Lorg/jsoup/nodes/f;
    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->U()Lorg/jsoup/nodes/Document;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 67
    iget-object v5, p0, Lorg/jsoup/b/b;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->U()Lorg/jsoup/nodes/Document;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Document;->j()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 70
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "contextTag":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "title"

    aput-object v6, v5, v8

    const-string v6, "textarea"

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    iget-object v5, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 84
    :goto_0
    new-instance v4, Lorg/jsoup/nodes/f;

    .end local v4    # "root":Lorg/jsoup/nodes/f;
    const-string v5, "html"

    invoke-static {v5}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 85
    .restart local v4    # "root":Lorg/jsoup/nodes/f;
    iget-object v5, p0, Lorg/jsoup/b/b;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 86
    iget-object v5, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5, v4}, Lorg/jsoup/helper/DescendableLinkedList;->push(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lorg/jsoup/b/b;->m()V

    .line 91
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->s()Lorg/jsoup/select/c;

    move-result-object v0

    .line 92
    .local v0, "contextChain":Lorg/jsoup/select/c;
    invoke-virtual {v0, v8, p2}, Lorg/jsoup/select/c;->b(ILorg/jsoup/nodes/f;)V

    .line 93
    invoke-virtual {v0}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/f;

    .line 94
    .local v3, "parent":Lorg/jsoup/nodes/f;
    instance-of v5, v3, Lorg/jsoup/nodes/g;

    if-eqz v5, :cond_1

    .line 95
    check-cast v3, Lorg/jsoup/nodes/g;

    .end local v3    # "parent":Lorg/jsoup/nodes/f;
    iput-object v3, p0, Lorg/jsoup/b/b;->u:Lorg/jsoup/nodes/g;

    .line 101
    .end local v0    # "contextChain":Lorg/jsoup/select/c;
    .end local v1    # "contextTag":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/b/b;->w()V

    .line 102
    if-eqz p2, :cond_8

    .line 103
    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->P()Ljava/util/List;

    move-result-object v5

    .line 105
    :goto_1
    return-object v5

    .line 73
    .restart local v1    # "contextTag":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "iframe"

    aput-object v6, v5, v8

    const-string v6, "noembed"

    aput-object v6, v5, v7

    const-string v6, "noframes"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const-string v7, "style"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "xmp"

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    iget-object v5, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->Rawtext:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v5, "script"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 76
    iget-object v5, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->ScriptData:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v5, "noscript"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 78
    iget-object v5, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->Data:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto/16 :goto_0

    .line 79
    :cond_6
    const-string v5, "plaintext"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 80
    iget-object v5, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->Data:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto/16 :goto_0

    .line 82
    :cond_7
    iget-object v5, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->Data:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto/16 :goto_0

    .line 105
    .end local v1    # "contextTag":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lorg/jsoup/b/b;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Document;->P()Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method

.method a()Lorg/jsoup/b/c;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/b/e;

    .prologue
    .line 53
    sget-object v0, Lorg/jsoup/b/c;->Initial:Lorg/jsoup/b/c;

    iput-object v0, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    .line 54
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "startTagName"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-static {p1}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 190
    .local v0, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {p0, v0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/f;)V

    .line 191
    return-object v0
.end method

.method a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;
    .locals 5
    .param p1, "startTag"    # Lorg/jsoup/b/h$f;

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 177
    .local v0, "el":Lorg/jsoup/nodes/f;
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2, v0}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v2, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v3, Lorg/jsoup/b/k;->Data:Lorg/jsoup/b/k;

    invoke-virtual {v2, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 179
    iget-object v2, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    new-instance v3, Lorg/jsoup/b/h$e;

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/h;)V

    move-object v1, v0

    .line 185
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    .local v1, "el":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 183
    .end local v1    # "el":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    iget-object v4, p1, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    invoke-direct {v0, v2, v3, v4}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 184
    .restart local v0    # "el":Lorg/jsoup/nodes/f;
    invoke-virtual {p0, v0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/f;)V

    move-object v1, v0

    .line 185
    .restart local v1    # "el":Ljava/lang/Object;
    goto :goto_0
.end method

.method a(Lorg/jsoup/b/h$f;Z)Lorg/jsoup/nodes/g;
    .locals 4
    .param p1, "startTag"    # Lorg/jsoup/b/h$f;
    .param p2, "onStack"    # Z

    .prologue
    .line 216
    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    .line 217
    .local v1, "tag":Lorg/jsoup/b/g;
    new-instance v0, Lorg/jsoup/nodes/g;

    iget-object v2, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 218
    .local v0, "el":Lorg/jsoup/nodes/g;
    invoke-virtual {p0, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/nodes/g;)V

    .line 219
    invoke-direct {p0, v0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/h;)V

    .line 220
    if-eqz p2, :cond_0

    .line 221
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2, v0}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-object v0
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/b/h$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "pendingTableCharacters":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/b/h$a;>;"
    iput-object p1, p0, Lorg/jsoup/b/b;->x:Ljava/util/List;

    .line 546
    return-void
.end method

.method a(Lorg/jsoup/b/c;)V
    .locals 0
    .param p1, "state"    # Lorg/jsoup/b/c;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    .line 121
    return-void
.end method

.method a(Lorg/jsoup/b/h$a;)V
    .locals 3
    .param p1, "characterToken"    # Lorg/jsoup/b/h$a;

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jsoup/b/b;->j:[Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Lorg/jsoup/nodes/d;

    invoke-virtual {p1}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v0, "node":Lorg/jsoup/nodes/h;
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 238
    return-void

    .line 236
    .end local v0    # "node":Lorg/jsoup/nodes/h;
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/i;

    invoke-virtual {p1}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "node":Lorg/jsoup/nodes/h;
    goto :goto_0
.end method

.method a(Lorg/jsoup/b/h$b;)V
    .locals 3
    .param p1, "commentToken"    # Lorg/jsoup/b/h$b;

    .prologue
    .line 226
    new-instance v0, Lorg/jsoup/nodes/c;

    invoke-virtual {p1}, Lorg/jsoup/b/h$b;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v0, "comment":Lorg/jsoup/nodes/c;
    invoke-direct {p0, v0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/h;)V

    .line 228
    return-void
.end method

.method a(Lorg/jsoup/nodes/f;)V
    .locals 2
    .param p1, "base"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 152
    iget-boolean v1, p0, Lorg/jsoup/b/b;->s:Z

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/f;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iput-object v0, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/b/b;->s:Z

    .line 159
    iget-object v1, p0, Lorg/jsoup/b/b;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Document;->K(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V
    .locals 3
    .param p1, "after"    # Lorg/jsoup/nodes/f;
    .param p2, "in"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 385
    iget-object v1, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1, p1}, Lorg/jsoup/helper/DescendableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 386
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/d;->a(Z)V

    .line 387
    iget-object v1, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Lorg/jsoup/helper/DescendableLinkedList;->add(ILjava/lang/Object;)V

    .line 388
    return-void

    .line 386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method a(Lorg/jsoup/nodes/g;)V
    .locals 0
    .param p1, "formElement"    # Lorg/jsoup/nodes/g;

    .prologue
    .line 533
    iput-object p1, p0, Lorg/jsoup/b/b;->u:Lorg/jsoup/nodes/g;

    .line 534
    return-void
.end method

.method a(Lorg/jsoup/nodes/h;)V
    .locals 5
    .param p1, "in"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "fosterParent":Lorg/jsoup/nodes/f;
    const-string v3, "table"

    invoke-virtual {p0, v3}, Lorg/jsoup/b/b;->b(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v2

    .line 687
    .local v2, "lastTable":Lorg/jsoup/nodes/f;
    const/4 v1, 0x0

    .line 688
    .local v1, "isLastTableParent":Z
    if-eqz v2, :cond_1

    .line 689
    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 690
    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 691
    const/4 v1, 0x1

    .line 698
    :goto_0
    if-eqz v1, :cond_2

    .line 699
    invoke-static {v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 700
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/f;->c(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 704
    :goto_1
    return-void

    .line 693
    :cond_0
    invoke-virtual {p0, v2}, Lorg/jsoup/b/b;->f(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object v0

    goto :goto_0

    .line 695
    :cond_1
    iget-object v3, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fosterParent":Lorg/jsoup/nodes/f;
    check-cast v0, Lorg/jsoup/nodes/f;

    .restart local v0    # "fosterParent":Lorg/jsoup/nodes/f;
    goto :goto_0

    .line 703
    :cond_2
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    goto :goto_1
.end method

.method a(Z)V
    .locals 0
    .param p1, "framesetOk"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/jsoup/b/b;->y:Z

    .line 137
    return-void
.end method

.method varargs a([Ljava/lang/String;)V
    .locals 3
    .param p1, "elNames"    # [Ljava/lang/String;

    .prologue
    .line 325
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 326
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 328
    .local v1, "next":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 335
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_0
    return-void

    .line 332
    .restart local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 481
    sget-object v0, Lorg/jsoup/b/b;->a:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected a(Lorg/jsoup/b/h;)Z
    .locals 1
    .param p1, "token"    # Lorg/jsoup/b/h;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/jsoup/b/b;->h:Lorg/jsoup/b/h;

    .line 111
    iget-object v0, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v0

    return v0
.end method

.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z
    .locals 1
    .param p1, "token"    # Lorg/jsoup/b/h;
    .param p2, "state"    # Lorg/jsoup/b/c;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/jsoup/b/b;->h:Lorg/jsoup/b/h;

    .line 116
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 292
    .local v1, "next":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;
    .locals 4
    .param p1, "startTag"    # Lorg/jsoup/b/h$f;

    .prologue
    .line 200
    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    .line 201
    .local v1, "tag":Lorg/jsoup/b/g;
    new-instance v0, Lorg/jsoup/nodes/f;

    iget-object v2, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 202
    .local v0, "el":Lorg/jsoup/nodes/f;
    invoke-direct {p0, v0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/h;)V

    .line 203
    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v1}, Lorg/jsoup/b/g;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {v1}, Lorg/jsoup/b/g;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    invoke-virtual {v2}, Lorg/jsoup/b/j;->c()V

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :cond_1
    invoke-virtual {v1}, Lorg/jsoup/b/g;->m()Lorg/jsoup/b/g;

    .line 209
    iget-object v2, p0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    invoke-virtual {v2}, Lorg/jsoup/b/j;->c()V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    iput-object v0, p0, Lorg/jsoup/b/b;->r:Lorg/jsoup/b/c;

    .line 129
    return-void
.end method

.method b(Lorg/jsoup/b/c;)V
    .locals 7
    .param p1, "state"    # Lorg/jsoup/b/c;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jsoup/b/b;->i:Lorg/jsoup/b/e;

    invoke-virtual {v0}, Lorg/jsoup/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/jsoup/b/b;->i:Lorg/jsoup/b/e;

    new-instance v1, Lorg/jsoup/b/d;

    iget-object v2, p0, Lorg/jsoup/b/b;->c:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->a()I

    move-result v2

    const-string v3, "Unexpected token [%s] when in state [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jsoup/b/b;->h:Lorg/jsoup/b/h;

    invoke-virtual {v6}, Lorg/jsoup/b/h;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/b/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/b/e;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-void
.end method

.method b(Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/h;)V

    .line 196
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method b(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "out"    # Lorg/jsoup/nodes/f;
    .param p2, "in"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 391
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/b/b;->a(Ljava/util/LinkedList;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V

    .line 392
    return-void
.end method

.method b(Z)V
    .locals 0
    .param p1, "fosterInserts"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lorg/jsoup/b/b;->z:Z

    .line 526
    return-void
.end method

.method b([Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetNames"    # [Ljava/lang/String;

    .prologue
    .line 473
    sget-object v0, Lorg/jsoup/b/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/b/b;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c()Lorg/jsoup/b/c;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jsoup/b/b;->r:Lorg/jsoup/b/c;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 315
    .local v1, "next":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 322
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_0
    return-void

    .line 319
    .restart local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method c(Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 266
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method c(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "out"    # Lorg/jsoup/nodes/f;
    .param p2, "in"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 677
    iget-object v0, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/b/b;->a(Ljava/util/LinkedList;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V

    .line 678
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 339
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 341
    .local v1, "next":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_0
    return-void

    .line 344
    .restart local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/jsoup/b/b;->y:Z

    return v0
.end method

.method d(Lorg/jsoup/nodes/f;)Z
    .locals 1
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 274
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/f;)Z

    move-result v0

    return v0
.end method

.method e()Lorg/jsoup/nodes/Document;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jsoup/b/b;->e:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method e(Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 300
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 303
    .local v1, "next":Lorg/jsoup/nodes/f;
    if-ne v1, p1, :cond_0

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 305
    const/4 v2, 0x1

    .line 308
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jsoup/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method f(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 373
    sget-boolean v2, Lorg/jsoup/b/b;->b:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/b/b;->d(Lorg/jsoup/nodes/f;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 374
    :cond_0
    iget-object v2, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 375
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 377
    .local v1, "next":Lorg/jsoup/nodes/f;
    if-ne v1, p1, :cond_1

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/f;

    .line 381
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method f(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 487
    sget-object v0, Lorg/jsoup/b/b;->k:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method g(Lorg/jsoup/nodes/f;)V
    .locals 0
    .param p1, "headElement"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 513
    iput-object p1, p0, Lorg/jsoup/b/b;->t:Lorg/jsoup/nodes/f;

    .line 514
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/jsoup/b/b;->A:Z

    return v0
.end method

.method g(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 491
    sget-object v0, Lorg/jsoup/b/b;->l:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method h()Lorg/jsoup/nodes/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    invoke-virtual {v0}, Lorg/jsoup/b/c;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "pop td not in cell"

    invoke-static {v2, v0}, Lorg/jsoup/helper/d;->b(ZLjava/lang/String;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "popping html!"

    invoke-static {v2, v0}, Lorg/jsoup/helper/d;->b(ZLjava/lang/String;)V

    .line 262
    :cond_1
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method h(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 495
    sget-object v0, Lorg/jsoup/b/b;->m:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method h(Lorg/jsoup/nodes/f;)Z
    .locals 2
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 570
    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/jsoup/b/b;->p:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method i()Lorg/jsoup/helper/DescendableLinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    return-object v0
.end method

.method i(Lorg/jsoup/nodes/f;)V
    .locals 4
    .param p1, "in"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 576
    const/4 v2, 0x0

    .line 577
    .local v2, "numSeen":I
    iget-object v3, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v3}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 578
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 580
    .local v0, "el":Lorg/jsoup/nodes/f;
    if-nez v0, :cond_2

    .line 591
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v3, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 592
    return-void

    .line 583
    .restart local v0    # "el":Lorg/jsoup/nodes/f;
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/jsoup/b/b;->d(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    add-int/lit8 v2, v2, 0x1

    .line 586
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 587
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method i(Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 499
    iget-object v4, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 500
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 501
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 502
    .local v0, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "elName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    const/4 v3, 0x1

    .line 509
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    .end local v1    # "elName":Ljava/lang/String;
    :goto_0
    return v3

    .line 505
    .restart local v0    # "el":Lorg/jsoup/nodes/f;
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/jsoup/b/b;->n:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 508
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_2
    const-string v4, "Should not be reachable"

    invoke-static {v4}, Lorg/jsoup/helper/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method j()V
    .locals 3

    .prologue
    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/b/b;->c([Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeTag"    # Ljava/lang/String;

    .prologue
    .line 558
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/b/b;->o:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method j(Lorg/jsoup/nodes/f;)V
    .locals 3
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 650
    iget-object v2, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 651
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 653
    .local v1, "next":Lorg/jsoup/nodes/f;
    if-ne v1, p1, :cond_0

    .line 654
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 658
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    return-void
.end method

.method k(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v2, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 666
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 668
    .local v1, "next":Lorg/jsoup/nodes/f;
    if-nez v1, :cond_2

    .line 673
    .end local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 670
    .restart local v1    # "next":Lorg/jsoup/nodes/f;
    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method k()V
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thead"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/b/b;->c([Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method k(Lorg/jsoup/nodes/f;)Z
    .locals 1
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 661
    iget-object v0, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/f;)Z

    move-result v0

    return v0
.end method

.method l()V
    .locals 3

    .prologue
    .line 358
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/b/b;->c([Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method m()V
    .locals 5

    .prologue
    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "last":Z
    iget-object v4, p0, Lorg/jsoup/b/b;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 404
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/f;

    .line 406
    .local v3, "node":Lorg/jsoup/nodes/f;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    const/4 v1, 0x1

    .line 408
    iget-object v3, p0, Lorg/jsoup/b/b;->v:Lorg/jsoup/nodes/f;

    .line 410
    :cond_1
    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "name":Ljava/lang/String;
    const-string v4, "select"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    sget-object v4, Lorg/jsoup/b/c;->InSelect:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 449
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "node":Lorg/jsoup/nodes/f;
    :cond_2
    :goto_0
    return-void

    .line 414
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "node":Lorg/jsoup/nodes/f;
    :cond_3
    const-string v4, "td"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "td"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    .line 415
    :cond_4
    sget-object v4, Lorg/jsoup/b/c;->InCell:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 417
    :cond_5
    const-string v4, "tr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 418
    sget-object v4, Lorg/jsoup/b/c;->InRow:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 420
    :cond_6
    const-string v4, "tbody"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "thead"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "tfoot"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 421
    :cond_7
    sget-object v4, Lorg/jsoup/b/c;->InTableBody:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 423
    :cond_8
    const-string v4, "caption"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 424
    sget-object v4, Lorg/jsoup/b/c;->InCaption:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 426
    :cond_9
    const-string v4, "colgroup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 427
    sget-object v4, Lorg/jsoup/b/c;->InColumnGroup:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 429
    :cond_a
    const-string v4, "table"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 430
    sget-object v4, Lorg/jsoup/b/c;->InTable:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 432
    :cond_b
    const-string v4, "head"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 433
    sget-object v4, Lorg/jsoup/b/c;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 435
    :cond_c
    const-string v4, "body"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 436
    sget-object v4, Lorg/jsoup/b/c;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 438
    :cond_d
    const-string v4, "frameset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 439
    sget-object v4, Lorg/jsoup/b/c;->InFrameset:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 441
    :cond_e
    const-string v4, "html"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 442
    sget-object v4, Lorg/jsoup/b/c;->BeforeHead:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 444
    :cond_f
    if-eqz v1, :cond_0

    .line 445
    sget-object v4, Lorg/jsoup/b/c;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0
.end method

.method n()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/jsoup/b/b;->t:Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lorg/jsoup/b/b;->z:Z

    return v0
.end method

.method p()Lorg/jsoup/nodes/g;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/jsoup/b/b;->u:Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method q()V
    .locals 1

    .prologue
    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/b;->x:Ljava/util/List;

    .line 538
    return-void
.end method

.method r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/b/h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lorg/jsoup/b/b;->x:Ljava/util/List;

    return-object v0
.end method

.method s()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/b;->j(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method t()V
    .locals 7

    .prologue
    .line 603
    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v3

    .line 604
    .local v3, "size":I
    if-eqz v3, :cond_0

    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/f;

    invoke-virtual {p0, v5}, Lorg/jsoup/b/b;->d(Lorg/jsoup/nodes/f;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 608
    .local v0, "entry":Lorg/jsoup/nodes/f;
    add-int/lit8 v2, v3, -0x1

    .line 609
    .local v2, "pos":I
    const/4 v4, 0x0

    .line 611
    .local v4, "skip":Z
    :cond_2
    if-nez v2, :cond_5

    .line 612
    const/4 v4, 0x1

    .line 620
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 621
    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lorg/jsoup/nodes/f;
    check-cast v0, Lorg/jsoup/nodes/f;

    .line 622
    .restart local v0    # "entry":Lorg/jsoup/nodes/f;
    :cond_4
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 625
    const/4 v4, 0x0

    .line 626
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 628
    .local v1, "newEl":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;)V

    .line 631
    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5, v2, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(ILjava/lang/Object;)V

    .line 632
    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lorg/jsoup/helper/DescendableLinkedList;->remove(I)Ljava/lang/Object;

    .line 635
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_3

    goto :goto_0

    .line 615
    .end local v1    # "newEl":Lorg/jsoup/nodes/f;
    :cond_5
    iget-object v5, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lorg/jsoup/nodes/f;
    check-cast v0, Lorg/jsoup/nodes/f;

    .line 616
    .restart local v0    # "entry":Lorg/jsoup/nodes/f;
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/jsoup/b/b;->d(Lorg/jsoup/nodes/f;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/b/b;->h:Lorg/jsoup/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/b/b;->q:Lorg/jsoup/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 2

    .prologue
    .line 641
    :cond_0
    iget-object v1, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    iget-object v1, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 643
    .local v0, "el":Lorg/jsoup/nodes/f;
    iget-object v1, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->removeLast()Ljava/lang/Object;

    .line 644
    if-nez v0, :cond_0

    .line 647
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    :cond_1
    return-void
.end method

.method v()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lorg/jsoup/b/b;->w:Lorg/jsoup/helper/DescendableLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method
