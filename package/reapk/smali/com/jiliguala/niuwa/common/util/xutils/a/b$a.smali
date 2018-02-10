.class public final Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

.field private final b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p2, "entry"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 835
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->c:[Z

    .line 836
    return-void

    .line 835
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;

    .prologue
    .line 827
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .param p1, "x1"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    monitor-enter v3

    .line 848
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 849
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 851
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 852
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    :goto_0
    return-object v1

    .line 855
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-virtual {v4, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
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
    const/4 v2, 0x1

    .line 920
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->d:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)V

    .line 922
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;)Z

    .line 926
    :goto_0
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->e:Z

    .line 927
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v0, p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->c(I)Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 911
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 913
    return-void

    .line 911
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method

.method public a(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 839
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-static {v0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;J)J

    .line 840
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(I)Ljava/io/InputStream;

    move-result-object v0

    .line 868
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)V

    .line 935
    return-void
.end method

.method public c(I)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    monitor-enter v5

    .line 878
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 879
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 899
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 881
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 882
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->c:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 884
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    invoke-virtual {v4, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 887
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 898
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 888
    :catch_0
    move-exception v1

    .line 890
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->f(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 892
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 893
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 895
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->h()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->e:Z

    if-nez v0, :cond_0

    .line 940
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    goto :goto_0
.end method
