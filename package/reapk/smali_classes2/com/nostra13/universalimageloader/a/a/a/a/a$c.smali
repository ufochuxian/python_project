.class public final Lcom/nostra13/universalimageloader/a/a/a/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private d:[Ljava/io/File;

.field private final e:[Ljava/io/InputStream;

.field private final f:[J


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "files"    # [Ljava/io/File;
    .param p6, "ins"    # [Ljava/io/InputStream;
    .param p7, "lengths"    # [J

    .prologue
    .line 713
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->b:Ljava/lang/String;

    .line 715
    iput-wide p3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->c:J

    .line 716
    iput-object p5, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->d:[Ljava/io/File;

    .line 717
    iput-object p6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->e:[Ljava/io/InputStream;

    .line 718
    iput-object p7, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->f:[J

    .line 719
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/a/a/a/a/a$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/File;
    .param p6, "x4"    # [Ljava/io/InputStream;
    .param p7, "x5"    # [J
    .param p8, "x6"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$1;

    .prologue
    .line 706
    invoke-direct/range {p0 .. p7}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a()Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/File;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->d:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->e:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->b(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->e:[Ljava/io/InputStream;

    .local v0, "arr$":[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 752
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(Ljava/io/Closeable;)V

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public d(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->f:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
