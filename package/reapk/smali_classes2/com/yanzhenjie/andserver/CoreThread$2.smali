.class Lcom/yanzhenjie/andserver/CoreThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/CoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/andserver/CoreThread;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/CoreThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/andserver/CoreThread;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yanzhenjie/andserver/CoreThread$2;->this$0:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yanzhenjie/andserver/CoreThread$2;->this$0:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/CoreThread;->access$000(Lcom/yanzhenjie/andserver/CoreThread;)Lcom/yanzhenjie/andserver/Server$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/Server$Listener;->onStarted()V

    .line 228
    const-string v0, "ServerStatusReceiver"

    const-string v1, "CoreThread,onStarted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method
