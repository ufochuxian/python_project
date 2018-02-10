.class Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->courseFinish()V

    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2$1;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$000(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 305
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$100(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)V

    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onBackPressed()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->c:Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->access$000(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 315
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method
