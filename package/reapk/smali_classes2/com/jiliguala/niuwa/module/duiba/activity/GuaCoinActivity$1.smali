.class Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplate;)V
    .locals 3
    .param p1, "duibaUrlTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplate;

    .prologue
    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mProgress:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mProgress:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplate;->data:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplateData;

    .line 187
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplateData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplateData;->target:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Gua Money View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplateData;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 192
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplateData;
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/local_error.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;->a(Lcom/jiliguala/niuwa/logic/network/json/DuibaUrlTemplate;)V

    return-void
.end method
