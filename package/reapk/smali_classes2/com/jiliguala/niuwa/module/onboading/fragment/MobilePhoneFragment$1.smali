.class Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 2
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 102
    iget v1, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;

    .line 105
    .local v0, "dialog":Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;
    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->setCallback(Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;)V

    .line 116
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1013
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
