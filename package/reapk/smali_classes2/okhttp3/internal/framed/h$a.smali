.class final Lokhttp3/internal/framed/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:[Lokhttp3/internal/framed/h$a;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/16 v0, 0x100

    new-array v0, v0, [Lokhttp3/internal/framed/h$a;

    iput-object v0, p0, Lokhttp3/internal/framed/h$a;->a:[Lokhttp3/internal/framed/h$a;

    .line 209
    iput v1, p0, Lokhttp3/internal/framed/h$a;->b:I

    .line 210
    iput v1, p0, Lokhttp3/internal/framed/h$a;->c:I

    .line 211
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/framed/h$a;->a:[Lokhttp3/internal/framed/h$a;

    .line 221
    iput p1, p0, Lokhttp3/internal/framed/h$a;->b:I

    .line 222
    and-int/lit8 v0, p2, 0x7

    .line 223
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v0, 0x8

    .end local v0    # "b":I
    :cond_0
    iput v0, p0, Lokhttp3/internal/framed/h$a;->c:I

    .line 224
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/h$a;)[Lokhttp3/internal/framed/h$a;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/h$a;

    .prologue
    .line 195
    iget-object v0, p0, Lokhttp3/internal/framed/h$a;->a:[Lokhttp3/internal/framed/h$a;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/h$a;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/h$a;

    .prologue
    .line 195
    iget v0, p0, Lokhttp3/internal/framed/h$a;->b:I

    return v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/h$a;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/h$a;

    .prologue
    .line 195
    iget v0, p0, Lokhttp3/internal/framed/h$a;->c:I

    return v0
.end method
