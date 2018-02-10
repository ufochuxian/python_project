.class public final Lokhttp3/internal/a/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/a/d;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Lokio/x;

.field private final e:[J


# direct methods
.method private constructor <init>(Lokhttp3/internal/a/d;Ljava/lang/String;J[Lokio/x;[J)V
    .locals 1
    .param p1, "this$0"    # Lokhttp3/internal/a/d;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lokio/x;
    .param p6, "lengths"    # [J

    .prologue
    .line 789
    iput-object p1, p0, Lokhttp3/internal/a/d$c;->a:Lokhttp3/internal/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p2, p0, Lokhttp3/internal/a/d$c;->b:Ljava/lang/String;

    .line 791
    iput-wide p3, p0, Lokhttp3/internal/a/d$c;->c:J

    .line 792
    iput-object p5, p0, Lokhttp3/internal/a/d$c;->d:[Lokio/x;

    .line 793
    iput-object p6, p0, Lokhttp3/internal/a/d$c;->e:[J

    .line 794
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/a/d;Ljava/lang/String;J[Lokio/x;[JLokhttp3/internal/a/d$1;)V
    .locals 1
    .param p1, "x0"    # Lokhttp3/internal/a/d;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Lokio/x;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lokhttp3/internal/a/d$1;

    .prologue
    .line 783
    invoke-direct/range {p0 .. p6}, Lokhttp3/internal/a/d$c;-><init>(Lokhttp3/internal/a/d;Ljava/lang/String;J[Lokio/x;[J)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/a/d$c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d$c;

    .prologue
    .line 783
    iget-object v0, p0, Lokhttp3/internal/a/d$c;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lokhttp3/internal/a/d$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lokio/x;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 810
    iget-object v0, p0, Lokhttp3/internal/a/d$c;->d:[Lokio/x;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lokhttp3/internal/a/d$c;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b()Lokhttp3/internal/a/d$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lokhttp3/internal/a/d$c;->a:Lokhttp3/internal/a/d;

    iget-object v1, p0, Lokhttp3/internal/a/d$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lokhttp3/internal/a/d$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d;Ljava/lang/String;J)Lokhttp3/internal/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 819
    iget-object v2, p0, Lokhttp3/internal/a/d$c;->d:[Lokio/x;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 820
    .local v0, "in":Lokio/x;
    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    .end local v0    # "in":Lokio/x;
    :cond_0
    return-void
.end method
