.class Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$3;
.super Lcom/youzan/androidsdk/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->initBridge()V
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
    .line 269
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$3;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-direct {p0}, Lcom/youzan/androidsdk/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/youzan/androidsdk/c/c/e;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/youzan/androidsdk/c/c/e;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$3;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 273
    .local v0, "dialogFragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {p2}, Lcom/youzan/androidsdk/c/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/youzan/androidsdk/c/c/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/youzan/androidsdk/c/c/e;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    const-wide/32 v2, 0xffff

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSwitch(J)V

    .line 275
    invoke-virtual {p2}, Lcom/youzan/androidsdk/c/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/youzan/androidsdk/c/c/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setShareUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$3;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 277
    return-void
.end method
