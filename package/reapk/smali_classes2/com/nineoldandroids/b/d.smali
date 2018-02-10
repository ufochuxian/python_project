.class Lcom/nineoldandroids/b/d;
.super Lcom/nineoldandroids/b/b;
.source "SourceFile"


# static fields
.field private static final a:J = -0x1L


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nineoldandroids/b/b;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 38
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    .line 41
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public a(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 122
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 123
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 126
    :cond_0
    return-object p0
.end method

.method public a(J)Lcom/nineoldandroids/b/b;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 28
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 29
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 32
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 65
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 68
    :cond_0
    return-object p0
.end method

.method public a(Lcom/nineoldandroids/a/a$a;)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "listener"    # Lcom/nineoldandroids/a/a$a;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 74
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 75
    if-nez p1, :cond_1

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 101
    :cond_0
    :goto_0
    return-object p0

    .line 78
    :cond_1
    new-instance v1, Lcom/nineoldandroids/b/d$1;

    invoke-direct {v1, p0, p1}, Lcom/nineoldandroids/b/d$1;-><init>(Lcom/nineoldandroids/b/d;Lcom/nineoldandroids/a/a$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 56
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v2

    .line 59
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public b(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 131
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 132
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    .line 135
    :cond_0
    return-object p0
.end method

.method public b(J)Lcom/nineoldandroids/b/b;
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 46
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 47
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 50
    :cond_0
    return-object p0
.end method

.method public c(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 140
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 141
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 144
    :cond_0
    return-object p0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 107
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 110
    :cond_0
    return-void
.end method

.method public d(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 149
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 150
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    .line 153
    :cond_0
    return-object p0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 115
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 118
    :cond_0
    return-void
.end method

.method public e(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 158
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 159
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 162
    :cond_0
    return-object p0
.end method

.method public f(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 167
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 168
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 171
    :cond_0
    return-object p0
.end method

.method public g(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 176
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 177
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    .line 180
    :cond_0
    return-object p0
.end method

.method public h(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 185
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 186
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 189
    :cond_0
    return-object p0
.end method

.method public i(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 194
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 195
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 198
    :cond_0
    return-object p0
.end method

.method public j(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 203
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 204
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 207
    :cond_0
    return-object p0
.end method

.method public k(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 212
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 213
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 216
    :cond_0
    return-object p0
.end method

.method public l(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 221
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 222
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 225
    :cond_0
    return-object p0
.end method

.method public m(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 230
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 231
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 234
    :cond_0
    return-object p0
.end method

.method public n(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 239
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 240
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 243
    :cond_0
    return-object p0
.end method

.method public o(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 248
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 249
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 252
    :cond_0
    return-object p0
.end method

.method public p(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 257
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 258
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 261
    :cond_0
    return-object p0
.end method

.method public q(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 266
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 267
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 270
    :cond_0
    return-object p0
.end method

.method public r(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 275
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 276
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 279
    :cond_0
    return-object p0
.end method

.method public s(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 284
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 285
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 288
    :cond_0
    return-object p0
.end method

.method public t(F)Lcom/nineoldandroids/b/b;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 293
    iget-object v1, p0, Lcom/nineoldandroids/b/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 294
    .local v0, "n":Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    .line 297
    :cond_0
    return-object p0
.end method
