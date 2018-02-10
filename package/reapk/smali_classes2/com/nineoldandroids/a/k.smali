.class Lcom/nineoldandroids/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Lcom/nineoldandroids/a/j;

.field c:Lcom/nineoldandroids/a/j;

.field d:Landroid/view/animation/Interpolator;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/j;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/nineoldandroids/a/p;


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/a/j;)V
    .locals 2
    .param p1, "keyframes"    # [Lcom/nineoldandroids/a/j;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v0, p1

    iput v0, p0, Lcom/nineoldandroids/a/k;->a:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v0, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/j;

    iput-object v0, p0, Lcom/nineoldandroids/a/k;->b:Lcom/nineoldandroids/a/j;

    .line 48
    iget-object v0, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nineoldandroids/a/k;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/j;

    iput-object v0, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    .line 49
    iget-object v0, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/j;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/k;->d:Landroid/view/animation/Interpolator;

    .line 50
    return-void
.end method

.method public static varargs a([F)Lcom/nineoldandroids/a/k;
    .locals 7
    .param p0, "values"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 68
    array-length v2, p0

    .line 69
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/a/j$a;

    .line 70
    .local v1, "keyframes":[Lcom/nineoldandroids/a/j$a;
    if-ne v2, v6, :cond_1

    .line 71
    invoke-static {v5}, Lcom/nineoldandroids/a/j;->b(F)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$a;

    aput-object v3, v1, v4

    .line 72
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p0, v4

    invoke-static {v3, v4}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$a;

    aput-object v3, v1, v6

    .line 79
    :cond_0
    new-instance v3, Lcom/nineoldandroids/a/g;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/a/g;-><init>([Lcom/nineoldandroids/a/j$a;)V

    return-object v3

    .line 74
    :cond_1
    aget v3, p0, v4

    invoke-static {v5, v3}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$a;

    aput-object v3, v1, v4

    .line 75
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 76
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v0

    invoke-static {v3, v4}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$a;

    aput-object v3, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs a([I)Lcom/nineoldandroids/a/k;
    .locals 7
    .param p0, "values"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 53
    array-length v2, p0

    .line 54
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/a/j$b;

    .line 55
    .local v1, "keyframes":[Lcom/nineoldandroids/a/j$b;
    if-ne v2, v6, :cond_1

    .line 56
    invoke-static {v5}, Lcom/nineoldandroids/a/j;->a(F)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$b;

    aput-object v3, v1, v4

    .line 57
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p0, v4

    invoke-static {v3, v4}, Lcom/nineoldandroids/a/j;->a(FI)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$b;

    aput-object v3, v1, v6

    .line 64
    :cond_0
    new-instance v3, Lcom/nineoldandroids/a/i;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/a/i;-><init>([Lcom/nineoldandroids/a/j$b;)V

    return-object v3

    .line 59
    :cond_1
    aget v3, p0, v4

    invoke-static {v5, v3}, Lcom/nineoldandroids/a/j;->a(FI)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$b;

    aput-object v3, v1, v4

    .line 60
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 61
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v0

    invoke-static {v3, v4}, Lcom/nineoldandroids/a/j;->a(FI)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$b;

    aput-object v3, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs a([Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/k;
    .locals 8
    .param p0, "keyframes"    # [Lcom/nineoldandroids/a/j;

    .prologue
    .line 84
    array-length v6, p0

    .line 85
    .local v6, "numKeyframes":I
    const/4 v1, 0x0

    .line 86
    .local v1, "hasFloat":Z
    const/4 v2, 0x0

    .line 87
    .local v2, "hasInt":Z
    const/4 v3, 0x0

    .line 88
    .local v3, "hasOther":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 89
    aget-object v7, p0, v4

    instance-of v7, v7, Lcom/nineoldandroids/a/j$a;

    if-eqz v7, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 88
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_0
    aget-object v7, p0, v4

    instance-of v7, v7, Lcom/nineoldandroids/a/j$b;

    if-eqz v7, :cond_1

    .line 92
    const/4 v2, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 97
    :cond_2
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 98
    new-array v0, v6, [Lcom/nineoldandroids/a/j$a;

    .line 99
    .local v0, "floatKeyframes":[Lcom/nineoldandroids/a/j$a;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    .line 100
    aget-object v7, p0, v4

    check-cast v7, Lcom/nineoldandroids/a/j$a;

    aput-object v7, v0, v4

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 102
    :cond_3
    new-instance v7, Lcom/nineoldandroids/a/g;

    invoke-direct {v7, v0}, Lcom/nineoldandroids/a/g;-><init>([Lcom/nineoldandroids/a/j$a;)V

    .line 110
    .end local v0    # "floatKeyframes":[Lcom/nineoldandroids/a/j$a;
    :goto_3
    return-object v7

    .line 103
    :cond_4
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    .line 104
    new-array v5, v6, [Lcom/nineoldandroids/a/j$b;

    .line 105
    .local v5, "intKeyframes":[Lcom/nineoldandroids/a/j$b;
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_5

    .line 106
    aget-object v7, p0, v4

    check-cast v7, Lcom/nineoldandroids/a/j$b;

    aput-object v7, v5, v4

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 108
    :cond_5
    new-instance v7, Lcom/nineoldandroids/a/i;

    invoke-direct {v7, v5}, Lcom/nineoldandroids/a/i;-><init>([Lcom/nineoldandroids/a/j$b;)V

    goto :goto_3

    .line 110
    .end local v5    # "intKeyframes":[Lcom/nineoldandroids/a/j$b;
    :cond_6
    new-instance v7, Lcom/nineoldandroids/a/k;

    invoke-direct {v7, p0}, Lcom/nineoldandroids/a/k;-><init>([Lcom/nineoldandroids/a/j;)V

    goto :goto_3
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/nineoldandroids/a/k;
    .locals 7
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 115
    array-length v2, p0

    .line 116
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/a/j$c;

    .line 117
    .local v1, "keyframes":[Lcom/nineoldandroids/a/j$c;
    if-ne v2, v6, :cond_1

    .line 118
    invoke-static {v5}, Lcom/nineoldandroids/a/j;->c(F)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$c;

    aput-object v3, v1, v4

    .line 119
    const/high16 v3, 0x3f800000    # 1.0f

    aget-object v4, p0, v4

    invoke-static {v3, v4}, Lcom/nineoldandroids/a/j;->a(FLjava/lang/Object;)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$c;

    aput-object v3, v1, v6

    .line 126
    :cond_0
    new-instance v3, Lcom/nineoldandroids/a/k;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/a/k;-><init>([Lcom/nineoldandroids/a/j;)V

    return-object v3

    .line 121
    :cond_1
    aget-object v3, p0, v4

    invoke-static {v5, v3}, Lcom/nineoldandroids/a/j;->a(FLjava/lang/Object;)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$c;

    aput-object v3, v1, v4

    .line 122
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 123
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Lcom/nineoldandroids/a/j;->a(FLjava/lang/Object;)Lcom/nineoldandroids/a/j;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j$c;

    aput-object v3, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(F)Ljava/lang/Object;
    .locals 9
    .param p1, "fraction"    # F

    .prologue
    .line 168
    iget v6, p0, Lcom/nineoldandroids/a/k;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 169
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->d:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v6, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 172
    :cond_0
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->f:Lcom/nineoldandroids/a/p;

    iget-object v7, p0, Lcom/nineoldandroids/a/k;->b:Lcom/nineoldandroids/a/j;

    invoke-virtual {v7}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    invoke-virtual {v8}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, p1, v7, v8}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 208
    :goto_0
    return-object v6

    .line 174
    :cond_1
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_3

    .line 175
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j;

    .line 176
    .local v3, "nextKeyframe":Lcom/nineoldandroids/a/j;
    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 177
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_2

    .line 178
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 180
    :cond_2
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->b:Lcom/nineoldandroids/a/j;

    invoke-virtual {v6}, Lcom/nineoldandroids/a/j;->c()F

    move-result v4

    .line 181
    .local v4, "prevFraction":F
    sub-float v6, p1, v4

    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->c()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 182
    .local v2, "intervalFraction":F
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->f:Lcom/nineoldandroids/a/p;

    iget-object v7, p0, Lcom/nineoldandroids/a/k;->b:Lcom/nineoldandroids/a/j;

    invoke-virtual {v7}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 183
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextKeyframe":Lcom/nineoldandroids/a/j;
    .end local v4    # "prevFraction":F
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_5

    .line 184
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    iget v7, p0, Lcom/nineoldandroids/a/k;->a:I

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/a/j;

    .line 185
    .local v5, "prevKeyframe":Lcom/nineoldandroids/a/j;
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    invoke-virtual {v6}, Lcom/nineoldandroids/a/j;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 186
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_4

    .line 187
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 189
    :cond_4
    invoke-virtual {v5}, Lcom/nineoldandroids/a/j;->c()F

    move-result v4

    .line 190
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    iget-object v7, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    invoke-virtual {v7}, Lcom/nineoldandroids/a/j;->c()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 191
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->f:Lcom/nineoldandroids/a/p;

    invoke-virtual {v5}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    invoke-virtual {v8}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 193
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    .end local v5    # "prevKeyframe":Lcom/nineoldandroids/a/j;
    :cond_5
    iget-object v5, p0, Lcom/nineoldandroids/a/k;->b:Lcom/nineoldandroids/a/j;

    .line 194
    .restart local v5    # "prevKeyframe":Lcom/nineoldandroids/a/j;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v6, p0, Lcom/nineoldandroids/a/k;->a:I

    if-ge v0, v6, :cond_8

    .line 195
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/j;

    .line 196
    .restart local v3    # "nextKeyframe":Lcom/nineoldandroids/a/j;
    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->c()F

    move-result v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_7

    .line 197
    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 198
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_6

    .line 199
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 201
    :cond_6
    invoke-virtual {v5}, Lcom/nineoldandroids/a/j;->c()F

    move-result v4

    .line 202
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->c()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 203
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->f:Lcom/nineoldandroids/a/p;

    invoke-virtual {v5}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/a/p;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 205
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    :cond_7
    move-object v5, v3

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    .end local v3    # "nextKeyframe":Lcom/nineoldandroids/a/j;
    :cond_8
    iget-object v6, p0, Lcom/nineoldandroids/a/k;->c:Lcom/nineoldandroids/a/j;

    invoke-virtual {v6}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public a(Lcom/nineoldandroids/a/p;)V
    .locals 0
    .param p1, "evaluator"    # Lcom/nineoldandroids/a/p;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/nineoldandroids/a/k;->f:Lcom/nineoldandroids/a/p;

    .line 139
    return-void
.end method

.method public b()Lcom/nineoldandroids/a/k;
    .locals 6

    .prologue
    .line 143
    iget-object v1, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    .line 144
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/j;>;"
    iget-object v5, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 145
    .local v4, "numKeyframes":I
    new-array v2, v4, [Lcom/nineoldandroids/a/j;

    .line 146
    .local v2, "newKeyframes":[Lcom/nineoldandroids/a/j;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/a/j;

    invoke-virtual {v5}, Lcom/nineoldandroids/a/j;->f()Lcom/nineoldandroids/a/j;

    move-result-object v5

    aput-object v5, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v3, Lcom/nineoldandroids/a/k;

    invoke-direct {v3, v2}, Lcom/nineoldandroids/a/k;-><init>([Lcom/nineoldandroids/a/j;)V

    .line 150
    .local v3, "newSet":Lcom/nineoldandroids/a/k;
    return-object v3
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/nineoldandroids/a/k;->b()Lcom/nineoldandroids/a/k;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    const-string v1, " "

    .line 214
    .local v1, "returnVal":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/nineoldandroids/a/k;->a:I

    if-ge v0, v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/a/j;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/j;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method
