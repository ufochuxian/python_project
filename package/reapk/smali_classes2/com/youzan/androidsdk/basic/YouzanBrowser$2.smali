.class Lcom/youzan/androidsdk/basic/YouzanBrowser$2;
.super Lcom/youzan/androidsdk/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youzan/androidsdk/basic/YouzanBrowser;->setOnChooseFileCallback(Lcom/youzan/androidsdk/basic/YouzanBrowser$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/youzan/androidsdk/basic/YouzanBrowser$a;

.field final synthetic b:Lcom/youzan/androidsdk/basic/YouzanBrowser;


# direct methods
.method constructor <init>(Lcom/youzan/androidsdk/basic/YouzanBrowser;Lcom/youzan/androidsdk/basic/YouzanBrowser$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youzan/androidsdk/basic/YouzanBrowser;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser$2;->b:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    iput-object p2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser$2;->a:Lcom/youzan/androidsdk/basic/YouzanBrowser$a;

    invoke-direct {p0}, Lcom/youzan/androidsdk/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser$2;->a:Lcom/youzan/androidsdk/basic/YouzanBrowser$a;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser$2;->a:Lcom/youzan/androidsdk/basic/YouzanBrowser$a;

    invoke-interface {v0, p2, p3}, Lcom/youzan/androidsdk/basic/YouzanBrowser$a;->a(Landroid/content/Intent;I)V

    .line 310
    :cond_0
    return-void
.end method
