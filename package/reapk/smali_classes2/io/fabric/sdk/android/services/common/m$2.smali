.class final Lio/fabric/sdk/android/services/common/m$2;
.super Lio/fabric/sdk/android/services/common/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/m;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/ExecutorService;

.field final synthetic c:J

.field final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/m$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/m$2;->b:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lio/fabric/sdk/android/services/common/m$2;->c:J

    iput-object p5, p0, Lio/fabric/sdk/android/services/common/m$2;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 8

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing shutdown hook for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/m$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/m$2;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 98
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/m$2;->b:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/m$2;->c:J

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/m$2;->d:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/m$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not shut down in the allocated time. Requesting immediate shutdown."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/m$2;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/fabric/sdk/android/services/common/m$2;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/m$2;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method
