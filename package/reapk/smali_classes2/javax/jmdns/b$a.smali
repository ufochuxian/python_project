.class public final Ljavax/jmdns/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/b$a$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljavax/jmdns/b;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavax/jmdns/b$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static a()Ljavax/jmdns/b$a$a;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Ljavax/jmdns/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/b$a$a;

    return-object v0
.end method

.method public static a(Ljavax/jmdns/b$a$a;)V
    .locals 1
    .param p0, "delegate"    # Ljavax/jmdns/b$a$a;

    .prologue
    .line 66
    sget-object v0, Ljavax/jmdns/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected static b()Ljavax/jmdns/b;
    .locals 3

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "dns":Ljavax/jmdns/b;
    sget-object v2, Ljavax/jmdns/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/b$a$a;

    .line 88
    .local v0, "delegate":Ljavax/jmdns/b$a$a;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Ljavax/jmdns/b$a$a;->a()Ljavax/jmdns/b;

    move-result-object v1

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "dns":Ljavax/jmdns/b;
    :goto_0
    return-object v1

    .restart local v1    # "dns":Ljavax/jmdns/b;
    :cond_1
    new-instance v1, Ljavax/jmdns/impl/j;

    .end local v1    # "dns":Ljavax/jmdns/b;
    invoke-direct {v1}, Ljavax/jmdns/impl/j;-><init>()V

    goto :goto_0
.end method

.method public static c()Ljavax/jmdns/b;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Ljavax/jmdns/b$a;->a:Ljavax/jmdns/b;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Ljavax/jmdns/b$a;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Ljavax/jmdns/b$a;->a:Ljavax/jmdns/b;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Ljavax/jmdns/b$a;->b()Ljavax/jmdns/b;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/b$a;->a:Ljavax/jmdns/b;

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    sget-object v0, Ljavax/jmdns/b$a;->a:Ljavax/jmdns/b;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-class v1, Ljavax/jmdns/b$a;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Ljavax/jmdns/b$a;->a:Ljavax/jmdns/b;

    invoke-interface {v0}, Ljavax/jmdns/b;->close()V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Ljavax/jmdns/b$a;->a:Ljavax/jmdns/b;

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
