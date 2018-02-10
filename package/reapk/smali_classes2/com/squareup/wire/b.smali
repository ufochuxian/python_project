.class final Lcom/squareup/wire/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
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
.field private final a:[B

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/lang/Class;)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/squareup/wire/b;, "Lcom/squareup/wire/b<TM;TB;>;"
    .local p2, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/squareup/wire/b;->a:[B

    .line 32
    iput-object p2, p0, Lcom/squareup/wire/b;->b:Ljava/lang/Class;

    .line 33
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/squareup/wire/b;, "Lcom/squareup/wire/b<TM;TB;>;"
    iget-object v2, p0, Lcom/squareup/wire/b;->b:Ljava/lang/Class;

    invoke-static {v2}, Lcom/squareup/wire/ProtoAdapter;->c(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 39
    .local v0, "adapter":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<+Lcom/squareup/wire/Message;>;"
    :try_start_0
    iget-object v2, p0, Lcom/squareup/wire/b;->a:[B

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->a([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/StreamCorruptedException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
