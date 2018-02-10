.class Lcom/jiliguala/niuwa/module/video/VideoActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateTitle(Ljava/lang/String;)V

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateArtist(Ljava/lang/String;)V

    .line 3156
    :cond_1
    return-void
.end method
