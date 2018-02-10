.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onDestroy()V
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
    .line 453
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$12;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$12;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$12;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->releaseRes()V

    .line 459
    :cond_0
    return-void
.end method
