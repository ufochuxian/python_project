.class public Lcom/youzan/androidsdk/loader/http/interfaces/NotImplementedException;
.super Lcom/youzan/androidsdk/YouzanException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "The method haven\'t implemented"

    invoke-direct {p0, v0}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
