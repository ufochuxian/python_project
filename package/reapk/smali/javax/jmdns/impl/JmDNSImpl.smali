.class public Ljavax/jmdns/impl/JmDNSImpl;
.super Ljavax/jmdns/a;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;
.implements Ljavax/jmdns/impl/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$a;,
        Ljavax/jmdns/impl/JmDNSImpl$c;,
        Ljavax/jmdns/impl/JmDNSImpl$b;,
        Ljavax/jmdns/impl/JmDNSImpl$Operation;
    }
.end annotation


# static fields
.field private static c:Ljava/util/logging/Logger;

.field private static final r:Ljava/util/Random;


# instance fields
.field protected b:Ljava/lang/Thread;

.field private volatile d:Ljava/net/InetAddress;

.field private volatile e:Ljava/net/MulticastSocket;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/k$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/jmdns/impl/DNSCache;

.field private final j:Ljava/util/concurrent/ConcurrentMap;
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

.field private final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Ljavax/jmdns/a$a;

.field private m:Ljavax/jmdns/impl/i;

.field private n:Ljava/lang/Thread;

.field private o:I

.field private p:J

.field private final q:Ljava/util/concurrent/ExecutorService;

.field private final s:Ljava/util/concurrent/locks/ReentrantLock;

.field private t:Ljavax/jmdns/impl/b;

