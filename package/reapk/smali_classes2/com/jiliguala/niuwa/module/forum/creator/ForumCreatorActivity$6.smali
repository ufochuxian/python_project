.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->cancelAudioPlay()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->finish()V

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const v1, 0x7f010012

    const v2, 0x7f01001e

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->overridePendingTransition(II)V

    .line 203
    return-void
.end method
