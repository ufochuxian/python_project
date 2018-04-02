.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V

    .line 1187
    :cond_1
    return-void
.end method
