.class Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$1;->a:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$1;->a:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$1;->a:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->access$000(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;)V

    .line 68
    return-void
.end method
