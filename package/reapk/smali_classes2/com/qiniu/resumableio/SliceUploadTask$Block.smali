.class public Lcom/qiniu/resumableio/SliceUploadTask$Block;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/resumableio/SliceUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Block"
.end annotation


# instance fields
.field private final ctx:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final idx:I

.field private final length:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "ctx"    # Ljava/lang/String;
    .param p3, "length"    # J
    .param p5, "host"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->idx:I

    .line 179
    iput-object p2, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->ctx:Ljava/lang/String;

    .line 180
    iput-wide p3, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->length:J

    .line 181
    iput-object p5, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->host:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getCtx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->ctx:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIdx()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->idx:I

    return v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$Block;->length:J

    return-wide v0
.end method
