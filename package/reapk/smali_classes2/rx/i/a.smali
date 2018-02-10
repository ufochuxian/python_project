.class public final Lrx/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# static fields
.field static final b:Lrx/c/b;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lrx/i/a$1;

    invoke-direct {v0}, Lrx/i/a$1;-><init>()V

    sput-object v0, Lrx/i/a;->b:Lrx/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/i/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Lrx/c/b;)V
    .locals 1
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/i/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static a()Lrx/i/a;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lrx/i/a;

    invoke-direct {v0}, Lrx/i/a;-><init>()V

    return-object v0
.end method

.method public static a(Lrx/c/b;)Lrx/i/a;
    .locals 1
    .param p0, "onUnsubscribe"    # Lrx/c/b;

    .prologue
    .line 57
    new-instance v0, Lrx/i/a;

    invoke-direct {v0, p0}, Lrx/i/a;-><init>(Lrx/c/b;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lrx/i/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/i/a;->b:Lrx/c/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lrx/i/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/b;

    .line 68
    .local v0, "action":Lrx/c/b;
    sget-object v1, Lrx/i/a;->b:Lrx/c/b;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lrx/i/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/i/a;->b:Lrx/c/b;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "action":Lrx/c/b;
    check-cast v0, Lrx/c/b;

    .line 70
    .restart local v0    # "action":Lrx/c/b;
    if-eqz v0, :cond_0

    sget-object v1, Lrx/i/a;->b:Lrx/c/b;

    if-eq v0, v1, :cond_0

    .line 71
    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 74
    :cond_0
    return-void
.end method
