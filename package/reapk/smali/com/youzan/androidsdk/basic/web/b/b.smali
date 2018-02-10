.class public abstract Lcom/youzan/androidsdk/basic/web/b/b;
.super Lcom/youzan/androidsdk/basic/web/b/d;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getUserInfo"

    return-object v0
.end method

.method public abstract a(Lcom/youzan/androidsdk/basic/web/a/a;)V
.end method

.method public final a(Lcom/youzan/androidsdk/basic/web/a/a;Ljava/lang/String;)V
    .locals 0
    .param p1, "env"    # Lcom/youzan/androidsdk/basic/web/a/a;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/basic/web/b/b;->a(Lcom/youzan/androidsdk/basic/web/a/a;)V

    .line 21
    return-void
.end method
