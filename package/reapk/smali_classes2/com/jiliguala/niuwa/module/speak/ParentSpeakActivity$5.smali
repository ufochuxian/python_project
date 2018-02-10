.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$5;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$5;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$5;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->releaseRes()V

    .line 323
    :cond_0
    return-void
.end method
