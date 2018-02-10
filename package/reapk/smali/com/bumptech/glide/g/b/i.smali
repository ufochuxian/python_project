.class public final Lcom/bumptech/glide/g/b/i;
.super Lcom/bumptech/glide/g/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/g/b/j",
        "<TZ;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 26
    .local p0, "this":Lcom/bumptech/glide/g/b/i;, "Lcom/bumptech/glide/g/b/i<TZ;>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/g/b/j;-><init>(II)V

    .line 27
    return-void
.end method

.method public static a(II)Lcom/bumptech/glide/g/b/i;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/bumptech/glide/g/b/i",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/g/b/i;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/g/b/i;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/g/a/c",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/bumptech/glide/g/b/i;, "Lcom/bumptech/glide/g/b/i<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "glideAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<-TZ;>;"
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/g/b/m;)V

    .line 32
    return-void
.end method