.field private final u:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$a;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    .line 335
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->r:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 394
    invoke-direct {p0}, Ljavax/jmdns/a;-><init>()V

    .line 318
    new-instance v0, Ljavax/jmdns/impl/b/a;

    const-string v1, "JmDNS"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    .line 340
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1691
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->w:Ljava/lang/Object;

    .line 395
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v1, "JmDNS instance created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 398
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->i:Ljavax/jmdns/impl/DNSCache;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->f:Ljava/util/List;

    .line 401
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    .line 403
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    .line 405
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 408
    invoke-static {p1, p0, p2}, Ljavax/jmdns/impl/i;->a(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/i;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    .line 409
    if-eqz p2, :cond_1

    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl;->v:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/i;)V

    .line 422
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/util/Collection;)V

    .line 424
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->p()V

    .line 425
    return-void

    .line 409
    .restart local p2    # "name":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private G()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v2, "closeMulticastSocket()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_3

    .line 486
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 497
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 498
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    :try_start_2
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v2, "closeMulticastSocket(): waiting for jmDNS monitor"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 505
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "closeMulticastSocket() Close socket exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_3
    iput-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    .line 518
    :cond_3
    return-void

    .line 512
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 507
    :catch_1
    move-exception v1

    goto :goto_2

    .line 487
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 1997
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1998
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v3, "disposeServiceCollectors()"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 2000
    :cond_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2001
    .local v1, "type":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$a;

    .line 2002
    .local v0, "collector":Ljavax/jmdns/impl/JmDNSImpl$a;
    if-eqz v0, :cond_1

    .line 2003
    invoke-virtual {p0, v1, v0}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;Ljavax/jmdns/e;)V

    .line 2004
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2007
    .end local v0    # "collector":Ljavax/jmdns/impl/JmDNSImpl$a;
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljavax/jmdns/e;Z)V
    .locals 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/e;
    .param p3, "synch"    # Z

    .prologue
    .line 935
    new-instance v9, Ljavax/jmdns/impl/k$a;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v9, v0, v1}, Ljavax/jmdns/impl/k$a;-><init>(Ljavax/jmdns/e;Z)V

    .line 936
    .local v9, "status":Ljavax/jmdns/impl/k$a;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, "loType":Ljava/lang/String;
    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 938
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    if-nez v4, :cond_1

    .line 939
    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v10, v5, v11}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    .line 940
    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    new-instance v11, Ljavax/jmdns/impl/JmDNSImpl$a;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljavax/jmdns/impl/JmDNSImpl$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v5, v11}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    .line 942
    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/jmdns/e;

    const/4 v11, 0x1

    invoke-direct {p0, v5, v10, v11}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljavax/jmdns/e;Z)V

    .line 945
    :cond_0
    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    check-cast v4, Ljava/util/List;

    .line 947
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    :cond_1
    if-eqz v4, :cond_3

    .line 948
    monitor-enter v4

    .line 949
    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 950
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .local v8, "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v2

    .line 957
    .local v2, "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/a;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/a;

    .local v3, "entry":Ljavax/jmdns/impl/a;
    move-object v6, v3

    .line 958
    check-cast v6, Ljavax/jmdns/impl/g;

    .line 959
    .local v6, "record":Ljavax/jmdns/impl/g;
    invoke-virtual {v6}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v11

    sget-object v12, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v11, v12, :cond_4

    .line 960
    invoke-virtual {v6}, Ljavax/jmdns/impl/g;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 963
    new-instance v11, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v6}, Ljavax/jmdns/impl/g;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljavax/jmdns/impl/g;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljavax/jmdns/impl/g;->b()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljavax/jmdns/impl/JmDNSImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljavax/jmdns/impl/g;->p()Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    invoke-direct {v11, p0, v12, v13, v14}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 952
    .end local v2    # "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/a;>;"
    .end local v3    # "entry":Ljavax/jmdns/impl/a;
    .end local v6    # "record":Ljavax/jmdns/impl/g;
    .end local v8    # "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 968
    .restart local v2    # "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/a;>;"
    .restart local v8    # "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/ServiceEvent;

    .line 969
    .local v7, "serviceEvent":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v9, v7}, Ljavax/jmdns/impl/k$a;->a(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_1

    .line 972
    .end local v7    # "serviceEvent":Ljavax/jmdns/ServiceEvent;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Ljavax/jmdns/impl/JmDNSImpl;->a_(Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/ServiceInfo;>;"
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 429
    new-instance v2, Ljavax/jmdns/impl/n;

    invoke-direct {v2, p0}, Ljavax/jmdns/impl/n;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    .line 430
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->n:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 432
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->l()V

    .line 433
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 435
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_0
    new-instance v3, Ljavax/jmdns/impl/m;

    invoke-direct {v3, v1}, Ljavax/jmdns/impl/m;-><init>(Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "start() Registration exception "

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 440
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_1
    return-void
.end method

.method private a(Ljavax/jmdns/ServiceInfo;J)V
    .locals 6
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "timeout"    # J

    .prologue
    .line 828
    monitor-enter p1

    .line 829
    const-wide/16 v4, 0xc8

    :try_start_0
    div-long v2, p2, v4

    .line 830
    .local v2, "loops":J
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 831
    const-wide/16 v2, 0x1

    .line 833
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 834
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    return-void

    .line 838
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v0    # "i":I
    .end local v2    # "loops":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 839
    .restart local v0    # "i":I
    .restart local v2    # "loops":J
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 366
    const/4 v2, 0x0

    .line 368
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 369
    .local v1, "pomProperties":Ljava/util/Properties;
    const-class v3, Ljavax/jmdns/impl/JmDNSImpl;

    const-string v4, "/META-INF/maven/javax.jmdns/jmdns/pom.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 370
    const-string v3, "version"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 374
    .end local v1    # "pomProperties":Ljava/util/Properties;
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JmDNS version \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running on java version \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (build "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.runtime.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.vendor"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operating environment \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.arch"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "For more information on JmDNS please visit http://jmdns.org"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RUNNING.IN.IDE.FULL"

    goto/16 :goto_0
.end method

.method private b(Ljavax/jmdns/impl/i;)V
    .locals 4
    .param p1, "hostInfo"    # Ljavax/jmdns/impl/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 444
    invoke-virtual {p1}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    .line 445
    const-string v1, "FF02::FB"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    .line 450
    :cond_0
    :goto_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_1

    .line 451
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->G()V

    .line 462
    :cond_1
    new-instance v1, Ljava/net/MulticastSocket;

    sget v2, Ljavax/jmdns/impl/constants/a;->c:I

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    .line 463
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/jmdns/impl/i;->e()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 465
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Ljavax/jmdns/impl/i;->e()Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_2
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 473
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 474
    return-void

    .line 447
    :cond_3
    const-string v1, "224.0.0.251"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/net/SocketException;
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMulticastSocket() Set network interface exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Ljavax/jmdns/impl/m;)Z
    .locals 11
    .param p1, "info"    # Ljavax/jmdns/impl/m;

    .prologue
    .line 1153
    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, "originalQualifiedName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1158
    .local v2, "now":J
    :cond_0
    const/4 v0, 0x0

    .line 1161
    .local v0, "collision":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/a;

    .line 1162
    .local v1, "dnsEntry":Ljavax/jmdns/impl/a;
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/impl/a;->b(J)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v5, v1

    .line 1163
    check-cast v5, Ljavax/jmdns/impl/g$f;

    .line 1164
    .local v5, "s":Ljavax/jmdns/impl/g$f;
    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->v()I

    move-result v8

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->q()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->s()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v9}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1165
    :cond_2
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1166
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " s.server="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->s()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v9}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equals:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->s()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v10}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1168
    :cond_3
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$b;->a()Ljavax/jmdns/impl/NameRegister;

    move-result-object v7

    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v8}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v7, v8, v9, v10}, Ljavax/jmdns/impl/NameRegister;->c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljavax/jmdns/impl/m;->f(Ljava/lang/String;)V

    .line 1169
    const/4 v0, 0x1

    .line 1176
    .end local v1    # "dnsEntry":Ljavax/jmdns/impl/a;
    .end local v5    # "s":Ljavax/jmdns/impl/g$f;
    :cond_4
    iget-object v7, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/ServiceInfo;

    .line 1177
    .local v6, "selfService":Ljavax/jmdns/ServiceInfo;
    if-eqz v6, :cond_5

    if-eq v6, p1, :cond_5

    .line 1178
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$b;->a()Ljavax/jmdns/impl/NameRegister;

    move-result-object v7

    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v8}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v7, v8, v9, v10}, Ljavax/jmdns/impl/NameRegister;->c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljavax/jmdns/impl/m;->f(Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x1

    .line 1182
    :cond_5
    if-nez v0, :cond_0

    .line 1184
    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 2160
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2161
    .local v1, "loType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2162
    .local v0, "loQualifiedName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2163
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2165
    .end local p1    # "qualifiedName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static z()Ljava/util/Random;
    .locals 1

    .prologue
    .line 2189
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->r:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2194
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2198
    return-void
.end method

.method public C()Ljavax/jmdns/impl/b;
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;

    return-object v0
.end method

.method public D()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2213
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public E()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public F()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 721
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 729
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 737
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 745
    const-string v1, ""

    invoke-virtual {p0, p1, p2, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;

    move-result-object v0

    .line 746
    .local v0, "info":Ljavax/jmdns/impl/m;
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/ServiceInfo;J)V

    .line 747
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "info":Ljavax/jmdns/impl/m;
    :goto_0
    return-object v0

    .restart local v0    # "info":Ljavax/jmdns/impl/m;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/a$a;)Ljavax/jmdns/a$a;
    .locals 1
    .param p1, "delegate"    # Ljavax/jmdns/a$a;

    .prologue
    .line 2231
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->l:Ljavax/jmdns/a$a;

    .line 2232
    .local v0, "previous":Ljavax/jmdns/a$a;
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->l:Ljavax/jmdns/a$a;

    .line 2233
    return-object v0
.end method

.method public a(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;ILjavax/jmdns/impl/e;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;
    .locals 5
    .param p1, "in"    # Ljavax/jmdns/impl/b;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "out"    # Ljavax/jmdns/impl/e;
    .param p5, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0x8400

    const/4 v3, 0x0

    .line 1501
    move-object v1, p4

    .line 1502
    .local v1, "newOut":Ljavax/jmdns/impl/e;
    if-nez v1, :cond_0

    .line 1503
    new-instance v1, Ljavax/jmdns/impl/e;

    .end local v1    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->c()I

    move-result v2

    invoke-direct {v1, v4, v3, v2}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 1506
    .restart local v1    # "newOut":Ljavax/jmdns/impl/e;
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p5}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :goto_0
    return-object v1

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljavax/jmdns/impl/e;->e()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/e;->b(I)V

    .line 1509
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/e;->a(I)V

    .line 1510
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 1512
    new-instance v1, Ljavax/jmdns/impl/e;

    .end local v1    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->c()I

    move-result v2

    invoke-direct {v1, v4, v3, v2}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 1513
    .restart local v1    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {v1, p1, p5}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "persistent"    # Z

    .prologue
    .line 751
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->v()V

    .line 752
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "loType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;)Z

    .line 754
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljavax/jmdns/impl/JmDNSImpl$a;

    invoke-direct {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 755
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/e;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljavax/jmdns/e;Z)V

    .line 759
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;

    move-result-object v0

    .line 761
    .local v0, "info":Ljavax/jmdns/impl/m;
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/m;)V

    .line 763
    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "throttle"    # I

    .prologue
    .line 2181
    iput p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->o:I

    .line 2182
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "lastThrottleIncrement"    # J

    .prologue
    .line 2173
    iput-wide p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->p:J

    .line 2174
    return-void
.end method

