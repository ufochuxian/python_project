.class public abstract Lcom/bumptech/glide/load/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/b/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/k",
            "<TT;",
            "Lcom/bumptech/glide/load/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/bumptech/glide/load/b/b/a;, "Lcom/bumptech/glide/load/b/b/a<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/b/a;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/k;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/k;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;",
            "Lcom/bumptech/glide/load/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/load/b/b/a;, "Lcom/bumptech/glide/load/b/b/a<TT;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<TT;Lcom/bumptech/glide/load/b/d;>;"
    const-class v0, Lcom/bumptech/glide/load/b/d;

    const-class v1, Ljava/io/InputStream;

    invoke-static {v0, v1, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/b/b/a;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/k;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/load/b/b/a;, "Lcom/bumptech/glide/load/b/b/a<TT;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Lcom/bumptech/glide/load/b/d;Ljava/io/InputStream;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/b/a;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/k;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;",
            "Lcom/bumptech/glide/load/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/load/b/b/a;, "Lcom/bumptech/glide/load/b/b/a<TT;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Lcom/bumptech/glide/load/b/d;Ljava/io/InputStream;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<TT;Lcom/bumptech/glide/load/b/d;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/a;->a:Lcom/bumptech/glide/load/b/l;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/b/b/a;->b:Lcom/bumptech/glide/load/b/k;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/bumptech/glide/load/b/b/a;, "Lcom/bumptech/glide/load/b/b/a<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 45
    .local v0, "result":Lcom/bumptech/glide/load/b/d;
    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/a;->b:Lcom/bumptech/glide/load/b/k;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/a;->b:Lcom/bumptech/glide/load/b/k;

    invoke-virtual {v2, p1, p2, p3}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/bumptech/glide/load/b/d;
    check-cast v0, Lcom/bumptech/glide/load/b/d;

    .line 49
    .restart local v0    # "result":Lcom/bumptech/glide/load/b/d;
    :cond_0
    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/b/a;->b(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "stringURL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v2, 0x0

    .line 62
    .end local v1    # "stringURL":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 55
    .restart local v1    # "stringURL":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/b/d;

    .end local v0    # "result":Lcom/bumptech/glide/load/b/d;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/b/a;->c(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/d;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/e;)V

    .line 57
    .restart local v0    # "result":Lcom/bumptech/glide/load/b/d;
    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/a;->b:Lcom/bumptech/glide/load/b/k;

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/a;->b:Lcom/bumptech/glide/load/b/k;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 62
    .end local v1    # "stringURL":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/a;->a:Lcom/bumptech/glide/load/b/l;

    invoke-interface {v2, v0, p2, p3}, Lcom/bumptech/glide/load/b/l;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/e;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/b/e;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/bumptech/glide/load/b/b/a;, "Lcom/bumptech/glide/load/b/b/a<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/bumptech/glide/load/b/e;->b:Lcom/bumptech/glide/load/b/e;

    return-object v0
.end method
