.class Lcom/jiliguala/niuwa/module/video/VideoActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateChannelName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 2622
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2629
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2631
    :cond_1
    return-void
.end method
