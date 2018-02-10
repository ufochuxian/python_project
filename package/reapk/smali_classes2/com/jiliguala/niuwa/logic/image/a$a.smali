.class public final Lcom/jiliguala/niuwa/logic/image/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/image/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/image/a;

.field private final b:Lcom/jiliguala/niuwa/logic/image/a$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p2, "entry"    # Lcom/jiliguala/niuwa/logic/image/a$b;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 730
    invoke-static {p2}, Lcom/jiliguala/niuwa/logic/image/a$b;->d(Lcom/jiliguala/niuwa/logic/image/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->c:[Z

    .line 731
    return-void

    .line 730
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/image/a;->e(Lcom/jiliguala/niuwa/logic/image/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/image/a$b;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/logic/image/a$1;

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/image/a$a;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a$a;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a$a;
    .param p1, "x1"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/image/a$a;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a$a;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->c:[Z

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

    .line 738
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    monitor-enter v3

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 740
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 742
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->d(Lcom/jiliguala/niuwa/logic/image/a$b;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 743
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :goto_0
    return-object v1

    .line 746
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-virtual {v4, p1}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
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

    .line 815
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->d:Z

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$a;Z)V

    .line 817
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/image/a$b;->c(Lcom/jiliguala/niuwa/logic/image/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/image/a;->c(Ljava/lang/String;)Z

    .line 822
    :goto_0
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->e:Z

    .line 823
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v0, p0, v2}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$a;Z)V

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
    .line 801
    const/4 v0, 0x0

    .line 803
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/a$a;->c(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/logic/image/e;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 806
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Closeable;)V

    .line 808
    return-void

    .line 806
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Closeable;)V

    .line 807
    throw v2

    .line 806
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
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
    .line 758
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/a$a;->a(I)Ljava/io/InputStream;

    move-result-object v0

    .line 759
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

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
    .line 830
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$a;Z)V

    .line 831
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
    .line 768
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/image/a;->e(Lcom/jiliguala/niuwa/logic/image/a;)I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 769
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    .line 770
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/image/a;->e(Lcom/jiliguala/niuwa/logic/image/a;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 772
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    monitor-enter v5

    .line 773
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v4

    if-eq v4, p0, :cond_2

    .line 774
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 794
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 776
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/image/a$b;->d(Lcom/jiliguala/niuwa/logic/image/a$b;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 777
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->c:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 779
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->b:Lcom/jiliguala/niuwa/logic/image/a$b;

    invoke-virtual {v4, p1}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 782
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 793
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/jiliguala/niuwa/logic/image/a$a$a;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/jiliguala/niuwa/logic/image/a$a$a;-><init>(Lcom/jiliguala/niuwa/logic/image/a$a;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/logic/image/a$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 783
    :catch_0
    move-exception v1

    .line 785
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/image/a;->f(Lcom/jiliguala/niuwa/logic/image/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 788
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 790
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/jiliguala/niuwa/logic/image/a;->g()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/image/a$a;->e:Z

    if-nez v0, :cond_0

    .line 836
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    goto :goto_0
.end method
