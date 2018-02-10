.class final Lar/com/hjg/pngj/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/v;->e()Lar/com/hjg/pngj/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/n",
        "<",
        "Lar/com/hjg/pngj/v;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/l;
    .locals 1
    .param p1, "x0"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/v$1;->b(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/v;
    .locals 1
    .param p1, "iminfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 59
    new-instance v0, Lar/com/hjg/pngj/v;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/v;-><init>(Lar/com/hjg/pngj/s;)V

    return-object v0
.end method
