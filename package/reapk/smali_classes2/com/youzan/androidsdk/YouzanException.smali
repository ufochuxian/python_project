.class public Lcom/youzan/androidsdk/YouzanException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/youzan/androidsdk/YouzanException;->mCode:I

    .line 12
    iput p1, p0, Lcom/youzan/androidsdk/YouzanException;->mCode:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/youzan/androidsdk/YouzanException;->mCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/youzan/androidsdk/YouzanException;->mCode:I

    .line 21
    instance-of v0, p1, Lcom/youzan/androidsdk/YouzanException;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/youzan/androidsdk/YouzanException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/youzan/androidsdk/YouzanException;->getCode()I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/YouzanException;->mCode:I

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/youzan/androidsdk/YouzanException;->mCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/youzan/androidsdk/YouzanException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
