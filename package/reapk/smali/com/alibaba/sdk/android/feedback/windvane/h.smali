.class Lcom/alibaba/sdk/android/feedback/windvane/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/windvane/g;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/h;->a:Lcom/alibaba/sdk/android/feedback/windvane/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/h;->a:Lcom/alibaba/sdk/android/feedback/windvane/g;

    iget-object v0, v0, Lcom/alibaba/sdk/android/feedback/windvane/g;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/h;->a:Lcom/alibaba/sdk/android/feedback/windvane/g;

    iget-object v1, v1, Lcom/alibaba/sdk/android/feedback/windvane/g;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/sdk/android/feedback/windvane/i;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/i;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/h;Lcom/alibaba/sdk/android/feedback/xblink/webview/x;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/h;->a:Lcom/alibaba/sdk/android/feedback/windvane/g;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/windvane/g;->a()V

    return-void
.end method
