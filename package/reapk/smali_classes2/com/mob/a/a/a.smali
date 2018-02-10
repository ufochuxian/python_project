.class public final Lcom/mob/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/mob/a/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    const-class v1, Lcom/mob/a/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mob/a/c;->a(Lcom/mob/a/b;)V

    .line 12
    new-instance v0, Lcom/mob/a/a/b;

    invoke-direct {v0}, Lcom/mob/a/a/b;-><init>()V

    .line 13
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mob/a/e;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v0, p0}, Lcom/mob/a/a/b;->a(Lcom/mob/a/b;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 16
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/mob/a/a/b;->a(Z)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
