.class Lcom/youzan/androidsdk/basic/YouzanBrowser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/youzan/androidsdk/basic/YouzanBrowser;


# direct methods
.method constructor <init>(Lcom/youzan/androidsdk/basic/YouzanBrowser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youzan/androidsdk/basic/YouzanBrowser;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser$1;->a:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser$1;->a:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Lcom/youzan/androidsdk/basic/YouzanBrowser;Z)Z

    .line 93
    return-void
.end method
