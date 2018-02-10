.class Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->doPageTurnAnimation(FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 346
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$100(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->goToPageView(I)V

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$202(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Lcom/nineoldandroids/a/q;)Lcom/nineoldandroids/a/q;

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 350
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 342
    return-void
.end method
