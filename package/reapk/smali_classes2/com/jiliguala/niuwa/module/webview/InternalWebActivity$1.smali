.class Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$1;
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
        "Lcom/jiliguala/niuwa/logic/b/a/h;",
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
    .line 242
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$1;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/h;)V
    .locals 1
    .param p1, "storyEvent"    # Lcom/jiliguala/niuwa/logic/b/a/h;

    .prologue
    .line 245
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$1;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->finish()V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1019
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/h;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$1;->a(Lcom/jiliguala/niuwa/logic/b/a/h;)V

    return-void
.end method
