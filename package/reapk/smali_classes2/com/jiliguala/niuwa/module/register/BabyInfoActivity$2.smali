.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->showDeleteBabyDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    :goto_0
    return-void

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .line 654
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->m(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 655
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 656
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 657
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;)V

    .line 658
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 652
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method
