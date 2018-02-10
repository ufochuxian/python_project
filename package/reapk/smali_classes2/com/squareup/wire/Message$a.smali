.class public abstract Lcom/squareup/wire/Message$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message",
        "<TT;TB;>;B:",
        "Lcom/squareup/wire/Message$a",
        "<TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lokio/c;

.field b:Lcom/squareup/wire/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lcom/squareup/wire/Message$a;, "Lcom/squareup/wire/Message$a<TT;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/wire/Message$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$a",
            "<TT;TB;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/wire/Message$a;, "Lcom/squareup/wire/Message$a<TT;TB;>;"
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    .line 146
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    .line 147
    return-object p0
.end method

.method public a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$a;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/wire/Message$a",
            "<TT;TB;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/squareup/wire/Message$a;, "Lcom/squareup/wire/Message$a<TT;TB;>;"
    iget-object v2, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Lokio/c;

    invoke-direct {v2}, Lokio/c;-><init>()V

    iput-object v2, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    .line 133
    new-instance v2, Lcom/squareup/wire/e;

    iget-object v3, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    invoke-direct {v2, v3}, Lcom/squareup/wire/e;-><init>(Lokio/d;)V

    iput-object v2, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    .line 137
    .local v1, "protoAdapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    invoke-virtual {v1, v2, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/e;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-object p0

    .line 138
    .end local v1    # "protoAdapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public a(Lokio/ByteString;)Lcom/squareup/wire/Message$a;
    .locals 3
    .param p1, "unknownFields"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")",
            "Lcom/squareup/wire/Message$a",
            "<TT;TB;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/squareup/wire/Message$a;, "Lcom/squareup/wire/Message$a<TT;TB;>;"
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lokio/c;

    invoke-direct {v1}, Lokio/c;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    .line 119
    new-instance v1, Lcom/squareup/wire/e;

    iget-object v2, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    invoke-direct {v1, v2}, Lcom/squareup/wire/e;-><init>(Lokio/d;)V

    iput-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lcom/squareup/wire/e;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/e;->a(Lokio/ByteString;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    return-object p0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public b()Lokio/ByteString;
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/squareup/wire/Message$a;, "Lcom/squareup/wire/Message$a<TT;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/c;

    .line 156
    invoke-virtual {v0}, Lokio/c;->C()Lokio/c;

    move-result-object v0

    invoke-virtual {v0}, Lokio/c;->r()Lokio/ByteString;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_0
.end method

.method public abstract c()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
