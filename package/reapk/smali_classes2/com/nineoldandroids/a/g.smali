.class Lcom/nineoldandroids/a/g;
.super Lcom/nineoldandroids/a/k;
.source "SourceFile"


# instance fields
.field private g:F

.field private h:F

.field private i:F

.field private j:Z


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/a/j$a;)V
    .locals 1
    .param p1, "keyframes"    # [Lcom/nineoldandroids/a/j$a;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/nineoldandroids/a/k;-><init>([Lcom/nineoldandroids/a/j;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/g;->j:Z

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/a/g;
    .locals 6

    .prologue
    .line 51
    iget-object v1, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    .line 52
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/j;>;"
    iget-object v5, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 53
    .local v4, "numKeyframes":I
    new-array v2, v4, [Lcom/nineoldandroids/a/j$a;

    .line 54
    .local v2, "newKeyframes":[Lcom/nineoldandroids/a/j$a;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/a/j;

    invoke-virtual {v5}, Lcom/nineoldandroids/a/j;->f()Lcom/nineoldandroids/a/j;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/a/j$a;

    aput-object v5, v2, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v3, Lcom/nineoldandroids/a/g;

    invoke-direct {v3, v2}, Lcom/nineoldandroids/a/g;-><init>([Lcom/nineoldandroids/a/j$a;)V

    .line 58
    .local v3, "newSet":Lcom/nineoldandroids/a/g;
    return-object v3
.end method

.method public a(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/a/g;->b(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public b(F)F
    .locals 13
    .param p1, "fraction"    # F

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 62
    iget v9, p0, Lcom/nineoldandroids/a/g;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 63
    iget-boolean v9, p0, Lcom/nineoldandroids/a/g;->j:Z

    if-eqz v9, :cond_0

    .line 64
    iput-boolean v11, p0, Lcom/nineoldandroids/a/g;->j:Z

    .line 65
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nineoldandroids/a/j$a;

    invoke-virtual {v9}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v9

    iput v9, p0, Lcom/nineoldandroids/a/g;->g:F

    .line 66
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nineoldandroids/a/j$a;

    invoke-virtual {v9}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v9

    iput v9, p0, Lcom/nineoldandroids/a/g;->h:F

    .line 67
    iget v9, p0, Lcom/nineoldandroids/a/g;->h:F

    iget v10, p0, Lcom/nineoldandroids/a/g;->g:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/nineoldandroids/a/g;->i:F

    .line 69
    :cond_0
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->d:Landroid/view/animation/Interpolator;

    if-eqz v9, :cond_1

    .line 70
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v9, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 72
    :cond_1
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    if-nez v9, :cond_2

    .line 73
    iget v9, p0, Lcom/nineoldandroids/a/g;->g:F

    iget v10, p0, Lcom/nineoldandroids/a/g;->i:F

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    .line 124
    :goto_0
    return v9

    .line 75
    :cond_2
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    iget v10, p0, Lcom/nineoldandroids/a/g;->g:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, p0, Lcom/nineoldandroids/a/g;->h:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, p1, v10, v11}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto :goto_0

    .line 78
    :cond_3
    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_6

    .line 79
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/j$a;

    .line 80
    .local v7, "prevKeyframe":Lcom/nineoldandroids/a/j$a;
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/j$a;

    .line 81
    .local v4, "nextKeyframe":Lcom/nineoldandroids/a/j$a;
    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v8

    .line 82
    .local v8, "prevValue":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v5

    .line 83
    .local v5, "nextValue":F
    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v6

    .line 84
    .local v6, "prevFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v3

    .line 85
    .local v3, "nextFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 86
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_4

    .line 87
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 89
    :cond_4
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    .line 90
    .local v2, "intervalFraction":F
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    if-nez v9, :cond_5

    sub-float v9, v5, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    .line 91
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 90
    invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 91
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto :goto_0

    .line 92
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Lcom/nineoldandroids/a/j$a;
    .end local v5    # "nextValue":F
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Lcom/nineoldandroids/a/j$a;
    .end local v8    # "prevValue":F
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_9

    .line 93
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    iget v10, p0, Lcom/nineoldandroids/a/g;->a:I

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/j$a;

    .line 94
    .restart local v7    # "prevKeyframe":Lcom/nineoldandroids/a/j$a;
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    iget v10, p0, Lcom/nineoldandroids/a/g;->a:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/j$a;

    .line 95
    .restart local v4    # "nextKeyframe":Lcom/nineoldandroids/a/j$a;
    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v8

    .line 96
    .restart local v8    # "prevValue":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v5

    .line 97
    .restart local v5    # "nextValue":F
    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v6

    .line 98
    .restart local v6    # "prevFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v3

    .line 99
    .restart local v3    # "nextFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 100
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_7

    .line 101
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 103
    :cond_7
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    .line 104
    .restart local v2    # "intervalFraction":F
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    if-nez v9, :cond_8

    sub-float v9, v5, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    .line 105
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 104
    invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 105
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto/16 :goto_0

    .line 107
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Lcom/nineoldandroids/a/j$a;
    .end local v5    # "nextValue":F
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Lcom/nineoldandroids/a/j$a;
    .end local v8    # "prevValue":F
    :cond_9
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/j$a;

    .line 108
    .restart local v7    # "prevKeyframe":Lcom/nineoldandroids/a/j$a;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v9, p0, Lcom/nineoldandroids/a/g;->a:I

    if-ge v0, v9, :cond_d

    .line 109
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/j$a;

    .line 110
    .restart local v4    # "nextKeyframe":Lcom/nineoldandroids/a/j$a;
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_c

    .line 111
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 112
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_a

    .line 113
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 115
    :cond_a
    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v9

    sub-float v9, p1, v9

    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v10

    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v11

    sub-float/2addr v10, v11

    div-float v2, v9, v10

    .line 116
    .restart local v2    # "intervalFraction":F
    invoke-virtual {v7}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v8

    .line 117
    .restart local v8    # "prevValue":F
    invoke-virtual {v4}, Lcom/nineoldandroids/a/j$a;->g()F

    move-result v5

    .line 118
    .restart local v5    # "nextValue":F
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    if-nez v9, :cond_b

    sub-float v9, v5, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    goto/16 :goto_0

    :cond_b
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/p;

    .line 119
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 118
    invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 119
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto/16 :goto_0

    .line 121
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v5    # "nextValue":F
    .end local v8    # "prevValue":F
    :cond_c
    move-object v7, v4

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v4    # "nextKeyframe":Lcom/nineoldandroids/a/j$a;
    :cond_d
    iget-object v9, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    iget v10, p0, Lcom/nineoldandroids/a/g;->a:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nineoldandroids/a/j;

    invoke-virtual {v9}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto/16 :goto_0
.end method

.method public synthetic b()Lcom/nineoldandroids/a/k;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nineoldandroids/a/g;->a()Lcom/nineoldandroids/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nineoldandroids/a/g;->a()Lcom/nineoldandroids/a/g;

    move-result-object v0

    return-object v0
.end method
