.class Lcom/alibaba/sdk/android/feedback/xblink/webview/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/xblink/webview/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/a;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/f;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/f;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/f;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
