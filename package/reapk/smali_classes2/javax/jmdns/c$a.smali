.class public final Ljavax/jmdns/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/c$a$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljavax/jmdns/c;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavax/jmdns/c$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/c$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static a()Ljavax/jmdns/c$a$a;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Ljavax/jmdns/c$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/c$a$a;

    return-object v0
.end method

.method public static a(Ljavax/jmdns/c$a$a;)V
    .locals 1
    .param p0, "delegate"    # Ljavax/jmdns/c$a$a;

    .prologue
    .line 89
    sget-object v0, Ljavax/jmdns/c$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected static b()Ljavax/jmdns/c;
    .locals 3

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "instance":Ljavax/jmdns/c;
    sget-object v2, Ljavax/jmdns/c$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/c$a$a;

    .line 111
    .local v0, "delegate":Ljavax/jmdns/c$a$a;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Ljavax/jmdns/c$a$a;->a()Ljavax/jmdns/c;

    move-result-object v1

    .line 114
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "instance":Ljavax/jmdns/c;
    :goto_0
    return-object v1

    .restart local v1    # "instance":Ljavax/jmdns/c;
    :cond_1
    new-instance v1, Ljavax/jmdns/impl/l;

    .end local v1    # "instance":Ljavax/jmdns/c;
    invoke-direct {v1}, Ljavax/jmdns/impl/l;-><init>()V

    goto :goto_0
.end method

.method public static c()Ljavax/jmdns/c;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Ljavax/jmdns/c$a;->a:Ljavax/jmdns/c;

    if-nez v0, :cond_1

    .line 124
    const-class v1, Ljavax/jmdns/c$a;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Ljavax/jmdns/c$a;->a:Ljavax/jmdns/c;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Ljavax/jmdns/c$a;->b()Ljavax/jmdns/c;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/c$a;->a:Ljavax/jmdns/c;

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    sget-object v0, Ljavax/jmdns/c$a;->a:Ljavax/jmdns/c;

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
