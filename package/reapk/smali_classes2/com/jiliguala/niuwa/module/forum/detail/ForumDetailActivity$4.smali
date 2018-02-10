.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->updateFragmentThumb(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->access$200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->updateThumb(Ljava/lang/String;)V

    .line 431
    return-void
.end method
