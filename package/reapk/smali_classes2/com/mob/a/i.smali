.class public Lcom/mob/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mob/tools/c/n;


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 30
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_ext_info"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(J)V
    .locals 4

    .prologue
    .line 44
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 45
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "wifi_last_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 35
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_ext_info"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()J
    .locals 4

    .prologue
    .line 39
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 40
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "wifi_last_time"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->d(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(J)V
    .locals 4

    .prologue
    .line 74
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 75
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_cellinfo_next_total"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v1

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 55
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "wifi_last_info"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v1

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 50
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "wifi_last_info"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 60
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_cellinfo"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 65
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_cellinfo"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 80
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_switches"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v1

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 85
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_switches"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 90
    if-nez p0, :cond_0

    .line 91
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_data_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_data_url"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 99
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_data_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 104
    if-nez p0, :cond_0

    .line 105
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_conf_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit v1

    return-void

    .line 107
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_conf_url"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->h()V

    .line 113
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "key_conf_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized h()V
    .locals 4

    .prologue
    .line 22
    const-class v1, Lcom/mob/a/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/mob/tools/c/n;

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mob/tools/c/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    .line 24
    sget-object v0, Lcom/mob/a/i;->a:Lcom/mob/tools/c/n;

    const-string v2, "mob_commons"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
