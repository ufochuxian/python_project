.class Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->initView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$300(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    .line 388
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 390
    :cond_0
    return-void
.end method
