.class Lorg/xbill/DNS/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xbill/DNS/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:[Lorg/xbill/DNS/ad;

.field b:[I

.field c:[Ljava/lang/Object;

.field d:I

.field e:I

.field f:Z

.field g:Lorg/xbill/DNS/v;

.field h:Lorg/xbill/DNS/v;

.field i:Ljava/lang/Throwable;

.field j:Lorg/xbill/DNS/af;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/m;Lorg/xbill/DNS/v;)V
    .locals 7
    .param p1, "eres"    # Lorg/xbill/DNS/m;
    .param p2, "query"    # Lorg/xbill/DNS/v;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lorg/xbill/DNS/m;->a(Lorg/xbill/DNS/m;)Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "l":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/xbill/DNS/ad;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/xbill/DNS/ad;

    check-cast v6, [Lorg/xbill/DNS/ad;

    iput-object v6, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    .line 35
    invoke-static {p1}, Lorg/xbill/DNS/m;->b(Lorg/xbill/DNS/m;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    iget-object v6, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    array-length v2, v6

    .line 42
    .local v2, "nresolvers":I
    invoke-static {p1}, Lorg/xbill/DNS/m;->c(Lorg/xbill/DNS/m;)I

    move-result v6

    rem-int v5, v6, v2

    .line 43
    .local v5, "start":I
    invoke-static {p1}, Lorg/xbill/DNS/m;->d(Lorg/xbill/DNS/m;)I

    move-result v6

    if-le v6, v2, :cond_0

    .line 44
    invoke-static {p1, v2}, Lorg/xbill/DNS/m;->a(Lorg/xbill/DNS/m;I)I

    .line 45
    :cond_0
    if-lez v5, :cond_2

    .line 46
    new-array v4, v2, [Lorg/xbill/DNS/ad;

    .line 47
    .local v4, "shuffle":[Lorg/xbill/DNS/ad;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 48
    add-int v6, v0, v5

    rem-int v3, v6, v2

    .line 49
    .local v3, "pos":I
    iget-object v6, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    aget-object v6, v6, v3

    aput-object v6, v4, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "pos":I
    :cond_1
    iput-object v4, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    .line 54
    .end local v0    # "i":I
    .end local v2    # "nresolvers":I
    .end local v4    # "shuffle":[Lorg/xbill/DNS/ad;
    .end local v5    # "start":I
    :cond_2
    iget-object v6, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/xbill/DNS/m$a;->b:[I

    .line 55
    iget-object v6, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lorg/xbill/DNS/m;->e(Lorg/xbill/DNS/m;)I

    move-result v6

    iput v6, p0, Lorg/xbill/DNS/m$a;->d:I

    .line 57
    iput-object p2, p0, Lorg/xbill/DNS/m$a;->g:Lorg/xbill/DNS/v;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lorg/xbill/DNS/v;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->b:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 93
    iget v1, p0, Lorg/xbill/DNS/m$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/m$a;->e:I

    .line 94
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    .line 95
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/xbill/DNS/m$a;->g:Lorg/xbill/DNS/v;

    invoke-interface {v1, v2}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1, v0}, Lorg/xbill/DNS/m$a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 108
    monitor-enter p0

    .line 109
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lorg/xbill/DNS/m$a;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 111
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 113
    :catch_1
    move-exception v1

    goto :goto_1

    .line 116
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->h:Lorg/xbill/DNS/v;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->h:Lorg/xbill/DNS/v;

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 120
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 122
    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 124
    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 127
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ExtendedResolver failure"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->b:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    .line 64
    iget v1, p0, Lorg/xbill/DNS/m$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/m$a;->e:I

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/xbill/DNS/m$a;->g:Lorg/xbill/DNS/v;

    invoke-interface {v2, v3, p0}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/af;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    monitor-enter p0

    .line 70
    :try_start_1
    iput-object v0, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xbill/DNS/m$a;->f:Z

    .line 72
    iget-object v1, p0, Lorg/xbill/DNS/m$a;->j:Lorg/xbill/DNS/af;

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x1

    .line 166
    const-string v2, "verbose"

    invoke-static {v2}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "ExtendedResolver: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    :cond_0
    monitor-enter p0

    .line 169
    :try_start_0
    iget v2, p0, Lorg/xbill/DNS/m$a;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/xbill/DNS/m$a;->e:I

    .line 170
    iget-boolean v2, p0, Lorg/xbill/DNS/m$a;->f:Z

    if-eqz v2, :cond_1

    .line 171
    monitor-exit p0

    .line 231
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 174
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 177
    :cond_2
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->c:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_4

    .line 178
    monitor-exit p0

    goto :goto_0

    .line 226
    .end local v0    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 173
    .restart local v0    # "n":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_4
    const/4 v1, 0x0

    .line 184
    .local v1, "startnext":Z
    :try_start_1
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->b:[I

    aget v2, v2, v0

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lorg/xbill/DNS/m$a;->a:[Lorg/xbill/DNS/ad;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 185
    const/4 v1, 0x1

    .line 186
    :cond_5
    instance-of v2, p2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_8

    .line 188
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->b:[I

    aget v2, v2, v0

    iget v3, p0, Lorg/xbill/DNS/m$a;->d:I

    if-ge v2, v3, :cond_6

    .line 189
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/m$a;->a(I)V

    .line 190
    :cond_6
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 191
    iput-object p2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    .line 207
    :cond_7
    :goto_2
    iget-boolean v2, p0, Lorg/xbill/DNS/m$a;->f:Z

    if-eqz v2, :cond_b

    .line 208
    monitor-exit p0

    goto :goto_0

    .line 192
    :cond_8
    instance-of v2, p2, Ljava/net/SocketException;

    if-eqz v2, :cond_a

    .line 197
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_7

    .line 199
    :cond_9
    iput-object p2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    goto :goto_2

    .line 205
    :cond_a
    iput-object p2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    goto :goto_2

    .line 209
    :cond_b
    if-eqz v1, :cond_c

    .line 210
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/m$a;->a(I)V

    .line 211
    :cond_c
    iget-boolean v2, p0, Lorg/xbill/DNS/m$a;->f:Z

    if-eqz v2, :cond_d

    .line 212
    monitor-exit p0

    goto :goto_0

    .line 213
    :cond_d
    iget v2, p0, Lorg/xbill/DNS/m$a;->e:I

    if-nez v2, :cond_e

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xbill/DNS/m$a;->f:Z

    .line 219
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->j:Lorg/xbill/DNS/af;

    if-nez v2, :cond_e

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit p0

    goto :goto_0

    .line 224
    :cond_e
    iget-boolean v2, p0, Lorg/xbill/DNS/m$a;->f:Z

    if-nez v2, :cond_f

    .line 225
    monitor-exit p0

    goto :goto_0

    .line 226
    :cond_f
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    iget-object v2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/lang/Exception;

    if-nez v2, :cond_10

    .line 229
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    .line 230
    :cond_10
    iget-object v3, p0, Lorg/xbill/DNS/m$a;->j:Lorg/xbill/DNS/af;

    iget-object v2, p0, Lorg/xbill/DNS/m$a;->i:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v3, p0, v2}, Lorg/xbill/DNS/af;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;Lorg/xbill/DNS/v;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "m"    # Lorg/xbill/DNS/v;

    .prologue
    .line 144
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ExtendedResolver: received message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    :cond_0
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lorg/xbill/DNS/m$a;->f:Z

    if-eqz v0, :cond_1

    .line 149
    monitor-exit p0

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_1
    iput-object p2, p0, Lorg/xbill/DNS/m$a;->h:Lorg/xbill/DNS/v;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/m$a;->f:Z

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/m$a;->j:Lorg/xbill/DNS/af;

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit p0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/m$a;->j:Lorg/xbill/DNS/af;

    iget-object v1, p0, Lorg/xbill/DNS/m$a;->h:Lorg/xbill/DNS/v;

    invoke-interface {v0, p0, v1}, Lorg/xbill/DNS/af;->a(Ljava/lang/Object;Lorg/xbill/DNS/v;)V

    goto :goto_0
.end method

.method public a(Lorg/xbill/DNS/af;)V
    .locals 1
    .param p1, "listener"    # Lorg/xbill/DNS/af;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/xbill/DNS/m$a;->j:Lorg/xbill/DNS/af;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/m$a;->a(I)V

    .line 136
    return-void
.end method
