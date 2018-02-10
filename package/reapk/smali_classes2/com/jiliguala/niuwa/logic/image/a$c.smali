.class public final Lcom/jiliguala/niuwa/logic/image/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/image/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;
    .param p6, "lengths"    # [J
    .param p7, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->a:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->b:Ljava/lang/String;

    .line 672
    iput-wide p3, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->c:J

    .line 673
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->d:[Ljava/io/InputStream;

    .line 674
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->e:[J

    .line 675
    iput-object p7, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->f:Ljava/lang/String;

    .line 676
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLjava/lang/String;Lcom/jiliguala/niuwa/logic/image/a$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Lcom/jiliguala/niuwa/logic/image/a$1;

    .prologue
    .line 663
    invoke-direct/range {p0 .. p7}, Lcom/jiliguala/niuwa/logic/image/a$c;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/logic/image/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->a:Lcom/jiliguala/niuwa/logic/image/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 705
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 709
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a$c;->d:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 710
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Closeable;)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method
