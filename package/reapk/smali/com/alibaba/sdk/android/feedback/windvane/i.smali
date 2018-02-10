.class Lcom/alibaba/sdk/android/feedback/windvane/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/windvane/h;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/h;Lcom/alibaba/sdk/android/feedback/xblink/webview/x;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/i;->b:Lcom/alibaba/sdk/android/feedback/windvane/h;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/windvane/i;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/i;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/x;->e()V

    return-void
.end method
