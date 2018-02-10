.class final Lcom/jiliguala/niuwa/services/c$a;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0x80000


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/c;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/services/c;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 533
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/c$a;->a:Lcom/jiliguala/niuwa/services/c;

    .line 535
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    iput v0, p0, Lcom/jiliguala/niuwa/services/c$a;->c:I

    .line 531
    iput v0, p0, Lcom/jiliguala/niuwa/services/c$a;->d:I

    .line 536
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
    .line 541
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 542
    iget v0, p0, Lcom/jiliguala/niuwa/services/c$a;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jiliguala/niuwa/services/c$a;->c:I

    .line 543
    iget v0, p0, Lcom/jiliguala/niuwa/services/c$a;->c:I

    iget v1, p0, Lcom/jiliguala/niuwa/services/c$a;->d:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_0

    .line 544
    iget v0, p0, Lcom/jiliguala/niuwa/services/c$a;->c:I

    iput v0, p0, Lcom/jiliguala/niuwa/services/c$a;->d:I

    .line 546
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c$a;->a:Lcom/jiliguala/niuwa/services/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/jiliguala/niuwa/services/c$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/services/c;->a(Lcom/jiliguala/niuwa/services/c;[Ljava/lang/Object;)V

    .line 548
    :cond_0
    return-void
.end method
