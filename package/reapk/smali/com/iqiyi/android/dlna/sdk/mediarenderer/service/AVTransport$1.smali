.class Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport$1;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    .line 129
    .local v0, "action":I
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport$1;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    invoke-static {v1, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->access$0(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;I)V

    .line 130
    return-void
.end method
