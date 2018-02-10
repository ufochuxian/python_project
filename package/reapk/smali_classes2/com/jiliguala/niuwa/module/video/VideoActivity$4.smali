.class Lcom/jiliguala/niuwa/module/video/VideoActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->onShowVideoLimitDialog()V
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
    .line 2288
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->finish()V

    .line 2293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    const v1, 0x7f010012

    const v2, 0x7f01001e

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->overridePendingTransition(II)V

    .line 2294
    return-void
.end method
