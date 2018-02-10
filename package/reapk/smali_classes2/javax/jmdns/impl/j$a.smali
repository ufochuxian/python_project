.class Ljavax/jmdns/impl/j$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljavax/jmdns/d;

.field private final c:Ljavax/jmdns/c;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 738
    const-class v0, Ljavax/jmdns/impl/j$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/j$a;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/d;Ljavax/jmdns/c;)V
    .locals 1
    .param p1, "mmDNS"    # Ljavax/jmdns/d;
    .param p2, "topology"    # Ljavax/jmdns/c;

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 748
    iput-object p1, p0, Ljavax/jmdns/impl/j$a;->b:Ljavax/jmdns/d;

    .line 749
    iput-object p2, p0, Ljavax/jmdns/impl/j$a;->c:Ljavax/jmdns/c;

    .line 750
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/j$a;->d:Ljava/util/Set;

    .line 751
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Timer;)V
    .locals 6
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    const-wide/16 v2, 0x2710

    .line 755
    invoke-virtual {p0}, Ljavax/jmdns/impl/j$a;->run()V

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 756
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 757
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 765
    :try_start_0
    iget-object v5, p0, Ljavax/jmdns/impl/j$a;->c:Ljavax/jmdns/c;

    invoke-interface {v5}, Ljavax/jmdns/c;->a()[Ljava/net/InetAddress;

    move-result-object v1

    .line 766
    .local v1, "curentAddresses":[Ljava/net/InetAddress;
    new-instance v2, Ljava/util/HashSet;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 767
    .local v2, "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 768
    .local v0, "address":Ljava/net/InetAddress;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v7, p0, Ljavax/jmdns/impl/j$a;->d:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 770
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v7, p0, Ljavax/jmdns/impl/j$a;->b:Ljavax/jmdns/d;

    invoke-direct {v4, v7, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/d;Ljava/net/InetAddress;)V

    .line 771
    .local v4, "event":Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v7, p0, Ljavax/jmdns/impl/j$a;->b:Ljavax/jmdns/d;

    invoke-interface {v7, v4}, Ljavax/jmdns/d;->a(Ljavax/jmdns/NetworkTopologyEvent;)V

    .line 767
    .end local v4    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 774
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    iget-object v5, p0, Ljavax/jmdns/impl/j$a;->d:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 775
    .restart local v0    # "address":Ljava/net/InetAddress;
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 776
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v6, p0, Ljavax/jmdns/impl/j$a;->b:Ljavax/jmdns/d;

    invoke-direct {v4, v6, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/d;Ljava/net/InetAddress;)V

    .line 777
    .restart local v4    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v6, p0, Ljavax/jmdns/impl/j$a;->b:Ljavax/jmdns/d;

    invoke-interface {v6, v4}, Ljavax/jmdns/d;->b(Ljavax/jmdns/NetworkTopologyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 781
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "curentAddresses":[Ljava/net/InetAddress;
    .end local v2    # "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    .end local v4    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    :catch_0
    move-exception v3

    .line 782
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Ljavax/jmdns/impl/j$a;->a:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected unhandled exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 784
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 780
    .restart local v1    # "curentAddresses":[Ljava/net/InetAddress;
    .restart local v2    # "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    :cond_3
    :try_start_1
    iput-object v2, p0, Ljavax/jmdns/impl/j$a;->d:Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
