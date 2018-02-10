.class Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->report(ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53e59affdc5f83bL


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->d:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->a:Z

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->c:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 293
    const-string v0, "CanSkip"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "Type"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "onboarding"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method
