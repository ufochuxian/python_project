.class public Landroid/support/constraint/solver/widgets/f;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "SourceFile"


# static fields
.field public static final V:I = 0x1

.field public static final W:I = 0x2

.field public static final X:I = -0x1

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I


# instance fields
.field protected Y:F

.field protected Z:I

.field protected aa:I

.field private ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private ac:I

.field private ad:Z

.field private ae:I

.field private af:Landroid/support/constraint/solver/widgets/h;

.field private ag:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 33
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    .line 34
    iput v2, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    .line 35
    iput v2, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    .line 37
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 38
    iput v1, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    .line 39
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/f;->ad:Z

    .line 40
    iput v1, p0, Landroid/support/constraint/solver/widgets/f;->ae:I

    .line 42
    new-instance v0, Landroid/support/constraint/solver/widgets/h;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/h;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/f;->af:Landroid/support/constraint/solver/widgets/h;

    .line 43
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    .line 46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->y:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method


# virtual methods
.method public Y()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .prologue
    .line 119
    sget-object v0, Landroid/support/constraint/solver/widgets/f$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 129
    :pswitch_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "Guideline"

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 75
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    if-ne v0, p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    .line 79
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 85
    :goto_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->y:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1
.end method

.method public a(Landroid/support/constraint/solver/i;I)V
    .locals 9
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "group"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 185
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/e;

    .line 186
    .local v8, "parent":Landroid/support/constraint/solver/widgets/e;
    if-nez v8, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 190
    .local v6, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 191
    .local v7, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    if-nez v0, :cond_2

    .line 192
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 193
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 195
    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    if-eq v0, v4, :cond_3

    .line 196
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 197
    .local v1, "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 198
    .local v2, "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    .line 200
    invoke-static {p1, v1, v2, v0, v5}, Landroid/support/constraint/solver/f;->a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    goto :goto_0

    .line 201
    .end local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v2    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    :cond_3
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    if-eq v0, v4, :cond_4

    .line 202
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 203
    .restart local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 204
    .local v3, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    neg-int v0, v0

    .line 206
    invoke-static {p1, v1, v3, v0, v5}, Landroid/support/constraint/solver/f;->a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    goto :goto_0

    .line 207
    .end local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 209
    .restart local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 210
    .restart local v2    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/i;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 211
    .restart local v3    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v4, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    iget-boolean v5, p0, Landroid/support/constraint/solver/widgets/f;->ad:Z

    move-object v0, p1

    .line 212
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/solver/f;->a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    .line 214
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ae:I

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/f;->ad:Z

    if-ne v0, p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/f;->ad:Z

    goto :goto_0
.end method

.method public ao()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 307
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    if-eq v0, v2, :cond_1

    .line 309
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->i()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->k()V

    goto :goto_0

    .line 313
    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    if-eq v0, v2, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->j()V

    goto :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 51
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    if-eq v1, v0, :cond_2

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    if-eq v1, v0, :cond_0

    .line 58
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 107
    iput p1, p0, Landroid/support/constraint/solver/widgets/f;->ae:I

    .line 108
    return-void
.end method

.method public b(Landroid/support/constraint/solver/i;I)V
    .locals 4
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "group"    # I

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/i;->b(Ljava/lang/Object;)I

    move-result v0

    .line 244
    .local v0, "value":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->g(I)V

    .line 246
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/f;->h(I)V

    .line 247
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/f;->n(I)V

    .line 248
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/f;->m(I)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/f;->g(I)V

    .line 251
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->h(I)V

    .line 252
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/f;->m(I)V

    .line 253
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/f;->n(I)V

    goto :goto_0
.end method

.method public c()Landroid/support/constraint/solver/widgets/h;
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->af:Landroid/support/constraint/solver/widgets/h;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->F()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->G()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/h;->a(IIII)V

    .line 66
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->af:Landroid/support/constraint/solver/widgets/h;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->F()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 68
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->G()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/support/constraint/solver/widgets/f;->ag:I

    mul-int/lit8 v4, v4, 0x2

    .line 67
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/h;->a(IIII)V

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->af:Landroid/support/constraint/solver/widgets/h;

    return-object v0
.end method

.method public c(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 144
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->e(F)V

    .line 145
    return-void
.end method

.method public d()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/f;->ab:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public d(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, -0x1

    .line 156
    if-le p1, v1, :cond_0

    .line 157
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    .line 158
    iput p1, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    .line 159
    iput v1, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    .line 161
    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    .line 259
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 260
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->C:I

    sub-int v1, p1, v2

    .line 261
    .local v1, "position":I
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    if-eq v2, v4, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/f;->d(I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    if-eq v2, v4, :cond_2

    .line 264
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/f;->e(I)V

    goto :goto_0

    .line 265
    :cond_2
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 266
    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 267
    .local v0, "percent":F
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->e(F)V

    goto :goto_0

    .line 270
    .end local v0    # "percent":F
    .end local v1    # "position":I
    :cond_3
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->D:I

    sub-int v1, p2, v2

    .line 271
    .restart local v1    # "position":I
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    if-eq v2, v4, :cond_4

    .line 272
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/f;->d(I)V

    goto :goto_0

    .line 273
    :cond_4
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    if-eq v2, v4, :cond_5

    .line 274
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/f;->e(I)V

    goto :goto_0

    .line 275
    :cond_5
    iget v2, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 276
    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 277
    .restart local v0    # "percent":F
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->e(F)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    return v0
.end method

.method public e(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    const/4 v1, -0x1

    .line 148
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 149
    iput p1, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    .line 150
    iput v1, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    .line 151
    iput v1, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    .line 153
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, -0x1

    .line 164
    if-le p1, v1, :cond_0

    .line 165
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    .line 166
    iput v1, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    .line 167
    iput p1, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    .line 169
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Y:F

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->Z:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Landroid/support/constraint/solver/widgets/f;->aa:I

    return v0
.end method

.method i()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->z()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 284
    .local v0, "percent":F
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->A()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 287
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->e(F)V

    .line 288
    return-void
.end method

.method j()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->z()I

    move-result v0

    .line 292
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->A()I

    move-result v0

    .line 295
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->d(I)V

    .line 296
    return-void
.end method

.method k()V
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->z()I

    move-result v2

    sub-int v0, v1, v2

    .line 300
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/f;->ac:I

    if-nez v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->r()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/f;->A()I

    move-result v2

    sub-int v0, v1, v2

    .line 303
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/f;->e(I)V

    .line 304
    return-void
.end method
