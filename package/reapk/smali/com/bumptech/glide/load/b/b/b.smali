.class public Lcom/bumptech/glide/load/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/l",
        "<",
        "Lcom/bumptech/glide/load/b/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Lcom/bumptech/glide/load/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/b/b;-><init>(Lcom/bumptech/glide/load/b/k;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Lcom/bumptech/glide/load/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "modelCache":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<Lcom/bumptech/glide/load/b/d;Lcom/bumptech/glide/load/b/d;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/b;->a:Lcom/bumptech/glide/load/b/k;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/d;II)Lcom/bumptech/glide/load/a/c;
    .locals 3
    .param p1, "model"    # Lcom/bumptech/glide/load/b/d;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/d;",
            "II)",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    move-object v0, p1

    .line 52
    .local v0, "url":Lcom/bumptech/glide/load/b/d;
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/b;->a:Lcom/bumptech/glide/load/b/k;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/b;->a:Lcom/bumptech/glide/load/b/k;

    invoke-virtual {v1, p1, v2, v2}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Lcom/bumptech/glide/load/b/d;
    check-cast v0, Lcom/bumptech/glide/load/b/d;

    .line 54
    .restart local v0    # "url":Lcom/bumptech/glide/load/b/d;
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/b;->a:Lcom/bumptech/glide/load/b/k;

    invoke-virtual {v1, p1, v2, v2, p1}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 56
    move-object v0, p1

    .line 59
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/a/g;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/a/g;-><init>(Lcom/bumptech/glide/load/b/d;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 19
    check-cast p1, Lcom/bumptech/glide/load/b/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/b/b;->a(Lcom/bumptech/glide/load/b/d;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method
