.class Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->broadcastEndMusic()V
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
    .line 530
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$4;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 534
    if-eqz p1, :cond_0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$4;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$300(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    goto :goto_0
.end method
