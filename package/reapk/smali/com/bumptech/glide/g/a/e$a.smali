.class public Lcom/bumptech/glide/g/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/g/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lcom/bumptech/glide/g/a/e$a;, "Lcom/bumptech/glide/g/a/e$a<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/g/a/c;
    .locals 1
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
    .line 20
    .local p0, "this":Lcom/bumptech/glide/g/a/e$a;, "Lcom/bumptech/glide/g/a/e$a<TR;>;"
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->c()Lcom/bumptech/glide/g/a/e;

    move-result-object v0

    return-object v0
.end method
