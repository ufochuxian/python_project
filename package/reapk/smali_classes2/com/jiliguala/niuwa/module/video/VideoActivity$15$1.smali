.class Lcom/jiliguala/niuwa/module/video/VideoActivity$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity$15;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/VideoActivity$15;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/video/VideoActivity$15;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$15$1;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$15$1;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity$15;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$15;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2811
    return-void
.end method
