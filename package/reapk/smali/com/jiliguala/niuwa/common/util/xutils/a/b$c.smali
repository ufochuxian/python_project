.class public final Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/FileInputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p2, "diskKey"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/FileInputStream;
    .param p6, "lengths"    # [J

    .prologue
    .line 779
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->b:Ljava/lang/String;

    .line 781
    iput-wide p3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->c:J

    .line 782
    iput-object p5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->d:[Ljava/io/FileInputStream;

    .line 783
    iput-object p6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->e:[J

    .line 784
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/FileInputStream;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;

    .prologue
    .line 773
    invoke-direct/range {p0 .. p6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;J)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->d:[Ljava/io/FileInputStream;

    aget-object v0, v0, p1

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
    .line 806
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 818
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;->d:[Ljava/io/FileInputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 819
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method
