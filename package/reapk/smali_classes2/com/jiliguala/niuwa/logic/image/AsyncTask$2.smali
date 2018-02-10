.class Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;
.super Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/image/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/logic/image/AsyncTask$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    .prologue
    .line 217
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;)V

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
    .line 219
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a(Lcom/jiliguala/niuwa/logic/image/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a(Lcom/jiliguala/niuwa/logic/image/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
