.class public abstract Lcom/youzan/androidsdk/d/g;
.super Lcom/youzan/androidsdk/loader/http/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youzan/androidsdk/loader/http/d",
        "<",
        "Lcom/youzan/androidsdk/c/e/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/youzan/androidsdk/loader/http/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/youzan/androidsdk/c/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const-class v0, Lcom/youzan/androidsdk/c/e/b;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 24
    const-string v0, "youzan.multistore.setting/3.0.0/getbykdtid"

    return-object v0
.end method
