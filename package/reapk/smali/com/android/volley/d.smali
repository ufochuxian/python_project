.class public Lcom/android/volley/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/m;


# static fields
.field public static final a:I = 0x9c4

.field public static final b:I = 0x0

.field public static final c:F = 1.0f


# instance fields
.field private final d:I

.field private final e:F

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x9c4

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/d;-><init>(IIF)V

    .line 58
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "initialTimeoutMs"    # I
    .param p2, "maxNumRetries"    # I
    .param p3, "backoffMultiplier"    # F

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/android/volley/d;->f:I

    .line 69
    iput p2, p0, Lcom/android/volley/d;->d:I

    .line 70
    iput p3, p0, Lcom/android/volley/d;->e:F

    .line 71
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/volley/d;->f:I

    return v0
.end method

.method public a(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lcom/android/volley/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/d;->g:I

    .line 104
    iget v0, p0, Lcom/android/volley/d;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/volley/d;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/volley/d;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/volley/d;->f:I

    .line 105
    invoke-virtual {p0}, Lcom/android/volley/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    throw p1

    .line 108
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/volley/d;->g:I

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/volley/d;->e:F

    return v0
.end method

.method protected d()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/volley/d;->g:I

    iget v1, p0, Lcom/android/volley/d;->d:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
