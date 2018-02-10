.class Landroid/support/v4/app/ah$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/Fragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Landroid/support/v4/app/t;

.field private c:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/t;Z)V
    .locals 0
    .param p1, "record"    # Landroid/support/v4/app/t;
    .param p2, "isBack"    # Z

    .prologue
    .line 3548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3549
    iput-boolean p2, p0, Landroid/support/v4/app/ah$e;->a:Z

    .line 3550
    iput-object p1, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    .line 3551
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/ah$e;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/ah$e;

    .prologue
    .line 3542
    iget-boolean v0, p0, Landroid/support/v4/app/ah$e;->a:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v4/app/ah$e;)Landroid/support/v4/app/t;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/ah$e;

    .prologue
    .line 3542
    iget-object v0, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 3560
    iget v0, p0, Landroid/support/v4/app/ah$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/ah$e;->c:I

    .line 3561
    iget v0, p0, Landroid/support/v4/app/ah$e;->c:I

    if-eqz v0, :cond_0

    .line 3565
    :goto_0
    return-void

    .line 3564
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/ah;

    invoke-static {v0}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/ah;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 3574
    iget v0, p0, Landroid/support/v4/app/ah$e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/ah$e;->c:I

    .line 3575
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3581
    iget v0, p0, Landroid/support/v4/app/ah$e;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3591
    iget v7, p0, Landroid/support/v4/app/ah$e;->c:I

    if-lez v7, :cond_1

    move v0, v5

    .line 3592
    .local v0, "canceled":Z
    :goto_0
    iget-object v7, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    iget-object v3, v7, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/ah;

    .line 3593
    .local v3, "manager":Landroid/support/v4/app/ah;
    iget-object v7, v3, Landroid/support/v4/app/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3594
    .local v4, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3595
    iget-object v7, v3, Landroid/support/v4/app/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3596
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$b;)V

    .line 3597
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3598
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    .line 3594
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "canceled":Z
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "manager":Landroid/support/v4/app/ah;
    .end local v4    # "numAdded":I
    :cond_1
    move v0, v6

    .line 3591
    goto :goto_0

    .line 3601
    .restart local v0    # "canceled":Z
    .restart local v2    # "i":I
    .restart local v3    # "manager":Landroid/support/v4/app/ah;
    .restart local v4    # "numAdded":I
    :cond_2
    iget-object v7, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    iget-object v7, v7, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/ah;

    iget-object v8, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    iget-boolean v9, p0, Landroid/support/v4/app/ah$e;->a:Z

    if-nez v0, :cond_3

    move v6, v5

    :cond_3
    invoke-static {v7, v8, v9, v6, v5}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/ah;Landroid/support/v4/app/t;ZZZ)V

    .line 3602
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3609
    iget-object v0, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/ah;

    iget-object v1, p0, Landroid/support/v4/app/ah$e;->b:Landroid/support/v4/app/t;

    iget-boolean v2, p0, Landroid/support/v4/app/ah$e;->a:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/ah;Landroid/support/v4/app/t;ZZZ)V

    .line 3610
    return-void
.end method
