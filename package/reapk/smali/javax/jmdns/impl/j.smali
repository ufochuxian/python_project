.class public Ljavax/jmdns/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/b;
.implements Ljavax/jmdns/d;
.implements Ljavax/jmdns/impl/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/j$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetAddress;",
            "Ljavax/jmdns/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/f;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private final j:Ljava/util/Timer;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Ljavax/jmdns/impl/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/j;->b:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    new-instance v0, Ljavax/jmdns/impl/b/a;

    const-string v1, "JmmDNS Listeners"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/j;->h:Ljava/util/concurrent/ExecutorService;

    .line 97
    new-instance v0, Ljavax/jmdns/impl/b/a;

    const-string v1, "JmmDNS"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/j;->i:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Multihomed mDNS.Timer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/j;->j:Ljava/util/Timer;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/j;->g:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/j;->e:Ljava/util/Set;

    .line 102
    new-instance v0, Ljavax/jmdns/impl/j$a;

    invoke-static {}, Ljavax/jmdns/c$a;->c()Ljavax/jmdns/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/j$a;-><init>(Ljavax/jmdns/d;Ljavax/jmdns/c;)V

    iget-object v1, p0, Ljavax/jmdns/impl/j;->j:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/j$a;->a(Ljava/util/Timer;)V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/j;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/j;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v1, p0, Ljavax/jmdns/impl/j;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 498
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0, p1}, Ljavax/jmdns/a;->b(Ljava/lang/String;)Z

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljavax/jmdns/e;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/e;

    .prologue
    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "loType":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 382
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/e;>;"
    if-nez v0, :cond_0

    .line 383
    iget-object v3, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v3, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/e;>;"
    check-cast v0, Ljava/util/List;

    .line 386
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/e;>;"
    :cond_0
    if-eqz v0, :cond_2

    .line 387
    monitor-enter v0

    .line 388
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 394
    .local v2, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v2, p1, p2}, Ljavax/jmdns/a;->a(Ljava/lang/String;Ljavax/jmdns/e;)V

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "mDNS":Ljavax/jmdns/a;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 396
    :cond_3
    return-void
.end method

