.class Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 96
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
