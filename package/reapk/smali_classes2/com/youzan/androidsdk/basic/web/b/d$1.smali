.class Lcom/youzan/androidsdk/basic/web/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/basic/web/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youzan/androidsdk/basic/web/b/d;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/youzan/androidsdk/basic/web/b/d;


# direct methods
.method constructor <init>(Lcom/youzan/androidsdk/basic/web/b/d;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youzan/androidsdk/basic/web/b/d;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/b/d$1;->b:Lcom/youzan/androidsdk/basic/web/b/d;

    iput-object p2, p0, Lcom/youzan/androidsdk/basic/web/b/d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/b/d$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/b/d$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
