.class Lcom/android/volley/toolbox/f$b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 576
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/f$b;->a:I

    .line 580
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/f$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/android/volley/toolbox/f$1;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f$b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/f$b;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/toolbox/f$b;

    .prologue
    .line 575
    iget v0, p0, Lcom/android/volley/toolbox/f$b;->a:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 585
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 586
    iget v1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    .line 588
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 594
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 595
    iget v1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    .line 597
    :cond_0
    return v0
.end method
