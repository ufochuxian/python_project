.class public Lcom/jiliguala/niuwa/common/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lrx/i/b;)Lrx/i/b;
    .locals 1
    .param p0, "subscription"    # Lrx/i/b;

    .prologue
    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    :cond_0
    new-instance p0, Lrx/i/b;

    .end local p0    # "subscription":Lrx/i/b;
    invoke-direct {p0}, Lrx/i/b;-><init>()V

    .line 19
    :cond_1
    return-object p0
.end method

.method public static a(Lrx/m;)V
    .locals 0
    .param p0, "subscription"    # Lrx/m;

    .prologue
    .line 9
    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Lrx/m;->unsubscribe()V

    .line 12
    :cond_0
    return-void
.end method
