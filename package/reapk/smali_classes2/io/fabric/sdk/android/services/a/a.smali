.class public abstract Lio/fabric/sdk/android/services/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lio/fabric/sdk/android/services/a/a;, "Lio/fabric/sdk/android/services/a/a<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/a/a;-><init>(Lio/fabric/sdk/android/services/a/c;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/a/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lio/fabric/sdk/android/services/a/a;, "Lio/fabric/sdk/android/services/a/a<TT;>;"
    .local p1, "childCache":Lio/fabric/sdk/android/services/a/c;, "Lio/fabric/sdk/android/services/a/c<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/a/a;->a:Lio/fabric/sdk/android/services/a/c;

    .line 32
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lio/fabric/sdk/android/services/a/a;, "Lio/fabric/sdk/android/services/a/a<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/services/a/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/a/d",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lio/fabric/sdk/android/services/a/a;, "Lio/fabric/sdk/android/services/a/a<TT;>;"
    .local p2, "loader":Lio/fabric/sdk/android/services/a/d;, "Lio/fabric/sdk/android/services/a/d<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/a/a;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 39
    iget-object v1, p0, Lio/fabric/sdk/android/services/a/a;->a:Lio/fabric/sdk/android/services/a/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/fabric/sdk/android/services/a/a;->a:Lio/fabric/sdk/android/services/a/c;

    invoke-interface {v1, p1, p2}, Lio/fabric/sdk/android/services/a/c;->a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    :goto_0
    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/a/a;->b(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-object v0

    .line 39
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lio/fabric/sdk/android/services/a/d;->load(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 36
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    .local p0, "this":Lio/fabric/sdk/android/services/a/a;, "Lio/fabric/sdk/android/services/a/a<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/a/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected abstract c(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method
