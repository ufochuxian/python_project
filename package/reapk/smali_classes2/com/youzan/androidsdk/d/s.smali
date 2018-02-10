.class public abstract Lcom/youzan/androidsdk/d/s;
.super Lcom/youzan/androidsdk/loader/http/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youzan/androidsdk/loader/http/d",
        "<",
        "Lcom/youzan/androidsdk/c/f/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
            "Lcom/youzan/androidsdk/c/f/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-class v0, Lcom/youzan/androidsdk/c/f/m;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 22
    const-string v0, "kdt.trade.buyer.search/1.0.0/get"

    return-object v0
.end method
