.class final Lokio/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x2000

.field static final b:I = 0x400


# instance fields
.field final c:[B

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Lokio/t;

.field i:Lokio/t;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/t;->c:[B

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/t;->g:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/t;->f:Z

    .line 64
    return-void
.end method

.method constructor <init>(Lokio/t;)V
    .locals 3
    .param p1, "shareFrom"    # Lokio/t;

    .prologue
    .line 67
    iget-object v0, p1, Lokio/t;->c:[B

    iget v1, p1, Lokio/t;->d:I

    iget v2, p1, Lokio/t;->e:I

    invoke-direct {p0, v0, v1, v2}, Lokio/t;-><init>([BII)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/t;->f:Z

    .line 69
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lokio/t;->c:[B

    .line 73
    iput p2, p0, Lokio/t;->d:I

    .line 74
    iput p3, p0, Lokio/t;->e:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/t;->g:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/t;->f:Z

    .line 77
    return-void
.end method


# virtual methods
.method public a()Lokio/t;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lokio/t;->h:Lokio/t;

    if-eq v2, p0, :cond_0

    iget-object v0, p0, Lokio/t;->h:Lokio/t;

    .line 85
    .local v0, "result":Lokio/t;
    :goto_0
    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    iget-object v3, p0, Lokio/t;->h:Lokio/t;

    iput-object v3, v2, Lokio/t;->h:Lokio/t;

    .line 86
    iget-object v2, p0, Lokio/t;->h:Lokio/t;

    iget-object v3, p0, Lokio/t;->i:Lokio/t;

    iput-object v3, v2, Lokio/t;->i:Lokio/t;

    .line 87
    iput-object v1, p0, Lokio/t;->h:Lokio/t;

    .line 88
    iput-object v1, p0, Lokio/t;->i:Lokio/t;

    .line 89
    return-object v0

    .end local v0    # "result":Lokio/t;
    :cond_0
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method public a(I)Lokio/t;
    .locals 5
    .param p1, "byteCount"    # I

    .prologue
    .line 113
    if-lez p1, :cond_0

    iget v1, p0, Lokio/t;->e:I

    iget v2, p0, Lokio/t;->d:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 121
    :cond_1
    const/16 v1, 0x400

    if-lt p1, v1, :cond_2

    .line 122
    new-instance v0, Lokio/t;

    invoke-direct {v0, p0}, Lokio/t;-><init>(Lokio/t;)V

    .line 128
    .local v0, "prefix":Lokio/t;
    :goto_0
    iget v1, v0, Lokio/t;->d:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/t;->e:I

    .line 129
    iget v1, p0, Lokio/t;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/t;->d:I

    .line 130
    iget-object v1, p0, Lokio/t;->i:Lokio/t;

    invoke-virtual {v1, v0}, Lokio/t;->a(Lokio/t;)Lokio/t;

    .line 131
    return-object v0

    .line 124
    .end local v0    # "prefix":Lokio/t;
    :cond_2
    invoke-static {}, Lokio/u;->a()Lokio/t;

    move-result-object v0

    .line 125
    .restart local v0    # "prefix":Lokio/t;
    iget-object v1, p0, Lokio/t;->c:[B

    iget v2, p0, Lokio/t;->d:I

    iget-object v3, v0, Lokio/t;->c:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public a(Lokio/t;)Lokio/t;
    .locals 1
    .param p1, "segment"    # Lokio/t;

    .prologue
    .line 97
    iput-object p0, p1, Lokio/t;->i:Lokio/t;

    .line 98
    iget-object v0, p0, Lokio/t;->h:Lokio/t;

    iput-object v0, p1, Lokio/t;->h:Lokio/t;

    .line 99
    iget-object v0, p0, Lokio/t;->h:Lokio/t;

    iput-object p1, v0, Lokio/t;->i:Lokio/t;

    .line 100
    iput-object p1, p0, Lokio/t;->h:Lokio/t;

    .line 101
    return-object p1
.end method

.method public a(Lokio/t;I)V
    .locals 6
    .param p1, "sink"    # Lokio/t;
    .param p2, "byteCount"    # I

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 151
    iget-boolean v0, p1, Lokio/t;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iget v0, p1, Lokio/t;->e:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 154
    iget-boolean v0, p1, Lokio/t;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :cond_1
    iget v0, p1, Lokio/t;->e:I

    add-int/2addr v0, p2

    iget v1, p1, Lokio/t;->d:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 156
    :cond_2
    iget-object v0, p1, Lokio/t;->c:[B

    iget v1, p1, Lokio/t;->d:I

    iget-object v2, p1, Lokio/t;->c:[B

    iget v3, p1, Lokio/t;->e:I

    iget v4, p1, Lokio/t;->d:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lokio/t;->e:I

    iget v1, p1, Lokio/t;->d:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/t;->e:I

    .line 158
    iput v5, p1, Lokio/t;->d:I

    .line 161
    :cond_3
    iget-object v0, p0, Lokio/t;->c:[B

    iget v1, p0, Lokio/t;->d:I

    iget-object v2, p1, Lokio/t;->c:[B

    iget v3, p1, Lokio/t;->e:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lokio/t;->e:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/t;->e:I

    .line 163
    iget v0, p0, Lokio/t;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/t;->d:I

    .line 164
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    if-ne v2, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 140
    :cond_0
    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    iget-boolean v2, v2, Lokio/t;->g:Z

    if-nez v2, :cond_2

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget v2, p0, Lokio/t;->e:I

    iget v3, p0, Lokio/t;->d:I

    sub-int v1, v2, v3

    .line 142
    .local v1, "byteCount":I
    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    iget v2, v2, Lokio/t;->e:I

    rsub-int v3, v2, 0x2000

    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    iget-boolean v2, v2, Lokio/t;->f:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    add-int v0, v3, v2

    .line 143
    .local v0, "availableByteCount":I
    if-gt v1, v0, :cond_1

    .line 144
    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    invoke-virtual {p0, v2, v1}, Lokio/t;->a(Lokio/t;I)V

    .line 145
    invoke-virtual {p0}, Lokio/t;->a()Lokio/t;

    .line 146
    invoke-static {p0}, Lokio/u;->a(Lokio/t;)V

    goto :goto_0

    .line 142
    .end local v0    # "availableByteCount":I
    :cond_3
    iget-object v2, p0, Lokio/t;->i:Lokio/t;

    iget v2, v2, Lokio/t;->d:I

    goto :goto_1
.end method
