.class public Lcom/bumptech/glide/k;
.super Lcom/bumptech/glide/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/j",
        "<TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/o$d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/o$d;)V
    .locals 3
    .param p3, "optionsApplier"    # Lcom/bumptech/glide/o$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/o$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/k;, "Lcom/bumptech/glide/k<TModelType;>;"
    .local p1, "other":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;***>;"
    .local p2, "streamModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TModelType;Ljava/io/InputStream;>;"
    iget-object v0, p1, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    const-class v1, Lcom/bumptech/glide/load/resource/d/b;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    .line 42
    iput-object p2, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/b/l;

    .line 43
    iput-object p3, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/o$d;

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/j;

    .line 47
    return-void
.end method

.method private static a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/e;
    .locals 3
    .param p0, "glide"    # Lcom/bumptech/glide/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;)",
            "Lcom/bumptech/glide/f/e",
            "<TA;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "streamModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;Ljava/io/InputStream;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p3, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Lcom/bumptech/glide/load/resource/d/b;TR;>;"
    if-nez p1, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 31
    :cond_0
    if-nez p3, :cond_1

    .line 32
    const-class v1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {p0, v1, p2}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/f;

    move-result-object p3

    .line 34
    :cond_1
    const-class v1, Ljava/io/InputStream;

    const-class v2, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    .line 36
    .local v0, "dataLoadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/d/b;>;"
    new-instance v1, Lcom/bumptech/glide/f/e;

    invoke-direct {v1, p1, p3, v0}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/f/f;Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/bumptech/glide/k;, "Lcom/bumptech/glide/k<TModelType;>;"
    .local p1, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Lcom/bumptech/glide/load/resource/d/b;TR;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v1, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/l;

    iget-object v2, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/b/l;

    invoke-static {v1, v2, p2, p1}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 65
    .local v0, "provider":Lcom/bumptech/glide/f/e;, "Lcom/bumptech/glide/f/e<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/d/b;TR;>;"
    iget-object v1, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/o$d;

    new-instance v2, Lcom/bumptech/glide/h;

    invoke-direct {v2, v0, p2, p0}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v1

    return-object v1
.end method

.method public j()Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/bumptech/glide/k;, "Lcom/bumptech/glide/k<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/f/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/f/d;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/load/resource/f/f;Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method
