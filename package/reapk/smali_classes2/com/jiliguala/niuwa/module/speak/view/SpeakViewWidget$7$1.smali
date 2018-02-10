.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7$1;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7$1;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$700(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 660
    return-void
.end method
