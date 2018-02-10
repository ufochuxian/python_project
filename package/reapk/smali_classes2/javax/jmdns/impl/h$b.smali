.class public final Ljavax/jmdns/impl/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/h$b$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljavax/jmdns/impl/h$b;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavax/jmdns/impl/h$b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljavax/jmdns/impl/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/h$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/h$b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    return-void
.end method

.method public static a()Ljavax/jmdns/impl/h$b$a;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Ljavax/jmdns/impl/h$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/h$b$a;

    return-object v0
.end method

.method protected static a(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;
    .locals 3
    .param p0, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "instance":Ljavax/jmdns/impl/h;
    sget-object v2, Ljavax/jmdns/impl/h$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/h$b$a;

    .line 99
    .local v0, "delegate":Ljavax/jmdns/impl/h$b$a;
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0}, Ljavax/jmdns/impl/h$b$a;->a(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v1

    .line 102
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "instance":Ljavax/jmdns/impl/h;
    :goto_0
    return-object v1

    .restart local v1    # "instance":Ljavax/jmdns/impl/h;
    :cond_1
    new-instance v1, Ljavax/jmdns/impl/h$a;

    .end local v1    # "instance":Ljavax/jmdns/impl/h;
    invoke-direct {v1, p0}, Ljavax/jmdns/impl/h$a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    goto :goto_0
.end method

.method public static a(Ljavax/jmdns/impl/h$b$a;)V
    .locals 1
    .param p0, "delegate"    # Ljavax/jmdns/impl/h$b$a;

    .prologue
    .line 75
    sget-object v0, Ljavax/jmdns/impl/h$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static b()Ljavax/jmdns/impl/h$b;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Ljavax/jmdns/impl/h$b;->a:Ljavax/jmdns/impl/h$b;

    if-nez v0, :cond_1

    .line 112
    const-class v1, Ljavax/jmdns/impl/h$b;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Ljavax/jmdns/impl/h$b;->a:Ljavax/jmdns/impl/h$b;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljavax/jmdns/impl/h$b;

    invoke-direct {v0}, Ljavax/jmdns/impl/h$b;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/h$b;->a:Ljavax/jmdns/impl/h$b;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    sget-object v0, Ljavax/jmdns/impl/h$b;->a:Ljavax/jmdns/impl/h$b;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;
    .locals 3
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 129
    iget-object v1, p0, Ljavax/jmdns/impl/h$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/h;

    .line 130
    .local v0, "starter":Ljavax/jmdns/impl/h;
    if-nez v0, :cond_0

    .line 131
    iget-object v1, p0, Ljavax/jmdns/impl/h$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljavax/jmdns/impl/h$b;->a(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/h;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Ljavax/jmdns/impl/h$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "starter":Ljavax/jmdns/impl/h;
    check-cast v0, Ljavax/jmdns/impl/h;

    .line 134
    .restart local v0    # "starter":Ljavax/jmdns/impl/h;
    :cond_0
    return-object v0
.end method

.method public c(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 144
    iget-object v0, p0, Ljavax/jmdns/impl/h$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method