.method public a(JLjavax/jmdns/impl/g;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    .locals 17
    .param p1, "now"    # J
    .param p3, "rec"    # Ljavax/jmdns/impl/g;
    .param p4, "operation"    # Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .prologue
    .line 1250
    const/4 v8, 0x0

    .line 1251
    .local v8, "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->f:Ljava/util/List;

    monitor-enter v13

    .line 1252
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/jmdns/impl/JmDNSImpl;->f:Ljava/util/List;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    .end local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    .local v9, "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1254
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/impl/c;

    .line 1255
    .local v7, "listener":Ljavax/jmdns/impl/c;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v13

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface {v7, v13, v0, v1, v2}, Ljavax/jmdns/impl/c;->a(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/a;)V

    goto :goto_0

    .line 1253
    .end local v7    # "listener":Ljavax/jmdns/impl/c;
    .end local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    .restart local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    :catchall_0
    move-exception v12

    :goto_1
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1258
    .end local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    .restart local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    :cond_0
    sget-object v12, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual/range {p3 .. p3}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1261
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/g;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v3

    .line 1262
    .local v3, "event":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/jmdns/ServiceInfo;->a()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1264
    :cond_1
    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;

    move-result-object v5

    .line 1265
    .local v5, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->a()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1266
    new-instance v4, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12, v13, v5}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .end local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .local v4, "event":Ljavax/jmdns/ServiceEvent;
    move-object v3, v4

    .line 1270
    .end local v4    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v5    # "info":Ljavax/jmdns/ServiceInfo;
    .restart local v3    # "event":Ljavax/jmdns/ServiceEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1272
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    if-eqz v6, :cond_5

    .line 1273
    monitor-enter v6

    .line 1274
    :try_start_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1275
    .local v11, "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1279
    :goto_2
    sget-object v12, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1280
    sget-object v12, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".updating record for event: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " list "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " operation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1282
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1283
    move-object v10, v3

    .line 1285
    .local v10, "localEvent":Ljavax/jmdns/ServiceEvent;
    sget-object v12, Ljavax/jmdns/impl/JmDNSImpl$7;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1321
    .end local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    .end local v10    # "localEvent":Ljavax/jmdns/ServiceEvent;
    .end local v11    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    :cond_4
    return-void

    .line 1275
    .restart local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    :catchall_1
    move-exception v12

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v12

    .line 1277
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .restart local v11    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    goto :goto_2

    .line 1287
    .restart local v10    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :pswitch_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/impl/k$a;

    .line 1288
    .local v7, "listener":Ljavax/jmdns/impl/k$a;
    invoke-virtual {v7}, Ljavax/jmdns/impl/k$a;->b()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1289
    invoke-virtual {v7, v10}, Ljavax/jmdns/impl/k$a;->a(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_3

    .line 1291
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Ljavax/jmdns/impl/JmDNSImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v10}, Ljavax/jmdns/impl/JmDNSImpl$4;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/k$a;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    .line 1302
    .end local v7    # "listener":Ljavax/jmdns/impl/k$a;
    :pswitch_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/impl/k$a;

    .line 1303
    .restart local v7    # "listener":Ljavax/jmdns/impl/k$a;
    invoke-virtual {v7}, Ljavax/jmdns/impl/k$a;->b()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1304
    invoke-virtual {v7, v10}, Ljavax/jmdns/impl/k$a;->b(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_4

    .line 1306
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Ljavax/jmdns/impl/JmDNSImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v10}, Ljavax/jmdns/impl/JmDNSImpl$5;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/k$a;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4

    .line 1253
    .end local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    .end local v7    # "listener":Ljavax/jmdns/impl/k$a;
    .end local v10    # "localEvent":Ljavax/jmdns/ServiceEvent;
    .end local v11    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    .restart local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/c;>;"
    goto/16 :goto_1

    .line 1285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljavax/jmdns/e;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/e;

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljavax/jmdns/e;Z)V

    .line 932
    return-void
.end method

.method a(Ljavax/jmdns/ServiceEvent;)V
    .locals 7
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 880
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 882
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 883
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 884
    move-object v3, p1

    .line 885
    .local v3, "localEvent":Ljavax/jmdns/ServiceEvent;
    monitor-enter v0

    .line 886
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 887
    .local v1, "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/k$a;

    .line 889
    .local v2, "listener":Ljavax/jmdns/impl/k$a;
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Ljavax/jmdns/impl/JmDNSImpl$1;

    invoke-direct {v6, p0, v2, v3}, Ljavax/jmdns/impl/JmDNSImpl$1;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/k$a;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 887
    .end local v1    # "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    .end local v2    # "listener":Ljavax/jmdns/impl/k$a;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 899
    .end local v3    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :cond_0
    return-void
.end method

.method public a(Ljavax/jmdns/ServiceInfo;)V
    .locals 6
    .param p1, "infoAbstract"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1770

    .line 998
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This DNS is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 1001
    check-cast v0, Ljavax/jmdns/impl/m;

    .line 1003
    .local v0, "info":Ljavax/jmdns/impl/m;
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1004
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 1005
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A service information can only be registered with a single instamce of JmDNS."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1006
    :cond_2
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1007
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A service information can only be registered once."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1010
    :cond_3
    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1012
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;)Z

    .line 1015
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->recoverState()Z

    .line 1016
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v1}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/m;->g(Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v1}, Ljavax/jmdns/impl/i;->c()Ljava/net/Inet4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/m;->a(Ljava/net/Inet4Address;)V

    .line 1018
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v1}, Ljavax/jmdns/impl/i;->d()Ljava/net/Inet6Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/m;->a(Ljava/net/Inet6Address;)V

    .line 1020
    invoke-virtual {p0, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForAnnounced(J)Z

    .line 1022
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/m;)Z

    .line 1023
    :goto_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1024
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/m;)Z

    goto :goto_0

    .line 1027
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->l()V

    .line 1028
    invoke-virtual {v0, v4, v5}, Ljavax/jmdns/impl/m;->waitForAnnounced(J)Z

    .line 1030
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1031
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerService() JmDNS registered service as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1033
    :cond_5
    return-void
.end method

