.class public abstract Lar/com/hjg/pngj/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lar/com/hjg/pngj/l;",
        ">",
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lar/com/hjg/pngj/s;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Lar/com/hjg/pngj/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected d:I

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;ZIII)V
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;
    .param p2, "singleCursor"    # Z
    .param p3, "nlinesx"    # I
    .param p4, "noffsetx"    # I
    .param p5, "stepx"    # I

    .prologue
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/w;->d:I

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/w;->a:Lar/com/hjg/pngj/s;

    .line 23
    iput-boolean p2, p0, Lar/com/hjg/pngj/w;->e:Z

    .line 24
    if-eqz p2, :cond_0

    .line 25
    iput v1, p0, Lar/com/hjg/pngj/w;->f:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/w;->g:I

    .line 27
    iput v1, p0, Lar/com/hjg/pngj/w;->h:I

    .line 33
    :goto_0
    invoke-direct {p0}, Lar/com/hjg/pngj/w;->e()V

    .line 34
    return-void

    .line 29
    :cond_0
    iput p3, p0, Lar/com/hjg/pngj/w;->f:I

    .line 30
    iput p4, p0, Lar/com/hjg/pngj/w;->g:I

    .line 31
    iput p5, p0, Lar/com/hjg/pngj/w;->h:I

    goto :goto_0
.end method

.method public static a(Lar/com/hjg/pngj/n;)Lar/com/hjg/pngj/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lar/com/hjg/pngj/l;",
            ">(",
            "Lar/com/hjg/pngj/n",
            "<TT;>;)",
            "Lar/com/hjg/pngj/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "ifactory":Lar/com/hjg/pngj/n;, "Lar/com/hjg/pngj/n<TT;>;"
    new-instance v0, Lar/com/hjg/pngj/w$1;

    invoke-direct {v0, p0}, Lar/com/hjg/pngj/w$1;-><init>(Lar/com/hjg/pngj/n;)V

    return-object v0
.end method

.method public static c()Lar/com/hjg/pngj/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/p",
            "<",
            "Lar/com/hjg/pngj/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lar/com/hjg/pngj/v;->e()Lar/com/hjg/pngj/n;

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/w;->a(Lar/com/hjg/pngj/n;)Lar/com/hjg/pngj/p;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lar/com/hjg/pngj/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/p",
            "<",
            "Lar/com/hjg/pngj/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lar/com/hjg/pngj/t;->e()Lar/com/hjg/pngj/n;

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/w;->a(Lar/com/hjg/pngj/n;)Lar/com/hjg/pngj/p;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 37
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    iget-boolean v1, p0, Lar/com/hjg/pngj/w;->e:Z

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lar/com/hjg/pngj/w;->b()Lar/com/hjg/pngj/l;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/w;->c:Lar/com/hjg/pngj/l;

    .line 44
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lar/com/hjg/pngj/w;->b:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/w;->f:I

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lar/com/hjg/pngj/w;->b:Ljava/util/List;

    invoke-virtual {p0}, Lar/com/hjg/pngj/w;->b()Lar/com/hjg/pngj/l;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    iget v0, p0, Lar/com/hjg/pngj/w;->f:I

    return v0
.end method

.method public a(I)Lar/com/hjg/pngj/l;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    iput p1, p0, Lar/com/hjg/pngj/w;->d:I

    .line 57
    iget-boolean v1, p0, Lar/com/hjg/pngj/w;->e:Z

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lar/com/hjg/pngj/w;->c:Lar/com/hjg/pngj/l;

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/w;->d(I)I

    move-result v0

    .line 61
    .local v0, "r":I
    if-gez v0, :cond_1

    .line 62
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "Invalid row number"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/w;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/l;

    goto :goto_0
.end method

.method protected abstract b()Lar/com/hjg/pngj/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public b(I)Lar/com/hjg/pngj/l;
    .locals 1
    .param p1, "r"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    iget-boolean v0, p0, Lar/com/hjg/pngj/w;->e:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lar/com/hjg/pngj/w;->c:Lar/com/hjg/pngj/l;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/l;

    goto :goto_0
.end method

.method public c(I)Z
    .locals 3
    .param p1, "n"    # I

    .prologue
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    iget-boolean v2, p0, Lar/com/hjg/pngj/w;->e:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lar/com/hjg/pngj/w;->d:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/w;->d(I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public d(I)I
    .locals 4
    .param p1, "imrow"    # I

    .prologue
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    const/4 v1, -0x1

    .line 99
    iget v2, p0, Lar/com/hjg/pngj/w;->g:I

    sub-int/2addr p1, v2

    .line 100
    if-ltz p1, :cond_1

    iget v2, p0, Lar/com/hjg/pngj/w;->h:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lar/com/hjg/pngj/w;->h:I

    rem-int v2, p1, v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lar/com/hjg/pngj/w;->h:I

    div-int v0, p1, v2

    .line 101
    .local v0, "mrow":I
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/w;->f:I

    if-ge v0, v2, :cond_2

    .end local v0    # "mrow":I
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    .restart local v0    # "mrow":I
    :cond_2
    move v0, v1

    .line 101
    goto :goto_1
.end method

.method public e(I)I
    .locals 2
    .param p1, "mrow"    # I

    .prologue
    .line 111
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    iget v0, p0, Lar/com/hjg/pngj/w;->h:I

    mul-int/2addr v0, p1

    iget v1, p0, Lar/com/hjg/pngj/w;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(I)I
    .locals 3
    .param p1, "imrow"    # I

    .prologue
    .line 122
    .local p0, "this":Lar/com/hjg/pngj/w;, "Lar/com/hjg/pngj/w<TT;>;"
    iget v1, p0, Lar/com/hjg/pngj/w;->g:I

    sub-int v1, p1, v1

    iget v2, p0, Lar/com/hjg/pngj/w;->h:I

    div-int v0, v1, v2

    .line 123
    .local v0, "r":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "r":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "r":I
    :cond_1
    iget v1, p0, Lar/com/hjg/pngj/w;->f:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lar/com/hjg/pngj/w;->f:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method
