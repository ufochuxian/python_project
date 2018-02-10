.class Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 71
    :sswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v1, Lcom/jiliguala/niuwa/common/util/c$b;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/common/util/c$b;-><init>()V

    .line 76
    .local v1, "config":Lcom/jiliguala/niuwa/common/util/c$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/util/c$a;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/common/util/c$b;->e:Lcom/jiliguala/niuwa/common/util/c$a;

    .line 77
    iput-boolean v4, v1, Lcom/jiliguala/niuwa/common/util/c$b;->g:Z

    .line 78
    new-instance v0, Lcom/jiliguala/niuwa/common/util/c;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/jiliguala/niuwa/common/util/c;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/util/c$b;)V

    .line 79
    .local v0, "bmpSaveTask":Lcom/jiliguala/niuwa/common/util/c;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x7f090283 -> :sswitch_0
        0x7f0903e6 -> :sswitch_1
    .end sparse-switch
.end method
