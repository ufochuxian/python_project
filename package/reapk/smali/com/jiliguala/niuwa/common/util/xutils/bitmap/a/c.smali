.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    invoke-direct {v0, v1, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;-><init>(II)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b:I

    .line 17
    iput p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->c:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b:I

    return v0
.end method

.method public a(F)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;-><init>(II)V

    return-object v0
.end method

.method public a(I)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .locals 3
    .param p1, "sampleSize"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b:I

    div-int/2addr v1, p1

    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->c:I

    div-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;-><init>(II)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
