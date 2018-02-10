.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/chivox/AIEngine;->aiengine_delete(J)I

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$002(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;J)J

    .line 105
    :cond_0
    return-void
.end method
