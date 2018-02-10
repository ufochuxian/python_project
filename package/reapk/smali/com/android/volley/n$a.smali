.class Lcom/android/volley/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/n$a$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final b:J


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/n$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/volley/n;->b:Z

    sput-boolean v0, Lcom/android/volley/n$a;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/n$a;->d:Z

    return-void
.end method

.method private a()J
    .locals 6

    .prologue
    .line 165
    iget-object v4, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 166
    const-wide/16 v4, 0x0

    .line 171
    :goto_0
    return-wide v4

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/n$a$a;

    iget-wide v0, v4, Lcom/android/volley/n$a$a;->c:J

    .line 170
    .local v0, "first":J
    iget-object v4, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/n$a$a;

    iget-wide v2, v4, Lcom/android/volley/n$a$a;->c:J

    .line 171
    .local v2, "last":J
    sub-long v4, v2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 14
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 135
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/volley/n$a;->d:Z

    .line 137
    invoke-direct {p0}, Lcom/android/volley/n$a;->a()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 138
    .local v0, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_1

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/n$a$a;

    iget-wide v4, v3, Lcom/android/volley/n$a$a;->c:J

    .line 143
    .local v4, "prevTime":J
    const-string v3, "(%-4d ms) %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v3, v8}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v3, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/n$a$a;

    .line 145
    .local v2, "marker":Lcom/android/volley/n$a$a;
    iget-wide v6, v2, Lcom/android/volley/n$a$a;->c:J

    .line 146
    .local v6, "thisTime":J
    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v12, v2, Lcom/android/volley/n$a$a;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v2, Lcom/android/volley/n$a$a;->a:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    move-wide v4, v6

    .line 148
    goto :goto_0

    .line 135
    .end local v0    # "duration":J
    .end local v2    # "marker":Lcom/android/volley/n$a$a;
    .end local v4    # "prevTime":J
    .end local v6    # "thisTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadId"    # J

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/n$a;->d:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Marker added to finished log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/volley/n$a;->c:Ljava/util/List;

    new-instance v0, Lcom/android/volley/n$a$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/n$a$a;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/volley/n$a;->d:Z

    if-nez v0, :cond_0

    .line 156
    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/android/volley/n$a;->a(Ljava/lang/String;)V

    .line 157
    const-string v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/n;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    return-void
.end method
