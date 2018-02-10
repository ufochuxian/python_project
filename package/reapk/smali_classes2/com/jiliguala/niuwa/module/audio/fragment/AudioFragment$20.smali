.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2307
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2329
    :goto_0
    return-void

    .line 2310
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 2311
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 2312
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    goto :goto_0
.end method
