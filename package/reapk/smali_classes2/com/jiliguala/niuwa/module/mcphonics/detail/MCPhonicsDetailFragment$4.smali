.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->addCourseFinishWatcher()V
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
        "Lcom/jiliguala/niuwa/logic/b/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/f;)V
    .locals 2
    .param p1, "mcPcEvent"    # Lcom/jiliguala/niuwa/logic/b/a/f;

    .prologue
    .line 494
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->b:I

    packed-switch v0, :pswitch_data_0

    .line 520
    :goto_0
    :pswitch_0
    return-void

    .line 498
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$202(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 499
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->onRefresh(Ljava/lang/String;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$300(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0

    .line 507
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$202(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 508
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->onRefresh(Ljava/lang/String;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$300(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0

    .line 515
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x1023
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 491
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/f;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;->a(Lcom/jiliguala/niuwa/logic/b/a/f;)V

    return-void
.end method