.method public a(Ljavax/jmdns/f;)V
    .locals 6
    .param p1, "listener"    # Ljavax/jmdns/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v0, Ljavax/jmdns/impl/k$b;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Ljavax/jmdns/impl/k$b;-><init>(Ljavax/jmdns/f;Z)V

    .line 907
    .local v0, "status":Ljavax/jmdns/impl/k$b;
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast v1, Ljava/lang/String;

    .line 911
    .local v1, "type":Ljava/lang/String;
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, p0, v1, v4, v5}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {v0, v3}, Ljavax/jmdns/impl/k$b;->a(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0

    .line 914
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->q()V

    .line 915
    return-void
.end method

.method a(Ljavax/jmdns/impl/b;)V
    .locals 8
    .param p1, "msg"    # Ljavax/jmdns/impl/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1413
    .local v2, "now":J
    const/4 v0, 0x0

    .line 1414
    .local v0, "hostConflictDetected":Z
    const/4 v4, 0x0

    .line 1416
    .local v4, "serviceConflictDetected":Z
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->i()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/g;

    .line 1417
    .local v1, "newRecord":Ljavax/jmdns/impl/g;
    invoke-virtual {p0, v1, v2, v3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/g;J)V

    .line 1419
    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1420
    :cond_0
    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_0

    .line 1422
    :cond_1
    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_0

    .line 1427
    .end local v1    # "newRecord":Ljavax/jmdns/impl/g;
    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    .line 1428
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->l()V

    .line 1430
    :cond_4
    return-void
.end method

.method public a(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "in"    # Ljavax/jmdns/impl/b;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 1671
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljavax/jmdns/impl/h;->a(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V

    .line 1672
    return-void
.end method

.method public a(Ljavax/jmdns/impl/c;)V
    .locals 1
    .param p1, "listener"    # Ljavax/jmdns/impl/c;

    .prologue
    .line 1219
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1220
    return-void
.end method

.method public a(Ljavax/jmdns/impl/c;Ljavax/jmdns/impl/f;)V
    .locals 5
    .param p1, "listener"    # Ljavax/jmdns/impl/c;
    .param p2, "question"    # Ljavax/jmdns/impl/f;

    .prologue
    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1199
    .local v2, "now":J
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    if-eqz p2, :cond_1

    .line 1204
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/a;

    .line 1205
    .local v0, "dnsEntry":Ljavax/jmdns/impl/a;
    invoke-virtual {p2, v0}, Ljavax/jmdns/impl/f;->f(Ljavax/jmdns/impl/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/a;->b(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1206
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-interface {p1, v4, v2, v3, v0}, Ljavax/jmdns/impl/c;->a(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/a;)V

    goto :goto_0

    .line 1210
    .end local v0    # "dnsEntry":Ljavax/jmdns/impl/a;
    :cond_1
    return-void
.end method

.method public a(Ljavax/jmdns/impl/e;)V
    .locals 11
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-virtual {p1}, Ljavax/jmdns/impl/e;->v()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1529
    invoke-virtual {p1}, Ljavax/jmdns/impl/e;->a()Ljava/net/InetSocketAddress;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1530
    invoke-virtual {p1}, Ljavax/jmdns/impl/e;->a()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1531
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {p1}, Ljavax/jmdns/impl/e;->a()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 1537
    .local v6, "port":I
    :goto_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/e;->c()[B

    move-result-object v2

    .line 1538
    .local v2, "message":[B
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v7, v2

    invoke-direct {v5, v2, v7, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1540
    .local v5, "packet":Ljava/net/DatagramPacket;
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1542
    :try_start_0
    new-instance v4, Ljavax/jmdns/impl/b;

    invoke-direct {v4, v5}, Ljavax/jmdns/impl/b;-><init>(Ljava/net/DatagramPacket;)V

    .line 1543
    .local v4, "msg":Ljavax/jmdns/impl/b;
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1544
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") JmDNS out:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    .end local v4    # "msg":Ljavax/jmdns/impl/b;
    :cond_0
    :goto_1
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    .line 1551
    .local v3, "ms":Ljava/net/MulticastSocket;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1552
    invoke-virtual {v3, v5}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1555
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "message":[B
    .end local v3    # "ms":Ljava/net/MulticastSocket;
    .end local v5    # "packet":Ljava/net/DatagramPacket;
    .end local v6    # "port":I
    :cond_1
    return-void

    .line 1533
    :cond_2
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->d:Ljava/net/InetAddress;

    .line 1534
    .restart local v0    # "addr":Ljava/net/InetAddress;
    sget v6, Ljavax/jmdns/impl/constants/a;->c:I

    .restart local v6    # "port":I
    goto :goto_0

    .line 1546
    .restart local v2    # "message":[B
    .restart local v5    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v1

    .line 1547
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") - JmDNS can not parse what it sends!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v1}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljavax/jmdns/impl/g;)V
    .locals 3
    .param p1, "record"    # Ljavax/jmdns/impl/g;

    .prologue
    .line 1229
    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->p()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 1230
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->a_(Ljava/lang/String;)V

    .line 1234
    :cond_0
    return-void
.end method

.method a(Ljavax/jmdns/impl/g;J)V
    .locals 10
    .param p1, "record"    # Ljavax/jmdns/impl/g;
    .param p2, "now"    # J

    .prologue
    .line 1324
    move-object v4, p1

    .line 1326
    .local v4, "newRecord":Ljavax/jmdns/impl/g;
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1327
    .local v0, "cacheOperation":Ljavax/jmdns/impl/JmDNSImpl$Operation;
    invoke-virtual {v4, p2, p3}, Ljavax/jmdns/impl/g;->b(J)Z

    move-result v3

    .line 1328
    .local v3, "expired":Z
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1329
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handle response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1333
    :cond_0
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->i()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->j()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1334
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->g()Z

    move-result v6

    .line 1335
    .local v6, "unique":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/a;)Ljavax/jmdns/impl/a;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/g;

    .line 1336
    .local v1, "cachedRecord":Ljavax/jmdns/impl/g;
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1337
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handle response cached record: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1339
    :cond_1
    if-eqz v6, :cond_3

    .line 1340
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/a;

    .line 1341
    .local v2, "entry":Ljavax/jmdns/impl/a;
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eq v2, v1, :cond_2

    .line 1342
    check-cast v2, Ljavax/jmdns/impl/g;

    .end local v2    # "entry":Ljavax/jmdns/impl/a;
    invoke-virtual {v2, p2, p3}, Ljavax/jmdns/impl/g;->d(J)V

    goto :goto_0

    .line 1346
    :cond_3
    if-eqz v1, :cond_b

    .line 1347
    if-eqz v3, :cond_7

    .line 1349
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->r()I

    move-result v7

    if-nez v7, :cond_6

    .line 1350
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1351
    invoke-virtual {v1, p2, p3}, Ljavax/jmdns/impl/g;->d(J)V

    .line 1382
    .end local v1    # "cachedRecord":Ljavax/jmdns/impl/g;
    .end local v6    # "unique":Z
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v7, v8, :cond_d

    .line 1384
    const/4 v5, 0x0

    .line 1385
    .local v5, "typeAdded":Z
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->i()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1387
    if-nez v3, :cond_5

    .line 1388
    check-cast v4, Ljavax/jmdns/impl/g$e;

    .end local v4    # "newRecord":Ljavax/jmdns/impl/g;
    invoke-virtual {v4}, Ljavax/jmdns/impl/g$e;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;)Z

    move-result v5

    .line 1403
    .end local v5    # "typeAdded":Z
    :cond_5
    :goto_2
    return-void

    .line 1354
    .restart local v1    # "cachedRecord":Ljavax/jmdns/impl/g;
    .restart local v4    # "newRecord":Ljavax/jmdns/impl/g;
    .restart local v6    # "unique":Z
    :cond_6
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1355
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/a;)Z

    goto :goto_1

    .line 1359
    :cond_7
    invoke-virtual {v4, v1}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/g;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v4, v1}, Ljavax/jmdns/impl/g;->b(Ljavax/jmdns/impl/a;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 1360
    :cond_8
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->o()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1361
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1362
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Ljavax/jmdns/impl/DNSCache;->replaceDNSEntry(Ljavax/jmdns/impl/a;Ljavax/jmdns/impl/a;)Z

    goto :goto_1

    .line 1365
    :cond_9
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1366
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/a;)Z

    goto :goto_1

    .line 1369
    :cond_a
    invoke-virtual {v1, v4}, Ljavax/jmdns/impl/g;->d(Ljavax/jmdns/impl/g;)V

    .line 1370
    move-object v4, v1

    goto :goto_1

    .line 1374
    :cond_b
    if-nez v3, :cond_4

    .line 1375
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1376
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/a;)Z

    goto :goto_1

    .line 1392
    .end local v1    # "cachedRecord":Ljavax/jmdns/impl/g;
    .end local v6    # "unique":Z
    .restart local v5    # "typeAdded":Z
    :cond_c
    invoke-virtual {v4}, Ljavax/jmdns/impl/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 1393
    if-eqz v5, :cond_d

    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-ne v0, v7, :cond_d

    .line 1394
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1399
    .end local v5    # "typeAdded":Z
    :cond_d
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-eq v0, v7, :cond_5

    .line 1400
    invoke-virtual {p0, p2, p3, v4, v0}, Ljavax/jmdns/impl/JmDNSImpl;->a(JLjavax/jmdns/impl/g;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    goto :goto_2
.end method

.method a(Ljavax/jmdns/impl/i;)V
    .locals 0
    .param p1, "localHost"    # Ljavax/jmdns/impl/i;

    .prologue
    .line 2209
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    .line 2210
    return-void
.end method

.method public a(Ljavax/jmdns/impl/m;)V
    .locals 2
    .param p1, "info"    # Ljavax/jmdns/impl/m;

    .prologue
    .line 1644
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/h;->a(Ljavax/jmdns/impl/m;)V

    .line 1645
    return-void
.end method

.method public a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1928
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->v()V

    .line 1937
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1939
    .local v1, "loType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1940
    .local v2, "newCollectorCreated":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1941
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "JmDNS Cancelling."

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1942
    new-array v3, v4, [Ljavax/jmdns/ServiceInfo;

    .line 1957
    :goto_0
    return-object v3

    .line 1945
    :cond_1
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$a;

    .line 1946
    .local v0, "collector":Ljavax/jmdns/impl/JmDNSImpl$a;
    if-nez v0, :cond_2

    .line 1947
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Ljavax/jmdns/impl/JmDNSImpl$a;

    invoke-direct {v6, p1}, Ljavax/jmdns/impl/JmDNSImpl$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move v2, v3

    .line 1948
    :goto_1
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collector":Ljavax/jmdns/impl/JmDNSImpl$a;
    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$a;

    .line 1949
    .restart local v0    # "collector":Ljavax/jmdns/impl/JmDNSImpl$a;
    if-eqz v2, :cond_2

    .line 1950
    invoke-direct {p0, p1, v0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljavax/jmdns/e;Z)V

    .line 1953
    :cond_2
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1954
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-collector: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1957
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl$a;->a(J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 1947
    goto :goto_1

    .line 1957
    :cond_5
    new-array v3, v4, [Ljavax/jmdns/ServiceInfo;

    goto :goto_0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1662
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/h;->a_(Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/a/a;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 526
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/i;->advanceState(Ljavax/jmdns/impl/a/a;)Z

    move-result v0

    return v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 574
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i;->associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 575
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->v:Ljava/lang/String;

    return-object v0
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
    .line 1973
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1974
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v7

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 1975
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1976
    .local v4, "subtype":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1977
    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 1982
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v4    # "subtype":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1983
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

    .line 1984
    .restart local v4    # "subtype":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1985
    .local v1, "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1988
    .end local v1    # "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    .end local v4    # "subtype":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;
    .locals 21
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "persistent"    # Z

    .prologue
    .line 768
    new-instance v2, Ljavax/jmdns/impl/m;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    check-cast v10, [B

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Ljavax/jmdns/impl/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    .line 769
    .local v2, "info":Ljavax/jmdns/impl/m;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v9

    new-instance v3, Ljavax/jmdns/impl/g$e;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {v9, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/a;)Ljavax/jmdns/impl/a;

    move-result-object v16

    .line 770
    .local v16, "pointerEntry":Ljavax/jmdns/impl/a;
    move-object/from16 v0, v16

    instance-of v5, v0, Ljavax/jmdns/impl/g;

    if-eqz v5, :cond_9

    .line 771
    check-cast v16, Ljavax/jmdns/impl/g;

    .end local v16    # "pointerEntry":Ljavax/jmdns/impl/a;
    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/g;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/m;

    .line 772
    .local v3, "cachedInfo":Ljavax/jmdns/impl/m;
    if-eqz v3, :cond_9

    .line 775
    invoke-virtual {v3}, Ljavax/jmdns/impl/m;->E()Ljava/util/Map;

    move-result-object v4

    .line 776
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 777
    .local v19, "srvBytes":[B
    const-string v17, ""

    .line 778
    .local v17, "server":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v5, v6, v7, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/a;

    move-result-object v18

    .line 779
    .local v18, "serviceEntry":Ljavax/jmdns/impl/a;
    move-object/from16 v0, v18

    instance-of v5, v0, Ljavax/jmdns/impl/g;

    if-eqz v5, :cond_0

    .line 780
    check-cast v18, Ljavax/jmdns/impl/g;

    .end local v18    # "serviceEntry":Ljavax/jmdns/impl/a;
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/g;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    .line 781
    .local v14, "cachedServiceEntryInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v14, :cond_0

    .line 782
    new-instance v3, Ljavax/jmdns/impl/m;

    .end local v3    # "cachedInfo":Ljavax/jmdns/impl/m;
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->q()I

    move-result v5

    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->s()I

    move-result v6

    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->r()I

    move-result v7

    const/4 v9, 0x0

    check-cast v9, [B

    move/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 783
    .restart local v3    # "cachedInfo":Ljavax/jmdns/impl/m;
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->t()[B

    move-result-object v19

    .line 784
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->g()Ljava/lang/String;

    move-result-object v17

    .line 787
    .end local v14    # "cachedServiceEntryInfo":Ljavax/jmdns/ServiceInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/jmdns/impl/a;

    .line 788
    .local v12, "addressEntry":Ljavax/jmdns/impl/a;
    instance-of v5, v12, Ljavax/jmdns/impl/g;

    if-eqz v5, :cond_1

    .line 789
    check-cast v12, Ljavax/jmdns/impl/g;

    .end local v12    # "addressEntry":Ljavax/jmdns/impl/a;
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljavax/jmdns/impl/g;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v13

    .line 790
    .local v13, "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v13, :cond_1

    .line 791
    invoke-virtual {v13}, Ljavax/jmdns/ServiceInfo;->o()[Ljava/net/Inet4Address;

    move-result-object v7

    array-length v8, v7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v11, v7, v5

    .line 792
    .local v11, "address":Ljava/net/Inet4Address;
    invoke-virtual {v3, v11}, Ljavax/jmdns/impl/m;->a(Ljava/net/Inet4Address;)V

    .line 791
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 794
    .end local v11    # "address":Ljava/net/Inet4Address;
    :cond_2
    invoke-virtual {v13}, Ljavax/jmdns/ServiceInfo;->t()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/m;->b([B)V

    goto :goto_0

    .line 798
    .end local v13    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/jmdns/impl/a;

    .line 799
    .restart local v12    # "addressEntry":Ljavax/jmdns/impl/a;
    instance-of v5, v12, Ljavax/jmdns/impl/g;

    if-eqz v5, :cond_4

    .line 800
    check-cast v12, Ljavax/jmdns/impl/g;

    .end local v12    # "addressEntry":Ljavax/jmdns/impl/a;
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljavax/jmdns/impl/g;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v13

    .line 801
    .restart local v13    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v13, :cond_4

    .line 802
    invoke-virtual {v13}, Ljavax/jmdns/ServiceInfo;->p()[Ljava/net/Inet6Address;

    move-result-object v7

    array-length v8, v7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_5

    aget-object v11, v7, v5

    .line 803
    .local v11, "address":Ljava/net/Inet6Address;
    invoke-virtual {v3, v11}, Ljavax/jmdns/impl/m;->a(Ljava/net/Inet6Address;)V

    .line 802
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 805
    .end local v11    # "address":Ljava/net/Inet6Address;
    :cond_5
    invoke-virtual {v13}, Ljavax/jmdns/ServiceInfo;->t()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/m;->b([B)V

    goto :goto_2

    .line 809
    .end local v13    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v5, v6, v7, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/a;

    move-result-object v20

    .line 810
    .local v20, "textEntry":Ljavax/jmdns/impl/a;
    move-object/from16 v0, v20

    instance-of v5, v0, Ljavax/jmdns/impl/g;

    if-eqz v5, :cond_7

    .line 811
    check-cast v20, Ljavax/jmdns/impl/g;

    .end local v20    # "textEntry":Ljavax/jmdns/impl/a;
    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/g;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v15

    .line 812
    .local v15, "cachedTextInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v15, :cond_7

    .line 813
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->t()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/m;->b([B)V

    .line 816
    .end local v15    # "cachedTextInfo":Ljavax/jmdns/ServiceInfo;
    :cond_7
    invoke-virtual {v3}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_8

    .line 817
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljavax/jmdns/impl/m;->b([B)V

    .line 819
    :cond_8
    invoke-virtual {v3}, Ljavax/jmdns/impl/m;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 820
    move-object v2, v3

    .line 824
    .end local v3    # "cachedInfo":Ljavax/jmdns/impl/m;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .end local v17    # "server":Ljava/lang/String;
    .end local v19    # "srvBytes":[B
    :cond_9
    return-object v2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 851
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 852
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 867
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 868
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 859
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 860
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 875
    const-string v1, ""

    invoke-virtual {p0, p1, p2, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/m;

    move-result-object v0

    .line 876
    .local v0, "info":Ljavax/jmdns/impl/m;
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/ServiceInfo;J)V

    .line 877
    return-void
.end method

.method public b(Ljava/lang/String;Ljavax/jmdns/e;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/e;

    .prologue
    .line 980
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "loType":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 982
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/k$a;>;"
    if-eqz v0, :cond_1

    .line 983
    monitor-enter v0

    .line 984
    :try_start_0
    new-instance v2, Ljavax/jmdns/impl/k$a;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Ljavax/jmdns/impl/k$a;-><init>(Ljavax/jmdns/e;Z)V

    .line 985
    .local v2, "status":Ljavax/jmdns/impl/k$a;
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 986
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 989
    :cond_0
    monitor-exit v0

    .line 991
    .end local v2    # "status":Ljavax/jmdns/impl/k$a;
    :cond_1
    return-void

    .line 989
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public b(Ljavax/jmdns/ServiceInfo;)V
    .locals 4
    .param p1, "infoAbstract"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 1040
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/m;

    .line 1042
    .local v0, "info":Ljavax/jmdns/impl/m;
    if-eqz v0, :cond_1

    .line 1043
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->cancelState()Z

    .line 1044
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->o()V

    .line 1045
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/m;->waitForCanceled(J)Z

    .line 1047
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1048
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterService() JmDNS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unregistered service as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removing unregistered service info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljavax/jmdns/f;)V
    .locals 2
    .param p1, "listener"    # Ljavax/jmdns/f;

    .prologue
    .line 922
    new-instance v0, Ljavax/jmdns/impl/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/jmdns/impl/k$b;-><init>(Ljavax/jmdns/f;Z)V

    .line 923
    .local v0, "status":Ljavax/jmdns/impl/k$b;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 924
    return-void
.end method

.method public b(Ljavax/jmdns/impl/b;)V
    .locals 1
    .param p1, "in"    # Ljavax/jmdns/impl/b;

    .prologue
    .line 1479
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->A()V

    .line 1481
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;

    if-ne v0, p1, :cond_0

    .line 1482
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->B()V

    .line 1487
    return-void

    .line 1485
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->B()V

    throw v0
.end method

.method b(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V
    .locals 12
    .param p1, "in"    # Ljavax/jmdns/impl/b;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1442
    sget-object v7, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".handle query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1445
    :cond_0
    const/4 v1, 0x0

    .line 1446
    .local v1, "conflictDetected":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x78

    add-long v2, v8, v10

    .line 1447
    .local v2, "expirationTime":J
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->i()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 1448
    .local v0, "answer":Ljavax/jmdns/impl/g;
    invoke-virtual {v0, p0, v2, v3}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/JmDNSImpl;J)Z

    move-result v8

    or-int/2addr v1, v8

    .line 1449
    goto :goto_0

    .line 1451
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->A()V

    .line 1454
    :try_start_0
    iget-object v7, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;

    if-eqz v7, :cond_2

    .line 1455
    iget-object v7, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;

    invoke-virtual {v7, p1}, Ljavax/jmdns/impl/b;->a(Ljavax/jmdns/impl/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->B()V

    .line 1468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1469
    .local v4, "now":J
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->j()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 1470
    .restart local v0    # "answer":Ljavax/jmdns/impl/g;
    invoke-virtual {p0, v0, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/g;J)V

    goto :goto_2

    .line 1457
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    .end local v4    # "now":J
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->a()Ljavax/jmdns/impl/b;

    move-result-object v6

    .line 1458
    .local v6, "plannedAnswer":Ljavax/jmdns/impl/b;
    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->r()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1459
    iput-object v6, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;

    .line 1461
    :cond_3
    invoke-virtual {p0, v6, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1465
    .end local v6    # "plannedAnswer":Ljavax/jmdns/impl/b;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->B()V

    throw v7

    .line 1473
    .restart local v4    # "now":J
    :cond_4
    if-eqz v1, :cond_5

    .line 1474
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->l()V

    .line 1476
    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 18
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1094
    const/4 v13, 0x0

    .line 1095
    .local v13, "typeAdded":Z
    invoke-static/range {p1 .. p1}, Ljavax/jmdns/impl/m;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 1096
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v14, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1097
    .local v3, "domain":Ljava/lang/String;
    sget-object v14, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1098
    .local v9, "protocol":Ljava/lang/String;
    sget-object v14, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1099
    .local v2, "application":Ljava/lang/String;
    sget-object v14, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1101
    .local v11, "subtype":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_0
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1102
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1103
    .local v6, "loname":Ljava/lang/String;
    sget-object v14, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1104
    sget-object v15, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ".registering service type: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " as: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " subtype: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1106
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14, v6}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "dns-sd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "in-addr.arpa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ip6.arpa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    new-instance v15, Ljavax/jmdns/impl/JmDNSImpl$b;

    invoke-direct {v15, v8}, Ljavax/jmdns/impl/JmDNSImpl$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v6, v15}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    const/4 v13, 0x1

    .line 1108
    :goto_3
    if-eqz v13, :cond_5

    .line 1109
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v15

    new-array v15, v15, [Ljavax/jmdns/impl/k$b;

    invoke-interface {v14, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavax/jmdns/impl/k$b;

    .line 1110
    .local v5, "list":[Ljavax/jmdns/impl/k$b;
    new-instance v4, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v14, v15}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1111
    .local v4, "event":Ljavax/jmdns/ServiceEvent;
    array-length v15, v5

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_5

    aget-object v10, v5, v14

    .line 1112
    .local v10, "status":Ljavax/jmdns/impl/k$b;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v16, v0

    new-instance v17, Ljavax/jmdns/impl/JmDNSImpl$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v4}, Ljavax/jmdns/impl/JmDNSImpl$2;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/k$b;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1111
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1101
    .end local v4    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v5    # "list":[Ljavax/jmdns/impl/k$b;
    .end local v6    # "loname":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "status":Ljavax/jmdns/impl/k$b;
    :cond_1
    const-string v14, ""

    goto/16 :goto_0

    :cond_2
    const-string v14, ""

    goto/16 :goto_1

    .line 1104
    .restart local v6    # "loname":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_3
    const-string v14, ""

    goto/16 :goto_2

    .line 1107
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 1122
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 1123
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/jmdns/impl/JmDNSImpl$b;

    .line 1124
    .local v12, "subtypes":Ljavax/jmdns/impl/JmDNSImpl$b;
    if-eqz v12, :cond_7

    invoke-virtual {v12, v11}, Ljavax/jmdns/impl/JmDNSImpl$b;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1125
    monitor-enter v12

    .line 1126
    :try_start_0
    invoke-virtual {v12, v11}, Ljavax/jmdns/impl/JmDNSImpl$b;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1127
    const/4 v13, 0x1

    .line 1128
    invoke-virtual {v12, v11}, Ljavax/jmdns/impl/JmDNSImpl$b;->b(Ljava/lang/String;)Z

    .line 1129
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/jmdns/impl/JmDNSImpl;->h:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v15

    new-array v15, v15, [Ljavax/jmdns/impl/k$b;

    invoke-interface {v14, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavax/jmdns/impl/k$b;

    .line 1130
    .restart local v5    # "list":[Ljavax/jmdns/impl/k$b;
    new-instance v4, Ljavax/jmdns/impl/ServiceEventImpl;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "._sub."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v14, v15, v1}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1131
    .restart local v4    # "event":Ljavax/jmdns/ServiceEvent;
    array-length v15, v5

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v15, :cond_6

    aget-object v10, v5, v14

    .line 1132
    .restart local v10    # "status":Ljavax/jmdns/impl/k$b;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v16, v0

    new-instance v17, Ljavax/jmdns/impl/JmDNSImpl$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v4}, Ljavax/jmdns/impl/JmDNSImpl$3;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/k$b;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1131
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1141
    .end local v4    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v5    # "list":[Ljavax/jmdns/impl/k$b;
    .end local v10    # "status":Ljavax/jmdns/impl/k$b;
    :cond_6
    monitor-exit v12

    .line 1144
    .end local v12    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$b;
    :cond_7
    return v13

    .line 1141
    .restart local v12    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$b;
    :catchall_0
    move-exception v14

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljavax/jmdns/impl/b;)V
    .locals 0
    .param p1, "plannedAnswer"    # Ljavax/jmdns/impl/b;

    .prologue
    .line 2201
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->t:Ljavax/jmdns/impl/b;

    .line 2202
    return-void
.end method

.method public c(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1920
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->cancelState()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1808
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    :goto_0
    return-void

    .line 1812
    :cond_0
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1813
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling JmDNS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1817
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1821
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v1, "Canceling the timer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->j()V

    .line 1825
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->f()V

    .line 1826
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->H()V

    .line 1828
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1829
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for JmDNS cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1831
    :cond_2
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1834
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v1, "Canceling the state timer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->k()V

    .line 1838
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1841
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->G()V

    .line 1844
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 1845
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->b:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 1850
    :cond_3
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->c(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1852
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1853
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v1, "JmDNS closed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1856
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->advanceState(Ljavax/jmdns/impl/a/a;)Z

    goto/16 :goto_0
.end method

.method public closeState()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->closeState()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/Map;
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
    .line 1965
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->e:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 6

    .prologue
    .line 1061
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v3, "unregisterAllServices()"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1065
    :cond_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1066
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/m;

    .line 1067
    .local v0, "info":Ljavax/jmdns/impl/m;
    if-eqz v0, :cond_1

    .line 1068
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1069
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling service info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1071
    :cond_2
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->cancelState()Z

    goto :goto_0

    .line 1074
    .end local v0    # "info":Ljavax/jmdns/impl/m;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->o()V

    .line 1076
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1077
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/m;

    .line 1078
    .restart local v0    # "info":Ljavax/jmdns/impl/m;
    if-eqz v0, :cond_4

    .line 1079
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1080
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait for service info cancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1082
    :cond_5
    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5}, Ljavax/jmdns/impl/m;->waitForCanceled(J)Z

    .line 1083
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1087
    .end local v0    # "info":Ljavax/jmdns/impl/m;
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public g()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1865
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 0

    .prologue
    .line 566
    return-object p0
.end method

.method public h()Ljavax/jmdns/a$a;
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->l:Ljavax/jmdns/a$a;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1572
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->i()V

    .line 1573
    return-void
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 590
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i;->isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->isProbing()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 1581
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->j()V

    .line 1582
    return-void
.end method

.method public j_()V
    .locals 2

    .prologue
    .line 1563
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->j_()V

    .line 1564
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 1590
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->k()V

    .line 1591
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 1599
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->l()V

    .line 1600
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1608
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->m()V

    .line 1609
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 1617
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->n()V

    .line 1618
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1626
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->o()V

    .line 1627
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 1635
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->p()V

    .line 1636
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 1653
    invoke-static {}, Ljavax/jmdns/impl/h$b;->b()Ljavax/jmdns/impl/h$b;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/h$b;->b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/h;->q()V

    .line 1654
    return-void
.end method

.method public r()Ljavax/jmdns/impl/DNSCache;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->i:Ljavax/jmdns/impl/DNSCache;

    return-object v0
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 582
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/i;->removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V

    .line 583
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0}, Ljavax/jmdns/impl/i;->revertState()Z

    move-result v0

    return v0
.end method

.method public s()Ljavax/jmdns/impl/i;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    return-object v0
.end method

.method public t()V
    .locals 5

    .prologue
    .line 1697
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recover()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1706
    :cond_1
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 1709
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1710
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recover() thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1711
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".recover()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl$6;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    .line 1720
    .local v0, "recover":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1722
    .end local v0    # "recover":Ljava/lang/Thread;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1874
    .local v0, "aLog":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    const-string v3, "\t---- Local Host -----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1878
    const-string v3, "\n\t---- Services -----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1880
    .local v1, "key":Ljava/lang/String;
    const-string v4, "\n\t\tService: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1885
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    const-string v3, "\t---- Types ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1888
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$b;

    .line 1889
    .local v2, "subtypes":Ljavax/jmdns/impl/JmDNSImpl$b;
    const-string v4, "\n\t\tType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl$b;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "no subtypes"

    .end local v2    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$b;
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1894
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->i:Ljavax/jmdns/impl/DNSCache;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSCache;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    const-string v3, "\t---- Service Collectors ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1899
    .restart local v1    # "key":Ljava/lang/String;
    const-string v4, "\n\t\tService Collector: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1904
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    const-string v3, "\t---- Service Listeners ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1907
    .restart local v1    # "key":Ljava/lang/String;
    const-string v4, "\n\t\tService Listener: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1912
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method u()V
    .locals 7

    .prologue
    .line 1728
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1729
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recover() Cleanning up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1732
    :cond_0
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    const-string v4, "RECOVERING"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->j_()V

    .line 1737
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1740
    .local v2, "oldServiceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/ServiceInfo;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->f()V

    .line 1741
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->H()V

    .line 1743
    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1746
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->i()V

    .line 1750
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->G()V

    .line 1753
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 1754
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1755
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recover() All is clean"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1758
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1762
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 1763
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    check-cast v1, Ljavax/jmdns/impl/m;

    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->recoverState()Z

    goto :goto_0

    .line 1765
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->recoverState()Z

    .line 1768
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->b(Ljavax/jmdns/impl/i;)V

    .line 1769
    invoke-direct {p0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    :goto_1
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recover() We are back!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1782
    :cond_3
    :goto_2
    return-void

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recover() Start services exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1776
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_4
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recover() Could not recover we are Down!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->h()Ljavax/jmdns/a$a;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1778
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->h()Ljavax/jmdns/a$a;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljavax/jmdns/a$a;->a(Ljavax/jmdns/a;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public v()V
    .locals 12

    .prologue
    .line 1785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1786
    .local v4, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/a;

    .line 1788
    .local v2, "entry":Ljavax/jmdns/impl/a;
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljavax/jmdns/impl/g;

    move-object v6, v0

    .line 1789
    .local v6, "record":Ljavax/jmdns/impl/g;
    invoke-virtual {v6, v4, v5}, Ljavax/jmdns/impl/g;->b(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1790
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {p0, v4, v5, v6, v8}, Ljavax/jmdns/impl/JmDNSImpl;->a(JLjavax/jmdns/impl/g;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    .line 1791
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1796
    .end local v6    # "record":Ljavax/jmdns/impl/g;
    :catch_0
    move-exception v3

    .line 1797
    .local v3, "exception":Ljava/lang/Exception;
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Error while reaping records: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1798
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->c:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 1792
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v6    # "record":Ljavax/jmdns/impl/g;
    :cond_1
    :try_start_1
    invoke-virtual {v6, v4, v5}, Ljavax/jmdns/impl/g;->a(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1794
    invoke-virtual {p0, v6}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1801
    .end local v2    # "entry":Ljavax/jmdns/impl/a;
    .end local v6    # "record":Ljavax/jmdns/impl/g;
    :cond_2
    return-void
.end method

.method public w()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2169
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->j:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 654
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 662
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->m:Ljavax/jmdns/impl/i;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/i;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 2177
    iget-wide v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->p:J

    return-wide v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 2185
    iget v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->o:I

    return v0
.end method
