.class public final Lrx/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/i/d$a;,
        Lrx/i/d$b;
    }
.end annotation


# static fields
.field static final a:Lrx/i/d$b;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/i/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lrx/i/d$b;

    invoke-direct {v0, v1, v1}, Lrx/i/d$b;-><init>(ZI)V

    sput-object v0, Lrx/i/d;->a:Lrx/i/d$b;

    return-void
.end method

.method public constructor <init>(Lrx/m;)V
    .locals 2
    .param p1, "s"    # Lrx/m;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/i/d;->a:Lrx/i/d$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/i/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lrx/i/d;->c:Lrx/m;

    .line 68
    return-void
.end method

.method private a(Lrx/i/d$b;)V
    .locals 1
    .param p1, "state"    # Lrx/i/d$b;

    .prologue
    .line 112
    iget-boolean v0, p1, Lrx/i/d$b;->a:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lrx/i/d$b;->b:I

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lrx/i/d;->c:Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lrx/m;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lrx/i/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/i/d$b;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/i/d$b;

    .line 81
    .local v2, "oldState":Lrx/i/d$b;
    iget-boolean v3, v2, Lrx/i/d$b;->a:Z

    if-eqz v3, :cond_1

    .line 82
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v3

    .line 88
    :goto_0
    return-object v3

    .line 84
    :cond_1
    invoke-virtual {v2}, Lrx/i/d$b;->a()Lrx/i/d$b;

    move-result-object v1

    .line 86
    .local v1, "newState":Lrx/i/d$b;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    new-instance v3, Lrx/i/d$a;

    invoke-direct {v3, p0}, Lrx/i/d$a;-><init>(Lrx/i/d;)V

    goto :goto_0
.end method

.method b()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lrx/i/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/i/d$b;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/i/d$b;

    .line 122
    .local v2, "oldState":Lrx/i/d$b;
    invoke-virtual {v2}, Lrx/i/d$b;->b()Lrx/i/d$b;

    move-result-object v1

    .line 123
    .local v1, "newState":Lrx/i/d$b;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-direct {p0, v1}, Lrx/i/d;->a(Lrx/i/d$b;)V

    .line 125
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lrx/i/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/d$b;

    iget-boolean v0, v0, Lrx/i/d$b;->a:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lrx/i/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/i/d$b;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/i/d$b;

    .line 103
    .local v2, "oldState":Lrx/i/d$b;
    iget-boolean v3, v2, Lrx/i/d$b;->a:Z

    if-eqz v3, :cond_1

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v2}, Lrx/i/d$b;->c()Lrx/i/d$b;

    move-result-object v1

    .line 107
    .local v1, "newState":Lrx/i/d$b;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-direct {p0, v1}, Lrx/i/d;->a(Lrx/i/d$b;)V

    goto :goto_0
.end method
