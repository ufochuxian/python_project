.class public Landroid/support/v7/widget/GridLayout$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field static final a:Landroid/support/v7/widget/GridLayout$j;

.field static final b:F


# instance fields
.field final c:Z

.field final d:Landroid/support/v7/widget/GridLayout$f;

.field final e:Landroid/support/v7/widget/GridLayout$a;

.field final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2421
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->a(I)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout$j;->a:Landroid/support/v7/widget/GridLayout$j;

    return-void
.end method

.method constructor <init>(ZIILandroid/support/v7/widget/GridLayout$a;F)V
    .locals 2
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Landroid/support/v7/widget/GridLayout$a;
    .param p5, "weight"    # F

    .prologue
    .line 2437
    new-instance v0, Landroid/support/v7/widget/GridLayout$f;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/support/v7/widget/GridLayout$j;-><init>(ZLandroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$a;F)V

    .line 2438
    return-void
.end method

.method private constructor <init>(ZLandroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$a;F)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Landroid/support/v7/widget/GridLayout$f;
    .param p3, "alignment"    # Landroid/support/v7/widget/GridLayout$a;
    .param p4, "weight"    # F

    .prologue
    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2430
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$j;->c:Z

    .line 2431
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 2432
    iput-object p3, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    .line 2433
    iput p4, p0, Landroid/support/v7/widget/GridLayout$j;->f:F

    .line 2434
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 2459
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->t:Landroid/support/v7/widget/GridLayout$a;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayout$j;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Z)Landroid/support/v7/widget/GridLayout$a;
    .locals 2
    .param p1, "horizontal"    # Z

    .prologue
    .line 2441
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->t:Landroid/support/v7/widget/GridLayout$a;

    if-eq v0, v1, :cond_0

    .line 2442
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    .line 2447
    :goto_0
    return-object v0

    .line 2444
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$j;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 2445
    if-eqz p1, :cond_1

    sget-object v0, Landroid/support/v7/widget/GridLayout;->w:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/v7/widget/GridLayout;->B:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_0

    .line 2447
    :cond_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->C:Landroid/support/v7/widget/GridLayout$a;

    goto :goto_0
.end method

.method final a(Landroid/support/v7/widget/GridLayout$a;)Landroid/support/v7/widget/GridLayout$j;
    .locals 4
    .param p1, "alignment"    # Landroid/support/v7/widget/GridLayout$a;

    .prologue
    .line 2455
    new-instance v0, Landroid/support/v7/widget/GridLayout$j;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$j;->c:Z

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    iget v3, p0, Landroid/support/v7/widget/GridLayout$j;->f:F

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/support/v7/widget/GridLayout$j;-><init>(ZLandroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$a;F)V

    return-object v0
.end method

.method final a(Landroid/support/v7/widget/GridLayout$f;)Landroid/support/v7/widget/GridLayout$j;
    .locals 4
    .param p1, "span"    # Landroid/support/v7/widget/GridLayout$f;

    .prologue
    .line 2451
    new-instance v0, Landroid/support/v7/widget/GridLayout$j;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$j;->c:Z

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    iget v3, p0, Landroid/support/v7/widget/GridLayout$j;->f:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/support/v7/widget/GridLayout$j;-><init>(ZLandroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$a;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2474
    if-ne p0, p1, :cond_1

    .line 2491
    :cond_0
    :goto_0
    return v1

    .line 2477
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2478
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2481
    check-cast v0, Landroid/support/v7/widget/GridLayout$j;

    .line 2483
    .local v0, "spec":Landroid/support/v7/widget/GridLayout$j;
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2484
    goto :goto_0

    .line 2487
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2488
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2496
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$f;->hashCode()I

    move-result v0

    .line 2497
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$j;->e:Landroid/support/v7/widget/GridLayout$a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2498
    return v0
.end method
