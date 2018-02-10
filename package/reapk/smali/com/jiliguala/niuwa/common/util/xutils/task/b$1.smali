.class Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;
.super Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/xutils/task/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/util/xutils/task/b$c",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .prologue
    .line 55
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/task/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
