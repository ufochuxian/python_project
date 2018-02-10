.class public Landroid/support/constraint/solver/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;
    .locals 1
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 37
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/d;->b(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 38
    return-object v0
.end method

.method public static a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;
    .locals 9
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "variableD"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "marginB"    # I
    .param p8, "withError"    # Z

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .local v0, "row":Landroid/support/constraint/solver/d;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 142
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;

    .line 144
    if-eqz p8, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/d;)V

    .line 159
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;
    .locals 2
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 46
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 47
    if-eqz p4, :cond_0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/d;I)V

    .line 59
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/d;
    .locals 2
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "percent"    # F
    .param p5, "withError"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 75
    .local v0, "row":Landroid/support/constraint/solver/d;
    if-eqz p5, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/d;)V

    .line 78
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/d;

    move-result-object v1

    return-object v1
.end method

.method static a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/h;)Landroid/support/constraint/solver/d;
    .locals 8
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "e"    # Landroid/support/constraint/solver/h;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/support/constraint/solver/h;->l()V

    .line 170
    invoke-virtual {p1}, Landroid/support/constraint/solver/h;->n()V

    .line 172
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v3

    .line 173
    .local v3, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {p1}, Landroid/support/constraint/solver/h;->u()Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    .local v1, "eq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/g;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/g;

    .line 177
    .local v5, "v":Landroid/support/constraint/solver/g;
    invoke-virtual {v5}, Landroid/support/constraint/solver/g;->c()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 178
    .local v4, "sv":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v4, :cond_0

    .line 179
    iget-object v6, v3, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    invoke-virtual {v5}, Landroid/support/constraint/solver/g;->e()Landroid/support/constraint/solver/a;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/a;->k()F

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/support/constraint/solver/c;->a(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 175
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v5}, Landroid/support/constraint/solver/g;->e()Landroid/support/constraint/solver/a;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/a;->k()F

    move-result v6

    iput v6, v3, Landroid/support/constraint/solver/d;->d:F

    goto :goto_1

    .line 184
    .end local v4    # "sv":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "v":Landroid/support/constraint/solver/g;
    :cond_1
    return-object v3
.end method

.method public static b(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;
    .locals 4
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 87
    .local v1, "slack":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 88
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 89
    if-eqz p4, :cond_0

    .line 90
    iget-object v3, v0, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/c;->c(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    .line 91
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/d;I)V

    .line 104
    .end local v2    # "slackValue":F
    :cond_0
    return-object v0
.end method

.method public static c(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;
    .locals 4
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/i;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 113
    .local v1, "slack":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 114
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/d;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 115
    if-eqz p4, :cond_0

    .line 116
    iget-object v3, v0, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/c;->c(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    .line 117
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/d;I)V

    .line 130
    .end local v2    # "slackValue":F
    :cond_0
    return-object v0
.end method
