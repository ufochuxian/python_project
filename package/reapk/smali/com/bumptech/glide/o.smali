.class public Lcom/bumptech/glide/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/o$e;,
        Lcom/bumptech/glide/o$d;,
        Lcom/bumptech/glide/o$b;,
        Lcom/bumptech/glide/o$c;,
        Lcom/bumptech/glide/o$f;,
        Lcom/bumptech/glide/o$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/d/g;

.field private final c:Lcom/bumptech/glide/d/l;

.field private final d:Lcom/bumptech/glide/d/m;

.field private final e:Lcom/bumptech/glide/l;

.field private final f:Lcom/bumptech/glide/o$d;

.field private g:Lcom/bumptech/glide/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/bumptech/glide/d/g;
    .param p3, "treeNode"    # Lcom/bumptech/glide/d/l;

    .prologue
    .line 53
    new-instance v4, Lcom/bumptech/glide/d/m;

    invoke-direct {v4}, Lcom/bumptech/glide/d/m;-><init>()V

    new-instance v5, Lcom/bumptech/glide/d/d;

    invoke-direct {v5}, Lcom/bumptech/glide/d/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/o;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/d;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/d;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/bumptech/glide/d/g;
    .param p3, "treeNode"    # Lcom/bumptech/glide/d/l;
    .param p4, "requestTracker"    # Lcom/bumptech/glide/d/m;
    .param p5, "factory"    # Lcom/bumptech/glide/d/d;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/o;->b:Lcom/bumptech/glide/d/g;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/d/l;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/l;

    .line 63
    new-instance v1, Lcom/bumptech/glide/o$d;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/o$d;-><init>(Lcom/bumptech/glide/o;)V

    iput-object v1, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/o$d;

    .line 65
    new-instance v1, Lcom/bumptech/glide/o$e;

    invoke-direct {v1, p4}, Lcom/bumptech/glide/o$e;-><init>(Lcom/bumptech/glide/d/m;)V

    invoke-virtual {p5, p1, v1}, Lcom/bumptech/glide/d/d;->a(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)Lcom/bumptech/glide/d/c;

    move-result-object v0

    .line 71
    .local v0, "connectivityMonitor":Lcom/bumptech/glide/d/c;
    invoke-static {}, Lcom/bumptech/glide/i/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/o$1;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/o$1;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/d/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/o;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v2

    .line 626
    .local v2, "streamModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;Ljava/io/InputStream;>;"
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v3

    .line 628
    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;Landroid/os/ParcelFileDescriptor;>;"
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". You must provide a Model of a type for"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/o$d;

    new-instance v0, Lcom/bumptech/glide/g;

    iget-object v4, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/l;

    iget-object v6, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    iget-object v7, p0, Lcom/bumptech/glide/o;->b:Lcom/bumptech/glide/d/g;

    iget-object v8, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/o$d;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Landroid/content/Context;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/o$d;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/l;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/l;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/o;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/m;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    return-object v0
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "model":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/g;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/o;->b:Lcom/bumptech/glide/d/g;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/o$d;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$a;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/o;->g:Lcom/bumptech/glide/o$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/g",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->k()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/g;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "dateModified"    # J
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/bumptech/glide/g",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/bumptech/glide/h/c;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/bumptech/glide/h/c;-><init>(Ljava/lang/String;JI)V

    .line 369
    .local v0, "signature":Lcom/bumptech/glide/load/b;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    return-object v1
.end method

.method public a(Ljava/io/File;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->m()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->n()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/bumptech/glide/o;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->j()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Ljava/net/URL;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->o()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a([B)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "model"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/g",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->p()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a([BLjava/lang/String;)Lcom/bumptech/glide/g;
    .locals 2
    .param p1, "model"    # [B
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/g",
            "<[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->a([B)Lcom/bumptech/glide/g;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/h/d;

    invoke-direct {v1, p2}, Lcom/bumptech/glide/h/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;)Lcom/bumptech/glide/o$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/o$b",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "modelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/bumptech/glide/o$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/o$b;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/b/d;)Lcom/bumptech/glide/o$c;
    .locals 1
    .param p1, "modelLoader"    # Lcom/bumptech/glide/load/b/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/b/d;",
            ")",
            "Lcom/bumptech/glide/o$c",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/bumptech/glide/o$c;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/o$c;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/load/b/l;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/b/f;)Lcom/bumptech/glide/o$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/b/f",
            "<TT;>;)",
            "Lcom/bumptech/glide/o$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "modelLoader":Lcom/bumptech/glide/load/b/b/f;, "Lcom/bumptech/glide/load/b/b/f<TT;>;"
    new-instance v0, Lcom/bumptech/glide/o$c;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/o$c;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/load/b/l;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/o$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/a/b",
            "<TT;>;)",
            "Lcom/bumptech/glide/o$f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "modelLoader":Lcom/bumptech/glide/load/b/a/b;, "Lcom/bumptech/glide/load/b/a/b<TT;>;"
    new-instance v0, Lcom/bumptech/glide/o$f;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/o$f;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/load/b/l;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->k()V

    .line 96
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/l;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->a(I)V

    .line 89
    return-void
.end method

.method public a(Lcom/bumptech/glide/o$a;)V
    .locals 0
    .param p1, "options"    # Lcom/bumptech/glide/o$a;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/bumptech/glide/o;->g:Lcom/bumptech/glide/o$a;

    .line 127
    return-void
.end method

.method public b(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/g",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->l()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->b()V

    .line 149
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 166
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()V

    .line 167
    iget-object v2, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/d/l;

    invoke-interface {v2}, Lcom/bumptech/glide/d/l;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/o;

    .line 168
    .local v1, "requestManager":Lcom/bumptech/glide/o;
    invoke-virtual {v1}, Lcom/bumptech/glide/o;->c()V

    goto :goto_0

    .line 170
    .end local v1    # "requestManager":Lcom/bumptech/glide/o;
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->c()V

    .line 181
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 190
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->e()V

    .line 191
    iget-object v2, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/d/l;

    invoke-interface {v2}, Lcom/bumptech/glide/d/l;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/o;

    .line 192
    .local v1, "requestManager":Lcom/bumptech/glide/o;
    invoke-virtual {v1}, Lcom/bumptech/glide/o;->e()V

    goto :goto_0

    .line 194
    .end local v1    # "requestManager":Lcom/bumptech/glide/o;
    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->e()V

    .line 204
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()V

    .line 213
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->d()V

    .line 222
    return-void
.end method

.method public j()Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/bumptech/glide/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v9

    .line 414
    .local v9, "genericStreamLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v2, Lcom/bumptech/glide/load/b/b/c;

    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v9}, Lcom/bumptech/glide/load/b/b/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 415
    .local v2, "mediaStoreLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v3

    .line 418
    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;"
    iget-object v10, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/o$d;

    new-instance v0, Lcom/bumptech/glide/g;

    const-class v1, Landroid/net/Uri;

    iget-object v4, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/l;

    iget-object v6, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/d/m;

    iget-object v7, p0, Lcom/bumptech/glide/o;->b:Lcom/bumptech/glide/d/g;

    iget-object v8, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/o$d;

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Landroid/content/Context;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/o$d;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/h/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public o()Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/bumptech/glide/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 576
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/h/d;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/h/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Z)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method
