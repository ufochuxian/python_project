.class Lcom/bumptech/glide/load/engine/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/i/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i/f",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/bumptech/glide/i/f;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/bumptech/glide/i/f;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/l;->a:Lcom/bumptech/glide/i/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 19
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/l;->a:Lcom/bumptech/glide/i/f;

    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b/l;->a:Lcom/bumptech/glide/i/f;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/i/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "safeKey":Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v2, :cond_0

    .line 24
    :try_start_1
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 25
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/b;->a(Ljava/security/MessageDigest;)V

    .line 26
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/i/i;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 32
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/l;->a:Lcom/bumptech/glide/i/f;

    monitor-enter v4

    .line 33
    :try_start_2
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b/l;->a:Lcom/bumptech/glide/i/f;

    invoke-virtual {v3, p1, v2}, Lcom/bumptech/glide/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :cond_0
    return-object v2

    .line 21
    .end local v2    # "safeKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 27
    .restart local v2    # "safeKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 30
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method
