.class Lorg/xwalk/core/XWalkUpdater$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater;->downloadXWalkApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkUpdater;

.field final synthetic val$storeIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$3;->this$0:Lorg/xwalk/core/XWalkUpdater;

    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater$3;->val$storeIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$3;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$3;->val$storeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$3;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$600(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$3;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v2}, Lorg/xwalk/core/XWalkUpdater;->access$500(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkDialogManager;->showUnsupportedStore(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
