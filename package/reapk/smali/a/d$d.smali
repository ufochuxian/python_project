.class La/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, La/d$d;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 17
    const v0, 0x159a55e5

    iput v0, p0, La/d$d;->a:I

    const v0, 0x1f123bb5

    iput v0, p0, La/d$d;->b:I

    return-void
.end method

.method public b()I
    .locals 3

    .prologue
    const v2, 0xffff

    .line 20
    const v0, 0x9069

    iget v1, p0, La/d$d;->a:I

    and-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, La/d$d;->a:I

    ushr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, La/d$d;->a:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, La/d$d;->b:I

    and-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x4650

    iget v2, p0, La/d$d;->b:I

    ushr-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iput v1, p0, La/d$d;->b:I

    xor-int/2addr v0, v1

    return v0
.end method
