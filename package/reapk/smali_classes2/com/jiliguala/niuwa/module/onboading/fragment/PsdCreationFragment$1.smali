.class Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Lcom/jiliguala/niuwa/common/helper/a/b;

    move-result-object v0

    const/16 v2, 0x67

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->access$002(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;->createPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;->a(Ljava/lang/Void;)V

    return-void
.end method
