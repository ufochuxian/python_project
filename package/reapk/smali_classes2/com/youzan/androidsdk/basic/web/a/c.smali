.class public final Lcom/youzan/androidsdk/basic/web/a/c;
.super Lcom/youzan/androidsdk/basic/web/a/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "androidJS"

    return-object v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "webReady"

    invoke-virtual {p0, v0}, Lcom/youzan/androidsdk/basic/web/a/c;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/web/a/d;

    .line 15
    const-string v0, "returnShareData"

    invoke-virtual {p0, v0}, Lcom/youzan/androidsdk/basic/web/a/c;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/web/a/d;

    .line 16
    const-string v0, "getUserInfo"

    invoke-virtual {p0, v0}, Lcom/youzan/androidsdk/basic/web/a/c;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/web/a/d;

    .line 17
    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/youzan/androidsdk/basic/web/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