.method public a(Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 15
    .param p1, "event"    # Ljavax/jmdns/NetworkTopologyEvent;

    .prologue
    .line 628
    invoke-virtual/range {p1 .. p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 630
    .local v7, "address":Ljava/net/InetAddress;
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    iget-object v11, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    invoke-static {v7}, Ljavax/jmdns/a;->a(Ljava/net/InetAddress;)Ljavax/jmdns/a;

    move-result-object v3

    .line 634
    .local v3, "dns":Ljavax/jmdns/a;
    iget-object v0, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v7, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 636
    iget-object v2, p0, Ljavax/jmdns/impl/j;->e:Ljava/util/Set;

    .line 637
    .local v2, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 638
    .local v4, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/ServiceInfo;>;"
    iget-object v5, p0, Ljavax/jmdns/impl/j;->g:Ljava/util/Set;

    .line 639
    .local v5, "typeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/f;>;"
    iget-object v6, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 640
    .local v6, "serviceListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/e;>;>;"
    iget-object v12, p0, Ljavax/jmdns/impl/j;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljavax/jmdns/impl/j$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/j$5;-><init>(Ljavax/jmdns/impl/j;Ljava/util/Collection;Ljavax/jmdns/a;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 677
    new-instance v9, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    invoke-direct {v9, v3, v7}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/a;Ljava/net/InetAddress;)V

    .line 678
    .local v9, "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->g()[Ljavax/jmdns/d;

    move-result-object v1

    array-length v12, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v12, :cond_1

    aget-object v10, v1, v0

    .line 679
    .local v10, "listener":Ljavax/jmdns/d;
    iget-object v13, p0, Ljavax/jmdns/impl/j;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Ljavax/jmdns/impl/j$6;

    invoke-direct {v14, p0, v10, v9}, Ljavax/jmdns/impl/j$6;-><init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/d;Ljavax/jmdns/NetworkTopologyEvent;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v2    # "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v4    # "infos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/ServiceInfo;>;"
    .end local v5    # "typeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/f;>;"
    .end local v6    # "serviceListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/e;>;>;"
    .end local v9    # "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    .end local v10    # "listener":Ljavax/jmdns/d;
    :cond_0
    invoke-virtual {v3}, Ljavax/jmdns/a;->close()V

    .line 693
    .end local v3    # "dns":Ljavax/jmdns/a;
    :cond_1
    monitor-exit v11

    .line 698
    :cond_2
    :goto_1
    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 695
    :catch_0
    move-exception v8

    .line 696
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected unhandled exception: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljavax/jmdns/ServiceInfo;)V
    .locals 7
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v1

    .line 448
    .local v1, "dnsArray":[Ljavax/jmdns/a;
    iget-object v4, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 449
    :try_start_0
    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v1, v3

    .line 450
    .local v2, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->F()Ljavax/jmdns/ServiceInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljavax/jmdns/a;->a(Ljavax/jmdns/ServiceInfo;)V

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/m;

    move-object v3, v0

    invoke-virtual {v3, p0}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/m$a;)V

    .line 453
    iget-object v3, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    monitor-exit v4

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public a(Ljavax/jmdns/ServiceInfo;[B)V
    .locals 8
    .param p1, "target"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "value"    # [B

    .prologue
    .line 426
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v0

    .line 427
    .local v0, "dnsArray":[Ljavax/jmdns/a;
    iget-object v4, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 428
    :try_start_0
    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 429
    .local v2, "mDNS":Ljavax/jmdns/a;
    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl;

    .end local v2    # "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->f()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 430
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v1, p2}, Ljavax/jmdns/ServiceInfo;->a([B)V

    .line 428
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_0
    sget-object v6, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    const-string v7, "We have a mDNS that does not know about the service info being updated."

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 436
    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    return-void
.end method

.method public a(Ljavax/jmdns/d;)V
    .locals 1
    .param p1, "listener"    # Ljavax/jmdns/d;

    .prologue
    .line 601
    iget-object v0, p0, Ljavax/jmdns/impl/j;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    return-void
.end method

.method public a(Ljavax/jmdns/f;)V
    .locals 4
    .param p1, "listener"    # Ljavax/jmdns/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v1, p0, Ljavax/jmdns/impl/j;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 358
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0, p1}, Ljavax/jmdns/a;->a(Ljavax/jmdns/f;)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 162
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 164
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0}, Ljavax/jmdns/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 517
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v6

    .line 519
    .local v6, "dnsArray":[Ljavax/jmdns/a;
    new-instance v10, Ljava/util/HashSet;

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 520
    .local v10, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/ServiceInfo;>;"
    array-length v0, v6

    if-lez v0, :cond_3

    .line 521
    new-instance v12, Ljava/util/ArrayList;

    array-length v0, v6

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 522
    .local v12, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;>;"
    array-length v14, v6

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v2, v6, v13

    .line 523
    .local v2, "mDNS":Ljavax/jmdns/a;
    new-instance v0, Ljavax/jmdns/impl/j$4;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/j$4;-><init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;Ljava/lang/String;J)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_0

    .line 531
    .end local v2    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljavax/jmdns/impl/b/a;

    const-string v3, "JmmDNS.list"

    invoke-direct {v1, v3}, Ljavax/jmdns/impl/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 533
    .local v8, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 535
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;>;"
    const-wide/16 v0, 0x64

    add-long v0, v0, p2

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v12, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 542
    :goto_1
    :try_start_2
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Future;

    .line 543
    .local v9, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    invoke-interface {v9}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 547
    :try_start_3
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 548
    :catch_0
    move-exception v7

    .line 549
    .local v7, "exception":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v0, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Interrupted "

    invoke-virtual {v0, v3, v4, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 556
    .end local v7    # "exception":Ljava/lang/InterruptedException;
    .end local v9    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    .line 536
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;>;"
    :catch_1
    move-exception v7

    .line 537
    .restart local v7    # "exception":Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v0, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Interrupted "

    invoke-virtual {v0, v1, v3, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 551
    .end local v7    # "exception":Ljava/lang/InterruptedException;
    .restart local v9    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    :catch_2
    move-exception v7

    .line 552
    .local v7, "exception":Ljava/util/concurrent/ExecutionException;
    sget-object v0, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception "

    invoke-virtual {v0, v3, v4, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 556
    .end local v7    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 559
    .end local v8    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;>;"
    .end local v12    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/ServiceInfo;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/j;->a(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 235
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/j;->a(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)[Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 244
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/j;->a(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;
    .locals 20
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 254
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v10

    .line 255
    .local v10, "dnsArray":[Ljavax/jmdns/a;
    new-instance v15, Ljava/util/HashSet;

    array-length v2, v10

    invoke-direct {v15, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 256
    .local v15, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/ServiceInfo;>;"
    array-length v2, v10

    if-lez v2, :cond_3

    .line 257
    new-instance v17, Ljava/util/ArrayList;

    array-length v2, v10

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v17, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljavax/jmdns/ServiceInfo;>;>;"
    array-length v0, v10

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v4, v10, v18

    .line 259
    .local v4, "mDNS":Ljavax/jmdns/a;
    new-instance v2, Ljavax/jmdns/impl/j$2;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Ljavax/jmdns/impl/j$2;-><init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;Ljava/lang/String;Ljava/lang/String;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_0

    .line 269
    .end local v4    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljavax/jmdns/impl/b/a;

    const-string v5, "JmmDNS.getServiceInfos"

    invoke-direct {v3, v5}, Ljavax/jmdns/impl/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 271
    .local v12, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 273
    .local v16, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;>;"
    const-wide/16 v2, 0x64

    add-long v2, v2, p4

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v2, v3, v5}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 280
    :goto_1
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Future;

    .line 281
    .local v13, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v13}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 285
    :try_start_3
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/jmdns/ServiceInfo;

    .line 286
    .local v14, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v14, :cond_1

    .line 287
    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 289
    .end local v14    # "info":Ljavax/jmdns/ServiceInfo;
    :catch_0
    move-exception v11

    .line 290
    .local v11, "exception":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v3, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Interrupted "

    invoke-virtual {v3, v5, v6, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 297
    .end local v11    # "exception":Ljava/lang/InterruptedException;
    .end local v13    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;"
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v2

    .line 274
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;>;"
    :catch_1
    move-exception v11

    .line 275
    .restart local v11    # "exception":Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v2, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Interrupted "

    invoke-virtual {v2, v3, v5, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 292
    .end local v11    # "exception":Ljava/lang/InterruptedException;
    .restart local v13    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;"
    :catch_2
    move-exception v11

    .line 293
    .local v11, "exception":Ljava/util/concurrent/ExecutionException;
    sget-object v3, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Exception "

    invoke-virtual {v3, v5, v6, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 297
    .end local v11    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v13    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 300
    .end local v12    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljavax/jmdns/ServiceInfo;>;>;"
    .end local v17    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljavax/jmdns/ServiceInfo;>;>;"
    :cond_3
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v15, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/jmdns/ServiceInfo;

    return-object v2
.end method

.method public b(Ljava/lang/String;J)Ljava/util/Map;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 578
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/j;->a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v7

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 579
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->D()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "subtype":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 581
    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 586
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v4    # "subtype":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 587
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 588
    .restart local v4    # "subtype":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 589
    .local v1, "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 592
    .end local v1    # "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    .end local v4    # "subtype":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/j;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 310
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 327
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/j;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 328
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 318
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/j;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 319
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 337
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v2, v9, v8

    .line 338
    .local v2, "mDNS":Ljavax/jmdns/a;
    iget-object v11, p0, Ljavax/jmdns/impl/j;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljavax/jmdns/impl/j$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Ljavax/jmdns/impl/j$3;-><init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 337
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 348
    .end local v2    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljavax/jmdns/e;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/e;

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "loType":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 406
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/e;>;"
    if-eqz v0, :cond_1

    .line 407
    monitor-enter v0

    .line 408
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    iget-object v3, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 415
    .local v2, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v2, p1, p2}, Ljavax/jmdns/a;->b(Ljava/lang/String;Ljavax/jmdns/e;)V

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "mDNS":Ljavax/jmdns/a;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 417
    :cond_2
    return-void
.end method

.method public b(Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 11
    .param p1, "event"    # Ljavax/jmdns/NetworkTopologyEvent;

    .prologue
    .line 706
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 708
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    iget-object v5, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 709
    iget-object v6, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :try_start_1
    iget-object v5, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 711
    iget-object v5, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/a;

    .line 712
    .local v4, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v4}, Ljavax/jmdns/a;->close()V

    .line 713
    new-instance v2, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    invoke-direct {v2, v4, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/a;Ljava/net/InetAddress;)V

    .line 714
    .local v2, "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->g()[Ljavax/jmdns/d;

    move-result-object v7

    array-length v8, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v3, v7, v5

    .line 715
    .local v3, "listener":Ljavax/jmdns/d;
    iget-object v9, p0, Ljavax/jmdns/impl/j;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Ljavax/jmdns/impl/j$7;

    invoke-direct {v10, p0, v3, v2}, Ljavax/jmdns/impl/j$7;-><init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/d;Ljavax/jmdns/NetworkTopologyEvent;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 714
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 726
    .end local v2    # "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    .end local v3    # "listener":Ljavax/jmdns/d;
    .end local v4    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    monitor-exit v6

    .line 731
    :cond_1
    :goto_1
    return-void

    .line 726
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected unhandled exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Ljavax/jmdns/ServiceInfo;)V
    .locals 5
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 464
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v0

    .line 465
    .local v0, "dnsArray":[Ljavax/jmdns/a;
    iget-object v3, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v3

    .line 466
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 468
    .local v1, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v1, p1}, Ljavax/jmdns/a;->b(Ljavax/jmdns/ServiceInfo;)V

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v1    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    check-cast p1, Ljavax/jmdns/impl/m;

    .end local p1    # "info":Ljavax/jmdns/ServiceInfo;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/m$a;)V

    .line 471
    monitor-exit v3

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public b(Ljavax/jmdns/d;)V
    .locals 1
    .param p1, "listener"    # Ljavax/jmdns/d;

    .prologue
    .line 610
    iget-object v0, p0, Ljavax/jmdns/impl/j;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 611
    return-void
.end method

.method public b(Ljavax/jmdns/f;)V
    .locals 4
    .param p1, "listener"    # Ljavax/jmdns/f;

    .prologue
    .line 368
    iget-object v1, p0, Ljavax/jmdns/impl/j;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 370
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0, p1}, Ljavax/jmdns/a;->b(Ljavax/jmdns/f;)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 175
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 177
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0}, Ljavax/jmdns/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public b(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 508
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/j;->a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/j;->b(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 189
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 190
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0}, Ljavax/jmdns/a;->d()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/InetAddress;

    return-object v2
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v4, p0, Ljavax/jmdns/impl/j;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    sget-object v4, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    sget-object v4, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancelling JmmDNS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v4, p0, Ljavax/jmdns/impl/j;->j:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 118
    iget-object v4, p0, Ljavax/jmdns/impl/j;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 119
    iget-object v4, p0, Ljavax/jmdns/impl/j;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 121
    new-instance v4, Ljavax/jmdns/impl/b/a;

    const-string v5, "JmmDNS.close"

    invoke-direct {v4, v5}, Ljavax/jmdns/impl/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 123
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 124
    .local v2, "mDNS":Ljavax/jmdns/a;
    new-instance v6, Ljavax/jmdns/impl/j$1;

    invoke-direct {v6, p0, v2}, Ljavax/jmdns/impl/j$1;-><init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "mDNS":Ljavax/jmdns/a;
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 142
    const-wide/16 v4, 0x1388

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :goto_1
    iget-object v3, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 147
    iget-object v3, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 148
    iget-object v3, p0, Ljavax/jmdns/impl/j;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 149
    iget-object v3, p0, Ljavax/jmdns/impl/j;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 150
    iget-object v3, p0, Ljavax/jmdns/impl/j;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 151
    iget-object v3, p0, Ljavax/jmdns/impl/j;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    invoke-static {}, Ljavax/jmdns/b$a;->d()V

    .line 154
    .end local v1    # "executor":Ljava/util/concurrent/ExecutorService;
    :cond_2
    return-void

    .line 139
    .restart local v1    # "executor":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v3

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "exception":Ljava/lang/InterruptedException;
    sget-object v3, Ljavax/jmdns/impl/j;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Exception "

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public d()[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 215
    .local v0, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v0}, Ljavax/jmdns/a;->e()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/InetAddress;

    return-object v2
.end method

.method public e()[Ljavax/jmdns/a;
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Ljavax/jmdns/impl/j;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/jmdns/a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/a;

    monitor-exit v1

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 5

    .prologue
    .line 481
    invoke-virtual {p0}, Ljavax/jmdns/impl/j;->e()[Ljavax/jmdns/a;

    move-result-object v0

    .line 482
    .local v0, "dnsArray":[Ljavax/jmdns/a;
    iget-object v3, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v3

    .line 483
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/j;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 484
    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 485
    .local v1, "mDNS":Ljavax/jmdns/a;
    invoke-virtual {v1}, Ljavax/jmdns/a;->f()V

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "mDNS":Ljavax/jmdns/a;
    :cond_0
    monitor-exit v3

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public g()[Ljavax/jmdns/d;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Ljavax/jmdns/impl/j;->b:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/j;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/jmdns/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/d;

    return-object v0
.end method
