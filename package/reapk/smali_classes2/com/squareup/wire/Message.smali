.class public abstract Lcom/squareup/wire/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Message$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message",
        "<TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a",
        "<TM;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient adapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<TM;>;"
        }
    .end annotation
.end field

.field transient cachedSerializedSize:I

.field protected transient hashCode:I

.field private final transient unknownFields:Lokio/ByteString;


# direct methods
.method protected constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V
    .locals 2
    .param p2, "unknownFields"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter",
            "<TM;>;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    .local p1, "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<TM;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    .line 40
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    .line 43
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "adapter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unknownFields == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    .line 46
    iput-object p2, p0, Lcom/squareup/wire/Message;->unknownFields:Lokio/ByteString;

    .line 47
    return-void
.end method


# virtual methods
.method public final adapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method public final encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final encode(Lokio/d;)V
    .locals 1
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->a(Lokio/d;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public final encode()[B
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->c(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract newBuilder()Lcom/squareup/wire/Message$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$a",
            "<TM;TB;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unknownFields()Lokio/ByteString;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lokio/ByteString;

    .line 55
    .local v0, "result":Lokio/ByteString;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lokio/ByteString;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lokio/ByteString;
    :cond_0
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_0
.end method

.method public final withoutUnknownFields()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->newBuilder()Lcom/squareup/wire/Message$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message$a;->a()Lcom/squareup/wire/Message$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message$a;->c()Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/squareup/wire/Message;, "Lcom/squareup/wire/Message<TM;TB;>;"
    new-instance v0, Lcom/squareup/wire/b;

    invoke-virtual {p0}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/b;-><init>([BLjava/lang/Class;)V

    return-object v0
.end method
