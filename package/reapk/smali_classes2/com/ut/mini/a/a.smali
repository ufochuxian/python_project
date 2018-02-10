.class public Lcom/ut/mini/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ut/mini/a/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/ut/mini/e/a;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/ut/mini/a/a;

    invoke-direct {v0}, Lcom/ut/mini/a/a;-><init>()V

    sput-object v0, Lcom/ut/mini/a/a;->a:Lcom/ut/mini/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/ut/mini/a/a;->b:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ut/mini/a/a;->c:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ut/mini/a/a;->d:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ut/mini/a/a;->e:Lcom/ut/mini/e/a;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/a/a;->f:Z

    return-void
.end method

.method public static d()Lcom/ut/mini/a/a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ut/mini/a/a;->a:Lcom/ut/mini/a/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 15
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/a/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ut/mini/e/a;)V
    .locals 1
    .param p1, "aInstance"    # Lcom/ut/mini/e/a;

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ut/mini/a/a;->e:Lcom/ut/mini/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "aH5Url"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ut/mini/a/a;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "aRefPage"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ut/mini/a/a;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ut/mini/a/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/ut/mini/e/a;
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/a/a;->e:Lcom/ut/mini/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "aH5PrePage"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ut/mini/a/a;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ut/mini/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ut/mini/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ut/mini/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
