.class Lcom/jiliguala/niuwa/logic/image/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/image/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/image/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/image/a;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    monitor-exit v1

    .line 156
    :goto_0
    return-object v3

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a;->b(Lcom/jiliguala/niuwa/logic/image/a;)V

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a;->c(Lcom/jiliguala/niuwa/logic/image/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a;->d(Lcom/jiliguala/niuwa/logic/image/a;)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$2;->a:Lcom/jiliguala/niuwa/logic/image/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a;I)I

    .line 155
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/a$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
