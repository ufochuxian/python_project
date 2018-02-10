.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->showTagPop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 265
    :cond_0
    return-void
.end method
