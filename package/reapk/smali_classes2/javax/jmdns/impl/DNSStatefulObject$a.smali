.class public final Ljavax/jmdns/impl/DNSStatefulObject$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSStatefulObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Ljavax/jmdns/impl/DNSStatefulObject$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSStatefulObject$a;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 76
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 77
    .local v1, "semaphores":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Semaphore;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    .line 78
    .local v0, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 79
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v0    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v4, 0x1

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 58
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 59
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/concurrent/Semaphore;

    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-direct {v1, v4, v4}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 61
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 62
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 66
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "exception":Ljava/lang/InterruptedException;
    sget-object v3, Ljavax/jmdns/impl/DNSStatefulObject$a;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Exception "

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v0, "aLog":Ljava/lang/StringBuilder;
    const-string v2, "Semaphore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const-string v2, " no semaphores."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 91
    :cond_1
    const-string v2, " semaphores:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 93
    .local v1, "thread":Ljava/lang/Thread;
    const-string v3, "\tThread: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
