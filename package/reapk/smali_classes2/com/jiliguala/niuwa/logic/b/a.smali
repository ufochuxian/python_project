.class public Lcom/jiliguala/niuwa/logic/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/jiliguala/niuwa/logic/b/a;


# instance fields
.field private final b:Lrx/h/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lrx/h/e;

    invoke-static {}, Lrx/h/c;->K()Lrx/h/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/h/e;-><init>(Lrx/h/f;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a;->b:Lrx/h/f;

    .line 19
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/b/a;
    .locals 4

    .prologue
    .line 23
    sget-object v0, Lcom/jiliguala/niuwa/logic/b/a;->a:Lcom/jiliguala/niuwa/logic/b/a;

    .line 24
    .local v0, "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    sget-object v2, Lcom/jiliguala/niuwa/logic/b/a;->a:Lcom/jiliguala/niuwa/logic/b/a;

    if-nez v2, :cond_1

    .line 25
    const-class v3, Lcom/jiliguala/niuwa/logic/b/a;

    monitor-enter v3

    .line 26
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/b/a;->a:Lcom/jiliguala/niuwa/logic/b/a;

    .line 27
    sget-object v2, Lcom/jiliguala/niuwa/logic/b/a;->a:Lcom/jiliguala/niuwa/logic/b/a;

    if-nez v2, :cond_0

    .line 28
    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/b/a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v0    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    .local v1, "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    :try_start_1
    sput-object v1, Lcom/jiliguala/niuwa/logic/b/a;->a:Lcom/jiliguala/niuwa/logic/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 31
    .end local v1    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    .restart local v0    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 33
    :cond_1
    return-object v0

    .line 31
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    .restart local v1    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    .restart local v0    # "rxBus":Lcom/jiliguala/niuwa/logic/b/a;
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a;->b:Lrx/h/f;

    invoke-virtual {v0, p1}, Lrx/h/f;->b(Ljava/lang/Class;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a;->b:Lrx/h/f;

    invoke-virtual {v0, p1}, Lrx/h/f;->onNext(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
