.class Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$4;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$4;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$000(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Z)V

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$4;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$600(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a()V

    .line 138
    return-void
.end method
