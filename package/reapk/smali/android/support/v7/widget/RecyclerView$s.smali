.class public abstract Landroid/support/v7/widget/RecyclerView$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$s$b;,
        Landroid/support/v7/widget/RecyclerView$s$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/RecyclerView$s$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10918
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    .line 10933
    new-instance v0, Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$s$a;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    .line 10934
    return-void
.end method

.method private a(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11028
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    .line 11029
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 11030
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 11032
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 11033
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 11035
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    if-ne v2, v3, :cond_4

    .line 11036
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V

    .line 11037
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$s$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 11038
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 11044
    :cond_2
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-eqz v2, :cond_3

    .line 11045
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/support/v7/widget/RecyclerView$s;->a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V

    .line 11046
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s$a;->a()Z

    move-result v0

    .line 11047
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$s$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 11048
    if-eqz v0, :cond_3

    .line 11050
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-eqz v2, :cond_5

    .line 11051
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 11052
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 11058
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 11040
    :cond_4
    const-string v2, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11041
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    goto :goto_0

    .line 11054
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$s;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$s;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 10916
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$s;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11064
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method protected abstract a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 11104
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 11106
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 11107
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 11108
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 10949
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    .line 10950
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 10951
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10952
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10954
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/support/v7/widget/RecyclerView$t;I)I

    .line 10955
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    .line 10956
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 10957
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$s;->e(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 10958
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    .line 10959
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 10960
    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 11091
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11092
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 11097
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 10963
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    .line 10964
    return-void
.end method

.method public e()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 10972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 11078
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10982
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-nez v0, :cond_0

    .line 10996
    :goto_0
    return-void

    .line 10985
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->b()V

    .line 10986
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/support/v7/widget/RecyclerView$t;I)I

    .line 10987
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 10988
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    .line 10989
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 10990
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    .line 10992
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$s;)V

    .line 10994
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 10995
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public f(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 11088
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 11006
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 11014
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 11024
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 11071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v0

    return v0
.end method
