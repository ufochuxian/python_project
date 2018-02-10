.class Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->onUserAvatarUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 318
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iput-object p1, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarUrl:Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarIv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 307
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;->b:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 311
    :cond_0
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 328
    return-void
.end method
