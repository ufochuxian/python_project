.class public final Lcom/squareup/okhttp/internal/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a;

.field private final b:Lcom/squareup/okhttp/internal/a$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/a;
    .param p2, "entry"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    .line 835
    invoke-static {p2}, Lcom/squareup/okhttp/internal/a$b;->f(Lcom/squareup/okhttp/internal/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->c:[Z

    .line 836
    return-void

    .line 835
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/a$b;
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/a$1;

    .prologue
    .line 827
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/a$a;-><init>(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$b;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$a;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$a;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$a;
    .param p1, "x1"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/a$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/a$a;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$a;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Lokio/x;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 843
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v2

    .line 844
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 845
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 847
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a$b;->f(Lcom/squareup/okhttp/internal/a$b;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 848
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :goto_0
    return-object v1

    .line 851
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a;->h(Lcom/squareup/okhttp/internal/a;)Lcom/squareup/okhttp/internal/c/a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/a$b;->c(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;)Lokio/x;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v1

    .line 896
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a$a;->d:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$a;Z)V

    .line 898
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;)Z

    .line 902
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/a$a;->e:Z

    .line 903
    monitor-exit v1

    .line 904
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$a;Z)V

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Lokio/w;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v4

    .line 867
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 868
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 887
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 870
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a$b;->f(Lcom/squareup/okhttp/internal/a$b;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 871
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->c:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, p1

    .line 873
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->b:Lcom/squareup/okhttp/internal/a$b;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a$b;->d(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v3

    aget-object v0, v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a;->h(Lcom/squareup/okhttp/internal/a;)Lcom/squareup/okhttp/internal/c/a;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/internal/c/a;->b(Ljava/io/File;)Lokio/w;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 880
    .local v2, "sink":Lokio/w;
    :try_start_3
    new-instance v3, Lcom/squareup/okhttp/internal/a$a$1;

    invoke-direct {v3, p0, v2}, Lcom/squareup/okhttp/internal/a$a$1;-><init>(Lcom/squareup/okhttp/internal/a$a;Lokio/w;)V

    monitor-exit v4

    .end local v2    # "sink":Lokio/w;
    :goto_0
    return-object v3

    .line 877
    :catch_0
    move-exception v1

    .line 878
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/squareup/okhttp/internal/a;->j()Lokio/w;

    move-result-object v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$a;Z)V

    .line 913
    monitor-exit v1

    .line 914
    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v1

    .line 918
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a$a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 920
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$a;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 921
    :catch_0
    move-exception v0

    goto :goto_0
.end method
