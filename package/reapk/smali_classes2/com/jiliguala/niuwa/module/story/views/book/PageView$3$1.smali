.class Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$700(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$700(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->goToNextPage()V

    .line 253
    :cond_0
    return-void
.end method