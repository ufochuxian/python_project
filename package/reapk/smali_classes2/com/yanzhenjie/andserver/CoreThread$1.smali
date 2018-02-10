.class Lcom/yanzhenjie/andserver/CoreThread$1;
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

.field final synthetic val$ignored:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/CoreThread;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/andserver/CoreThread;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/yanzhenjie/andserver/CoreThread$1;->this$0:Lcom/yanzhenjie/andserver/CoreThread;

    iput-object p2, p0, Lcom/yanzhenjie/andserver/CoreThread$1;->val$ignored:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 216
    const-string v0, "ServerStatusReceiver"

    const-string v1, "CoreThread,listener onError,exception : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yanzhenjie/andserver/CoreThread$1;->val$ignored:Ljava/io/IOException;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/yanzhenjie/andserver/CoreThread$1;->this$0:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/CoreThread;->access$000(Lcom/yanzhenjie/andserver/CoreThread;)Lcom/yanzhenjie/andserver/Server$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/andserver/CoreThread$1;->val$ignored:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/andserver/Server$Listener;->onError(Ljava/lang/Exception;)V

    .line 218
    return-void
.end method
