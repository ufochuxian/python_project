.class Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->updateCodeEditText(Ljava/lang/String;)V

    .line 112
    return-void
.end method
