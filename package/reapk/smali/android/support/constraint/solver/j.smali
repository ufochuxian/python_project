.class public Landroid/support/constraint/solver/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/j$a;
    }
.end annotation


# static fields
.field public static c:I

.field private static final d:Z


# instance fields
.field a:I

.field b:F

.field private final e:Landroid/support/constraint/solver/d;

.field private final f:Landroid/support/constraint/solver/e;

.field private g:Landroid/support/constraint/solver/j$a;

.field private h:Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Landroid/support/constraint/solver/j;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/d;Landroid/support/constraint/solver/e;)V
    .locals 2
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/d;
    .param p2, "cache"    # Landroid/support/constraint/solver/e;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/j;->a:I

    .line 41
    iput-object v1, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    .line 43
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Landroid/support/constraint/solver/j;->b:F

    .line 47
    iput-object p1, p0, Landroid/support/constraint/solver/j;->e:Landroid/support/constraint/solver/d;

    .line 48
    iput-object p2, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 2
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 293
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_1

    .line 294
    iget-object v1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    if-ne v1, p1, :cond_0

    .line 295
    iget v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 299
    :goto_1
    return v1

    .line 297
    :cond_0
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 299
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final a(I)Landroid/support/constraint/solver/SolverVariable;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 251
    iget-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 252
    .local v1, "current":Landroid/support/constraint/solver/j$a;
    const/4 v0, 0x0

    .line 253
    .local v0, "count":I
    :goto_0
    if-eq v0, p1, :cond_0

    .line 254
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public a(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 83
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_0

    .line 84
    iget v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 85
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public final a(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 282
    iget-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 283
    .local v1, "current":Landroid/support/constraint/solver/j$a;
    const/4 v0, 0x0

    .line 284
    .local v0, "count":I
    :goto_0
    if-eq v0, p1, :cond_0

    .line 285
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    iput p2, v1, Landroid/support/constraint/solver/j$a;->b:F

    .line 289
    return-void
.end method

.method public final a(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 4
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    .line 303
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/j;->c(Landroid/support/constraint/solver/SolverVariable;)F

    .line 337
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 308
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    const/4 v1, 0x0

    .line 309
    .local v1, "previous":Landroid/support/constraint/solver/j$a;
    :goto_1
    if-eqz v0, :cond_3

    .line 310
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    if-ne v2, p1, :cond_1

    .line 311
    iput p2, v0, Landroid/support/constraint/solver/j$a;->b:F

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v2, Landroid/support/constraint/solver/SolverVariable;->c:I

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->c:I

    if-ge v2, v3, :cond_2

    .line 315
    move-object v1, v0

    .line 317
    :cond_2
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_1

    .line 319
    :cond_3
    iget-object v2, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v2}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Landroid/support/constraint/solver/j$a;
    check-cast v0, Landroid/support/constraint/solver/j$a;

    .line 320
    .restart local v0    # "current":Landroid/support/constraint/solver/j$a;
    if-nez v0, :cond_4

    .line 321
    new-instance v0, Landroid/support/constraint/solver/j$a;

    .end local v0    # "current":Landroid/support/constraint/solver/j$a;
    invoke-direct {v0}, Landroid/support/constraint/solver/j$a;-><init>()V

    .line 323
    .restart local v0    # "current":Landroid/support/constraint/solver/j$a;
    :cond_4
    iput p2, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 324
    iput-object p1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    .line 325
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 326
    if-eqz v1, :cond_6

    .line 327
    iget-object v2, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 328
    iput-object v0, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 333
    :goto_2
    iget-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    if-nez v2, :cond_5

    .line 334
    iput-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 336
    :cond_5
    iget v2, p0, Landroid/support/constraint/solver/j;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/j;->a:I

    goto :goto_0

    .line 330
    :cond_6
    iget-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    iput-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 331
    iput-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    goto :goto_2
.end method

.method public a(Landroid/support/constraint/solver/d;)V
    .locals 2
    .param p1, "row"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 91
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/SolverVariable;->a(Landroid/support/constraint/solver/d;)V

    .line 93
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/solver/d;Landroid/support/constraint/solver/d;)V
    .locals 10
    .param p1, "self"    # Landroid/support/constraint/solver/d;
    .param p2, "definition"    # Landroid/support/constraint/solver/d;

    .prologue
    const/4 v9, 0x0

    .line 134
    iget-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 135
    .local v1, "current":Landroid/support/constraint/solver/j$a;
    const/4 v5, 0x0

    .line 136
    .local v5, "previous":Landroid/support/constraint/solver/j$a;
    iget-object v7, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v7, v7, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v7}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/j$a;

    .line 137
    .local v4, "newVariables":Landroid/support/constraint/solver/j$a;
    if-nez v4, :cond_0

    .line 138
    new-instance v4, Landroid/support/constraint/solver/j$a;

    .end local v4    # "newVariables":Landroid/support/constraint/solver/j$a;
    invoke-direct {v4}, Landroid/support/constraint/solver/j$a;-><init>()V

    .line 140
    .restart local v4    # "newVariables":Landroid/support/constraint/solver/j$a;
    :cond_0
    iput-object v9, v4, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 141
    move-object v3, v4

    .line 142
    .local v3, "lastOfNewVariables":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v1, :cond_5

    .line 143
    iget-object v7, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, p2, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    if-ne v7, v8, :cond_4

    .line 144
    iget v0, v1, Landroid/support/constraint/solver/j$a;->b:F

    .line 145
    .local v0, "amount":F
    iget-boolean v7, p2, Landroid/support/constraint/solver/d;->h:Z

    if-nez v7, :cond_2

    .line 146
    iget-object v7, p2, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    check-cast v7, Landroid/support/constraint/solver/j;

    iget-object v2, v7, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 147
    .local v2, "definitionCurrent":Landroid/support/constraint/solver/j$a;
    :goto_1
    if-eqz v2, :cond_2

    .line 148
    iget-object v7, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v7, v7, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v7}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/j$a;

    .local v6, "temp":Landroid/support/constraint/solver/j$a;
    if-nez v6, :cond_1

    new-instance v6, Landroid/support/constraint/solver/j$a;

    .end local v6    # "temp":Landroid/support/constraint/solver/j$a;
    invoke-direct {v6}, Landroid/support/constraint/solver/j$a;-><init>()V

    .line 149
    .restart local v6    # "temp":Landroid/support/constraint/solver/j$a;
    :cond_1
    iget-object v7, v2, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iput-object v7, v6, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    .line 150
    iget v7, v2, Landroid/support/constraint/solver/j$a;->b:F

    mul-float/2addr v7, v0

    iput v7, v6, Landroid/support/constraint/solver/j$a;->b:F

    .line 151
    iput-object v9, v6, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 152
    iput-object v6, v3, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 153
    move-object v3, v6

    .line 154
    iget-object v2, v2, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 155
    goto :goto_1

    .line 157
    .end local v2    # "definitionCurrent":Landroid/support/constraint/solver/j$a;
    .end local v6    # "temp":Landroid/support/constraint/solver/j$a;
    :cond_2
    iget v7, p1, Landroid/support/constraint/solver/d;->d:F

    iget v8, p2, Landroid/support/constraint/solver/d;->d:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p1, Landroid/support/constraint/solver/d;->d:F

    .line 158
    iget-object v7, p2, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v7, p1}, Landroid/support/constraint/solver/SolverVariable;->b(Landroid/support/constraint/solver/d;)V

    .line 159
    if-nez v5, :cond_3

    .line 160
    iget-object v7, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v7, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 164
    :goto_2
    iget-object v7, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v7, v7, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v7, v1}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 165
    iget v7, p0, Landroid/support/constraint/solver/j;->a:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/support/constraint/solver/j;->a:I

    .line 169
    .end local v0    # "amount":F
    :goto_3
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 162
    .restart local v0    # "amount":F
    :cond_3
    iget-object v7, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v7, v5, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_2

    .line 167
    .end local v0    # "amount":F
    :cond_4
    move-object v5, v1

    goto :goto_3

    .line 171
    :cond_5
    iget-object v1, v4, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 172
    :goto_4
    if-eqz v1, :cond_6

    .line 173
    iget-object v7, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v8, v1, Landroid/support/constraint/solver/j$a;->b:F

    invoke-virtual {p0, v7, v8}, Landroid/support/constraint/solver/j;->b(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 174
    move-object v5, v1

    .line 175
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 176
    iget-object v7, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v7, v7, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v7, v5}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    goto :goto_4

    .line 178
    :cond_6
    iget-object v7, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v7, v7, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v7, v4}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public a(Landroid/support/constraint/solver/d;[Landroid/support/constraint/solver/d;)V
    .locals 12
    .param p1, "self"    # Landroid/support/constraint/solver/d;
    .param p2, "rows"    # [Landroid/support/constraint/solver/d;

    .prologue
    const/4 v11, 0x0

    .line 182
    iget-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 183
    .local v1, "current":Landroid/support/constraint/solver/j$a;
    const/4 v7, 0x0

    .line 184
    .local v7, "previous":Landroid/support/constraint/solver/j$a;
    iget-object v9, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v9, v9, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v9}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/j$a;

    .line 185
    .local v6, "newVariables":Landroid/support/constraint/solver/j$a;
    if-nez v6, :cond_0

    .line 186
    new-instance v6, Landroid/support/constraint/solver/j$a;

    .end local v6    # "newVariables":Landroid/support/constraint/solver/j$a;
    invoke-direct {v6}, Landroid/support/constraint/solver/j$a;-><init>()V

    .line 188
    .restart local v6    # "newVariables":Landroid/support/constraint/solver/j$a;
    :cond_0
    iput-object v11, v6, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 189
    move-object v5, v6

    .line 190
    .local v5, "lastOfNewVariables":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v1, :cond_5

    .line 191
    iget-object v9, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v9, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 192
    .local v4, "definitionIndex":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_4

    .line 193
    iget v0, v1, Landroid/support/constraint/solver/j$a;->b:F

    .line 194
    .local v0, "amount":F
    aget-object v2, p2, v4

    .line 195
    .local v2, "definition":Landroid/support/constraint/solver/d;
    iget-boolean v9, v2, Landroid/support/constraint/solver/d;->h:Z

    if-nez v9, :cond_2

    .line 196
    iget-object v9, v2, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    check-cast v9, Landroid/support/constraint/solver/j;

    iget-object v3, v9, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 197
    .local v3, "definitionCurrent":Landroid/support/constraint/solver/j$a;
    :goto_1
    if-eqz v3, :cond_2

    .line 198
    iget-object v9, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v9, v9, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v9}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/j$a;

    .local v8, "temp":Landroid/support/constraint/solver/j$a;
    if-nez v8, :cond_1

    new-instance v8, Landroid/support/constraint/solver/j$a;

    .end local v8    # "temp":Landroid/support/constraint/solver/j$a;
    invoke-direct {v8}, Landroid/support/constraint/solver/j$a;-><init>()V

    .line 199
    .restart local v8    # "temp":Landroid/support/constraint/solver/j$a;
    :cond_1
    iget-object v9, v3, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iput-object v9, v8, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    .line 200
    iget v9, v3, Landroid/support/constraint/solver/j$a;->b:F

    mul-float/2addr v9, v0

    iput v9, v8, Landroid/support/constraint/solver/j$a;->b:F

    .line 201
    iput-object v11, v8, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 202
    iput-object v8, v5, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 203
    move-object v5, v8

    .line 204
    iget-object v3, v3, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 205
    goto :goto_1

    .line 207
    .end local v3    # "definitionCurrent":Landroid/support/constraint/solver/j$a;
    .end local v8    # "temp":Landroid/support/constraint/solver/j$a;
    :cond_2
    iget v9, p1, Landroid/support/constraint/solver/d;->d:F

    iget v10, v2, Landroid/support/constraint/solver/d;->d:F

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p1, Landroid/support/constraint/solver/d;->d:F

    .line 208
    iget-object v9, v2, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9, p1}, Landroid/support/constraint/solver/SolverVariable;->b(Landroid/support/constraint/solver/d;)V

    .line 209
    if-nez v7, :cond_3

    .line 210
    iget-object v9, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v9, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 214
    :goto_2
    iget-object v9, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v9, v9, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v9, v1}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 215
    iget v9, p0, Landroid/support/constraint/solver/j;->a:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/support/constraint/solver/j;->a:I

    .line 219
    .end local v0    # "amount":F
    .end local v2    # "definition":Landroid/support/constraint/solver/d;
    :goto_3
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 220
    goto :goto_0

    .line 212
    .restart local v0    # "amount":F
    .restart local v2    # "definition":Landroid/support/constraint/solver/d;
    :cond_3
    iget-object v9, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v9, v7, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_2

    .line 217
    .end local v0    # "amount":F
    .end local v2    # "definition":Landroid/support/constraint/solver/d;
    :cond_4
    move-object v7, v1

    goto :goto_3

    .line 221
    .end local v4    # "definitionIndex":I
    :cond_5
    iget-object v1, v6, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 222
    :goto_4
    if-eqz v1, :cond_6

    .line 223
    iget-object v9, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v10, v1, Landroid/support/constraint/solver/j$a;->b:F

    invoke-virtual {p0, v9, v10}, Landroid/support/constraint/solver/j;->b(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 224
    move-object v7, v1

    .line 225
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 226
    iget-object v9, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v9, v9, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v9, v7}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    goto :goto_4

    .line 228
    :cond_6
    iget-object v9, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v9, v9, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v9, v6}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public final a(Landroid/support/constraint/solver/j;F)V
    .locals 4
    .param p1, "target"    # Landroid/support/constraint/solver/j;
    .param p2, "amount"    # F

    .prologue
    .line 271
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 275
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/j;->a(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    iget v3, v0, Landroid/support/constraint/solver/j$a;->b:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/solver/j;->a(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 277
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 64
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    iget v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 70
    :goto_1
    return v1

    .line 68
    :cond_0
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 70
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final b(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 261
    iget-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 262
    .local v1, "current":Landroid/support/constraint/solver/j$a;
    const/4 v0, 0x0

    .line 263
    .local v0, "count":I
    :goto_0
    if-eq v0, p1, :cond_0

    .line 264
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/support/constraint/solver/j$a;->b:F

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 75
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_0

    .line 76
    iget v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 77
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public final b(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 5
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v4, 0x0

    .line 340
    cmpl-float v2, p2, v4

    if-nez v2, :cond_1

    .line 341
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/j;->c(Landroid/support/constraint/solver/SolverVariable;)F

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 345
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    const/4 v1, 0x0

    .line 346
    .local v1, "previous":Landroid/support/constraint/solver/j$a;
    :goto_1
    if-eqz v0, :cond_5

    .line 347
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    if-ne v2, p1, :cond_3

    .line 348
    iget v2, v0, Landroid/support/constraint/solver/j$a;->b:F

    add-float/2addr v2, p2

    iput v2, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 349
    iget v2, v0, Landroid/support/constraint/solver/j$a;->b:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    if-ne v0, v2, :cond_2

    .line 351
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 355
    :goto_2
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/j;->e:Landroid/support/constraint/solver/d;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/SolverVariable;->b(Landroid/support/constraint/solver/d;)V

    .line 356
    iget-object v2, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v2, v0}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 357
    iget v2, p0, Landroid/support/constraint/solver/j;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/j;->a:I

    goto :goto_0

    .line 353
    :cond_2
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v2, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_2

    .line 361
    :cond_3
    iget-object v2, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v2, Landroid/support/constraint/solver/SolverVariable;->c:I

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->c:I

    if-ge v2, v3, :cond_4

    .line 362
    move-object v1, v0

    .line 364
    :cond_4
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_1

    .line 366
    :cond_5
    iget-object v2, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v2}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Landroid/support/constraint/solver/j$a;
    check-cast v0, Landroid/support/constraint/solver/j$a;

    .line 367
    .restart local v0    # "current":Landroid/support/constraint/solver/j$a;
    if-nez v0, :cond_6

    .line 368
    new-instance v0, Landroid/support/constraint/solver/j$a;

    .end local v0    # "current":Landroid/support/constraint/solver/j$a;
    invoke-direct {v0}, Landroid/support/constraint/solver/j$a;-><init>()V

    .line 370
    .restart local v0    # "current":Landroid/support/constraint/solver/j$a;
    :cond_6
    iput p2, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 371
    iput-object p1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    .line 372
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 373
    if-eqz v1, :cond_8

    .line 374
    iget-object v2, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 375
    iput-object v0, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 380
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    if-nez v2, :cond_7

    .line 381
    iput-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 383
    :cond_7
    iget v2, p0, Landroid/support/constraint/solver/j;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/j;->a:I

    goto :goto_0

    .line 377
    :cond_8
    iget-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    iput-object v2, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 378
    iput-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    goto :goto_3
.end method

.method public final b(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 2
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 399
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_1

    .line 400
    iget-object v1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    if-ne v1, p1, :cond_0

    .line 401
    const/4 v1, 0x1

    .line 405
    :goto_1
    return v1

    .line 403
    :cond_0
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 405
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final c(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 5
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 409
    iget-object v3, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    if-ne v3, p1, :cond_0

    .line 410
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 413
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    const/4 v1, 0x0

    .line 414
    .local v1, "previous":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_3

    .line 415
    iget-object v3, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    if-ne v3, p1, :cond_2

    .line 416
    iget v2, v0, Landroid/support/constraint/solver/j$a;->b:F

    .line 417
    .local v2, "value":F
    iget-object v3, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    if-ne v0, v3, :cond_1

    .line 418
    iget-object v3, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v3, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 422
    :goto_1
    iget-object v3, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/j;->e:Landroid/support/constraint/solver/d;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->b(Landroid/support/constraint/solver/d;)V

    .line 423
    iget-object v3, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v3, v3, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v3, v0}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 424
    iget v3, p0, Landroid/support/constraint/solver/j;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/constraint/solver/j;->a:I

    .line 430
    .end local v2    # "value":F
    :goto_2
    return v2

    .line 420
    .restart local v2    # "value":F
    :cond_1
    iget-object v3, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    iput-object v3, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_1

    .line 427
    .end local v2    # "value":F
    :cond_2
    move-object v1, v0

    .line 428
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 430
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public c()Landroid/support/constraint/solver/SolverVariable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 98
    iget-object v1, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 99
    .local v1, "current":Landroid/support/constraint/solver/j$a;
    const/4 v2, 0x0

    .line 100
    .local v2, "restrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 101
    .local v3, "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    :goto_0
    if-eqz v1, :cond_6

    .line 102
    iget v0, v1, Landroid/support/constraint/solver/j$a;->b:F

    .line 103
    .local v0, "amount":F
    cmpg-float v4, v0, v6

    if-gez v4, :cond_2

    .line 104
    iget v4, p0, Landroid/support/constraint/solver/j;->b:F

    neg-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 105
    iput v6, v1, Landroid/support/constraint/solver/j$a;->b:F

    .line 106
    const/4 v0, 0x0

    .line 114
    :cond_0
    :goto_1
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_4

    .line 115
    iget-object v4, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v4, v5, :cond_5

    .line 116
    cmpg-float v4, v0, v6

    if-gez v4, :cond_3

    .line 117
    iget-object v3, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    .line 130
    .end local v0    # "amount":F
    .end local v3    # "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    :goto_2
    return-object v3

    .line 109
    .restart local v0    # "amount":F
    .restart local v3    # "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    :cond_2
    iget v4, p0, Landroid/support/constraint/solver/j;->b:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 110
    iput v6, v1, Landroid/support/constraint/solver/j$a;->b:F

    .line 111
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    :cond_3
    if-nez v3, :cond_4

    .line 119
    iget-object v3, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    .line 125
    :cond_4
    :goto_3
    iget-object v1, v1, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 126
    goto :goto_0

    .line 121
    :cond_5
    cmpg-float v4, v0, v6

    if-gez v4, :cond_4

    if-nez v2, :cond_4

    .line 122
    iget-object v2, v1, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_3

    .line 127
    .end local v0    # "amount":F
    :cond_6
    if-nez v3, :cond_1

    move-object v3, v2

    .line 130
    goto :goto_2
.end method

.method public d()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    if-nez v1, :cond_2

    .line 233
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 234
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_2

    .line 235
    iget v1, v0, Landroid/support/constraint/solver/j$a;->b:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 236
    iget-object v1, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v1, v1, Landroid/support/constraint/solver/SolverVariable;->d:I

    iget-object v2, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v2, Landroid/support/constraint/solver/SolverVariable;->d:I

    if-ge v1, v2, :cond_1

    .line 237
    :cond_0
    iget-object v1, v0, Landroid/support/constraint/solver/j$a;->a:Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    .line 240
    :cond_1
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 243
    .end local v0    # "current":Landroid/support/constraint/solver/j$a;
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/solver/j;->h:Landroid/support/constraint/solver/SolverVariable;

    return-object v1
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/support/constraint/solver/j;->a:I

    return v0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 388
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_0

    .line 389
    move-object v1, v0

    .line 390
    .local v1, "previous":Landroid/support/constraint/solver/j$a;
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    .line 391
    iget-object v2, p0, Landroid/support/constraint/solver/j;->f:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->a:Landroid/support/constraint/solver/k$a;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    .end local v1    # "previous":Landroid/support/constraint/solver/j$a;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 394
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/solver/j;->a:I

    .line 395
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "size":I
    add-int/lit8 v0, v0, 0x10

    .line 436
    return v0
.end method

.method public h()V
    .locals 6

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/support/constraint/solver/j;->e()I

    move-result v0

    .line 441
    .local v0, "count":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 443
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/j;->a(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 444
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v2, :cond_0

    .line 442
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/j;->b(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 449
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v1, ""

    .line 54
    .local v1, "result":Ljava/lang/String;
    iget-object v0, p0, Landroid/support/constraint/solver/j;->g:Landroid/support/constraint/solver/j$a;

    .line 55
    .local v0, "current":Landroid/support/constraint/solver/j$a;
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v0, v0, Landroid/support/constraint/solver/j$a;->c:Landroid/support/constraint/solver/j$a;

    goto :goto_0

    .line 59
    :cond_0
    return-object v1
.end method
