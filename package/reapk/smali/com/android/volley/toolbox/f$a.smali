.class Lcom/android/volley/toolbox/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/b$a;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/b$a;

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    .line 500
    iget-object v0, p2, Lcom/android/volley/b$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->a:J

    .line 501
    iget-object v0, p2, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    .line 502
    iget-wide v0, p2, Lcom/android/volley/b$a;->c:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->d:J

    .line 503
    iget-wide v0, p2, Lcom/android/volley/b$a;->d:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->e:J

    .line 504
    iget-wide v0, p2, Lcom/android/volley/b$a;->e:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->f:J

    .line 505
    iget-wide v0, p2, Lcom/android/volley/b$a;->f:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->g:J

    .line 506
    iget-object v0, p2, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    .line 507
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/android/volley/toolbox/f$a;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Lcom/android/volley/toolbox/f$a;

    invoke-direct {v0}, Lcom/android/volley/toolbox/f$a;-><init>()V

    .line 517
    .local v0, "entry":Lcom/android/volley/toolbox/f$a;
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 518
    .local v1, "magic":I
    const v2, 0x20150306

    if-eq v1, v2, :cond_0

    .line 520
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 522
    :cond_0
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    .line 523
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    .line 524
    iget-object v2, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    .line 527
    :cond_1
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/f$a;->d:J

    .line 528
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/f$a;->e:J

    .line 529
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/f$a;->f:J

    .line 530
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/f$a;->g:J

    .line 531
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    .line 533
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/android/volley/b$a;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 540
    new-instance v0, Lcom/android/volley/b$a;

    invoke-direct {v0}, Lcom/android/volley/b$a;-><init>()V

    .line 541
    .local v0, "e":Lcom/android/volley/b$a;
    iput-object p1, v0, Lcom/android/volley/b$a;->a:[B

    .line 542
    iget-object v1, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    .line 543
    iget-wide v2, p0, Lcom/android/volley/toolbox/f$a;->d:J

    iput-wide v2, v0, Lcom/android/volley/b$a;->c:J

    .line 544
    iget-wide v2, p0, Lcom/android/volley/toolbox/f$a;->e:J

    iput-wide v2, v0, Lcom/android/volley/b$a;->d:J

    .line 545
    iget-wide v2, p0, Lcom/android/volley/toolbox/f$a;->f:J

    iput-wide v2, v0, Lcom/android/volley/b$a;->e:J

    .line 546
    iget-wide v2, p0, Lcom/android/volley/toolbox/f$a;->g:J

    iput-wide v2, v0, Lcom/android/volley/b$a;->f:J

    .line 547
    iget-object v1, p0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    .line 548
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    const v3, 0x20150306

    :try_start_0
    invoke-static {p1, v3}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    .line 558
    iget-object v3, p0, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-static {p1, v3}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 560
    iget-wide v4, p0, Lcom/android/volley/toolbox/f$a;->d:J

    invoke-static {p1, v4, v5}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    .line 561
    iget-wide v4, p0, Lcom/android/volley/toolbox/f$a;->e:J

    invoke-static {p1, v4, v5}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    .line 562
    iget-wide v4, p0, Lcom/android/volley/toolbox/f$a;->f:J

    invoke-static {p1, v4, v5}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    .line 563
    iget-wide v4, p0, Lcom/android/volley/toolbox/f$a;->g:J

    invoke-static {p1, v4, v5}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    .line 564
    iget-object v3, p0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    invoke-static {v3, p1}, Lcom/android/volley/toolbox/f;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 565
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 569
    :goto_1
    return v1

    .line 559
    :cond_0
    iget-object v3, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 569
    goto :goto_1
.end method
