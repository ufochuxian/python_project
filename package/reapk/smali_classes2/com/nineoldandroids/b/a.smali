.class public final Lcom/nineoldandroids/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/b/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 13
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->a()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->a(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 17
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->a(F)V

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scrollX"    # I

    .prologue
    .line 113
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->a(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 25
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->b()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->b(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotX"    # F

    .prologue
    .line 29
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->b(F)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->b(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scrollY"    # I

    .prologue
    .line 125
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->b(I)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->b(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 37
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->c()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->c(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotY"    # F

    .prologue
    .line 41
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->c(F)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->c(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 49
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->d()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->d(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotation"    # F

    .prologue
    .line 53
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->d(F)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->d(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 61
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->e()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->e(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotationX"    # F

    .prologue
    .line 65
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->e(F)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->e(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static f(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 73
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->f()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->f(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotationY"    # F

    .prologue
    .line 77
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->f(F)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->f(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static g(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 85
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->g()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->g(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static g(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scaleX"    # F

    .prologue
    .line 89
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->g(F)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->g(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static h(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 97
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->h()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->h(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static h(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scaleY"    # F

    .prologue
    .line 101
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->h(F)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->h(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static i(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 109
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->i()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->i(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static i(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F

    .prologue
    .line 137
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->i(F)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->i(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static j(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 121
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->j()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->j(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static j(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationY"    # F

    .prologue
    .line 149
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->j(F)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->j(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 133
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->k()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->k(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static k(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F

    .prologue
    .line 161
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->k(F)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->k(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static l(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 145
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->l()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->l(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static l(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "y"    # F

    .prologue
    .line 173
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/b/a/a;->l(F)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p0, p1}, Lcom/nineoldandroids/b/a$a;->l(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 157
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->m()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->m(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static n(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 169
    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->n()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/nineoldandroids/b/a$a;->n(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method
