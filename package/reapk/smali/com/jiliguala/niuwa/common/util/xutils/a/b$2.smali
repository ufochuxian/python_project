.class Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a/b;
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
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

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

    .line 147
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    monitor-exit v1

    .line 157
    :goto_0
    return-object v3

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)V

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;I)I

    .line 156
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
    .line 145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
