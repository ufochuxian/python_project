.class Lcom/jiliguala/niuwa/module/write/WriteActivity$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/write/WriteActivity;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/write/WriteActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;)V
    .locals 2
    .param p1, "writeTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete$Data;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete$Data;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$202(Lcom/jiliguala/niuwa/module/write/WriteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$000(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$300(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->dismissAllowingStateLoss()V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->setDefaultContent()Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$000(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->dismissAllowingStateLoss()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->setDefaultContent()Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;->a(Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;)V

    return-void
.end method
