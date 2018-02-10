.class public Lcom/bumptech/glide/g/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/d",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/h$a;

.field private b:Lcom/bumptech/glide/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/h",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/g/a/h$a;)V
    .locals 0
    .param p1, "animator"    # Lcom/bumptech/glide/g/a/h$a;

    .prologue
    .line 12
    .local p0, "this":Lcom/bumptech/glide/g/a/i;, "Lcom/bumptech/glide/g/a/i<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bumptech/glide/g/a/i;->a:Lcom/bumptech/glide/g/a/h$a;

    .line 14
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/g/a/c;
    .locals 2
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/g/a/c",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/g/a/i;, "Lcom/bumptech/glide/g/a/i<TR;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->b()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/g/a/i;->b:Lcom/bumptech/glide/g/a/h;

    if-nez v0, :cond_2

    .line 29
    new-instance v0, Lcom/bumptech/glide/g/a/h;

    iget-object v1, p0, Lcom/bumptech/glide/g/a/i;->a:Lcom/bumptech/glide/g/a/h$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g/a/h;-><init>(Lcom/bumptech/glide/g/a/h$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/g/a/i;->b:Lcom/bumptech/glide/g/a/h;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/g/a/i;->b:Lcom/bumptech/glide/g/a/h;

    goto :goto_0
.end method
