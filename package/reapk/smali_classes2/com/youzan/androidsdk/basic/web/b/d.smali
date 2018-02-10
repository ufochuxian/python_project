.class abstract Lcom/youzan/androidsdk/basic/web/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/b/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/youzan/androidsdk/basic/web/b/d$1;

    invoke-direct {v0, p0, p1}, Lcom/youzan/androidsdk/basic/web/b/d$1;-><init>(Lcom/youzan/androidsdk/basic/web/b/d;Landroid/content/Context;)V

    invoke-virtual {p0, v0, p2}, Lcom/youzan/androidsdk/basic/web/b/d;->a(Lcom/youzan/androidsdk/basic/web/a/a;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public abstract a(Lcom/youzan/androidsdk/basic/web/a/a;Ljava/lang/String;)V
.end method
