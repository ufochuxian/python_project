.class Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 3
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 260
    iget v1, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 263
    :sswitch_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "from":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/logic/network/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/pingpp/charge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->goToMobilePage()V

    goto :goto_0

    .line 271
    .end local v0    # "from":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->finish()V

    goto :goto_0

    .line 274
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$000(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    goto :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x1024 -> :sswitch_0
        0x1027 -> :sswitch_1
        0x1035 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 256
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
