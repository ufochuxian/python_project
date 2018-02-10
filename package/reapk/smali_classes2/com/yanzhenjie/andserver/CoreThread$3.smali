.class Lcom/yanzhenjie/andserver/CoreThread$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V
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
    .line 266
    iput-object p1, p0, Lcom/yanzhenjie/andserver/CoreThread$3;->this$0:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yanzhenjie/andserver/CoreThread$3;->this$0:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/CoreThread;->access$000(Lcom/yanzhenjie/andserver/CoreThread;)Lcom/yanzhenjie/andserver/Server$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/Server$Listener;->onStopped()V

    .line 270
    return-void
.end method
