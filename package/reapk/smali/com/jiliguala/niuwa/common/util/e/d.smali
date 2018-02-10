.class public Lcom/jiliguala/niuwa/common/util/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .param p0, "totalNum"    # I

    .prologue
    .line 12
    if-gtz p0, :cond_0

    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0
.end method
