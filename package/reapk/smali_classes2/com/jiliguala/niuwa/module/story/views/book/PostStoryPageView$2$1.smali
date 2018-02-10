.class Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;->b:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;->b:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;->b:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 326
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 328
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;->b:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 329
    new-instance v1, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1$1;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 338
    return-void
.end method
