.class Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 2
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 141
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 144
    :sswitch_0
    const-string v0, "globe"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$400(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    goto :goto_0

    .line 153
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 158
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 163
    :sswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$400(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    goto/16 :goto_0

    .line 169
    :sswitch_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    goto/16 :goto_0

    .line 174
    :sswitch_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->showProgressDialog()V

    goto/16 :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1031 -> :sswitch_2
        0x1037 -> :sswitch_3
        0x1038 -> :sswitch_4
        0x1040 -> :sswitch_5
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
