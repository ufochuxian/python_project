.class public final Lcom/squareup/okhttp/internal/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Lokio/x;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;J[Lokio/x;[J)V
    .locals 1
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/a;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lokio/x;
    .param p6, "lengths"    # [J

    .prologue
    .line 773
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$c;->a:Lcom/squareup/okhttp/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a$c;->b:Ljava/lang/String;

    .line 775
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/a$c;->c:J

    .line 776
    iput-object p5, p0, Lcom/squareup/okhttp/internal/a$c;->d:[Lokio/x;

    .line 777
    iput-object p6, p0, Lcom/squareup/okhttp/internal/a$c;->e:[J

    .line 778
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;J[Lokio/x;[JLcom/squareup/okhttp/internal/a$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Lokio/x;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lcom/squareup/okhttp/internal/a$1;

    .prologue
    .line 767
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/a$c;-><init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;J[Lokio/x;[J)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$c;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$c;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lokio/x;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$c;->d:[Lokio/x;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$c;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b()Lcom/squareup/okhttp/internal/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$c;->a:Lcom/squareup/okhttp/internal/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 804
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$c;->d:[Lokio/x;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 805
    .local v0, "in":Lokio/x;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    .end local v0    # "in":Lokio/x;
    :cond_0
    return-void
.end method
