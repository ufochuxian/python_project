.class Lcom/jiliguala/niuwa/module/video/VideoActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->onPlayPauseOnUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onStopTimer()V

    .line 668
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$200(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V

    .line 669
    return-void
.end method
