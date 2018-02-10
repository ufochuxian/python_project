.class public final Lcom/bumptech/glide/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/a/a;

.field private final b:Lcom/bumptech/glide/a/a$b;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;)V
    .locals 1
    .param p2, "entry"    # Lcom/bumptech/glide/a/a$b;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    .line 712
    invoke-static {p2}, Lcom/bumptech/glide/a/a$b;->d(Lcom/bumptech/glide/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/a/a$a;->c:[Z

    .line 713
    return-void

    .line 712
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/a/a;->e(Lcom/bumptech/glide/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;Lcom/bumptech/glide/a/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/a/a;
    .param p2, "x1"    # Lcom/bumptech/glide/a/a$b;
    .param p3, "x2"    # Lcom/bumptech/glide/a/a$1;

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/a/a$a;-><init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/a/a$a;)Lcom/bumptech/glide/a/a$b;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/a/a$a;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/a/a$a;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/a/a$a;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->c:[Z

    return-object v0
.end method

.method private c(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v3, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    monitor-enter v3

    .line 721
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-static {v2}, Lcom/bumptech/glide/a/a$b;->a(Lcom/bumptech/glide/a/a$b;)Lcom/bumptech/glide/a/a$a;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 722
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 732
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 724
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-static {v2}, Lcom/bumptech/glide/a/a$b;->d(Lcom/bumptech/glide/a/a$b;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 725
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :goto_0
    return-object v1

    .line 728
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/a/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/bumptech/glide/a/a$a;->c(I)Ljava/io/InputStream;

    move-result-object v0

    .line 741
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 781
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$a;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/bumptech/glide/a/a$a;->d:Z

    .line 783
    return-void
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
    .line 762
    const/4 v1, 0x0

    .line 764
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a/a$a;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 765
    .local v0, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/bumptech/glide/a/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    .end local v1    # "writer":Ljava/io/Writer;
    .local v2, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    invoke-static {v2}, Lcom/bumptech/glide/a/c;->a(Ljava/io/Closeable;)V

    .line 770
    return-void

    .line 768
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v1}, Lcom/bumptech/glide/a/c;->a(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "os":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method

.method public b(I)Ljava/io/File;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v2, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-static {v1}, Lcom/bumptech/glide/a/a$b;->a(Lcom/bumptech/glide/a/a$b;)Lcom/bumptech/glide/a/a$a;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 747
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 749
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-static {v1}, Lcom/bumptech/glide/a/a$b;->d(Lcom/bumptech/glide/a/a$b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->c:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, p1

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/a/a$b;->b(I)Ljava/io/File;

    move-result-object v0

    .line 753
    .local v0, "dirtyFile":Ljava/io/File;
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v1}, Lcom/bumptech/glide/a/a;->f(Lcom/bumptech/glide/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v1}, Lcom/bumptech/glide/a/a;->f(Lcom/bumptech/glide/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 756
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$a;Z)V

    .line 791
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/bumptech/glide/a/a$a;->d:Z

    if-nez v0, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/a/a$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    goto :goto_0
.end method
