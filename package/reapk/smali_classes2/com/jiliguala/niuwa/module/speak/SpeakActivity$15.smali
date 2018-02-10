.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onVideoCheckPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeCaptionView()V

    .line 826
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isTranslateUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 832
    :cond_1
    return-void
.end method
