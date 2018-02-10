.class public abstract Lcom/youzan/androidsdk/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "webReady"

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/b/e;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method
