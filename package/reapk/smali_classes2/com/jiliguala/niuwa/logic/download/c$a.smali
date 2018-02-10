.class final Lcom/jiliguala/niuwa/logic/download/c$a;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/download/c;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/download/c;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 354
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/download/c$a;->a:Lcom/jiliguala/niuwa/logic/download/c;

    .line 356
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/download/c$a;->b:I

    .line 357
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 363
    iget v0, p0, Lcom/jiliguala/niuwa/logic/download/c$a;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jiliguala/niuwa/logic/download/c$a;->b:I

    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c$a;->a:Lcom/jiliguala/niuwa/logic/download/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/jiliguala/niuwa/logic/download/c$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/download/c;->a(Lcom/jiliguala/niuwa/logic/download/c;[Ljava/lang/Object;)V

    .line 365
    return-void
.end method
