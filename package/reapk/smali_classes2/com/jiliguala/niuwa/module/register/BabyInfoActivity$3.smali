.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onChildAvatarUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 2
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onChildAvatarUpdate(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->b:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 728
    :cond_0
    const-string v0, "\u5934\u50cf\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 717
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
