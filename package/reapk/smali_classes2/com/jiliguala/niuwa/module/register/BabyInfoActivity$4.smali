.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onChildAvatarUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 759
    :cond_0
    const-string v0, "\u5934\u50cf\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 765
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$902(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 751
    :cond_0
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 770
    return-void
.end method
