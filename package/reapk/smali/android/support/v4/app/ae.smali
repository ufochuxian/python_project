.class public Landroid/support/v4/app/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/af",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/af",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "callbacks":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    .line 53
    return-void
.end method

.method public static final a(Landroid/support/v4/app/af;)Landroid/support/v4/app/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/af",
            "<*>;)",
            "Landroid/support/v4/app/ae;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "callbacks":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<*>;"
    new-instance v0, Landroid/support/v4/app/ae;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ae;-><init>(Landroid/support/v4/app/af;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->k()Landroid/support/v4/app/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/ah;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    iget-object v0, v0, Landroid/support/v4/app/ah;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p0}, Landroid/support/v4/app/ae;->c()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .restart local p1    # "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    iget-object v0, v0, Landroid/support/v4/app/ah;->l:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, p1

    .line 96
    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->a(Landroid/content/res/Configuration;)V

    .line 305
    return-void
.end method

.method public a(Landroid/os/Parcelable;Landroid/support/v4/app/ai;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/support/v4/app/ai;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ah;->a(Landroid/os/Parcelable;Landroid/support/v4/app/ai;)V

    .line 159
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    new-instance v1, Landroid/support/v4/app/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/support/v4/app/ai;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/ah;->a(Landroid/os/Parcelable;Landroid/support/v4/app/ai;)V

    .line 149
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    iget-object v1, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v2, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/af;Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;)V

    .line 106
    return-void
.end method

.method public a(Landroid/support/v4/k/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/o",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/as;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "loaderManagers":Landroid/support/v4/k/o;, "Landroid/support/v4/k/o<Ljava/lang/String;Landroid/support/v4/app/as;>;"
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->a(Landroid/support/v4/k/o;)V

    .line 446
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/af;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->b(Z)V

    .line 283
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ah;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/app/as;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->l()Landroid/support/v4/app/at;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->b(Landroid/view/Menu;)V

    .line 378
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->c(Z)V

    .line 294
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ah;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v1, v1, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    iget-object v0, v1, Landroid/support/v4/app/ah;->l:Ljava/util/ArrayList;

    .line 82
    .local v0, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->a(Z)V

    .line 407
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->o()V

    .line 128
    return-void
.end method

.method public e()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->n()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v1, v1, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v1}, Landroid/support/v4/app/ah;->m()Landroid/support/v4/app/ai;

    move-result-object v0

    .line 171
    .local v0, "nonconf":Landroid/support/v4/app/ai;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->a()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g()Landroid/support/v4/app/ai;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->m()Landroid/support/v4/app/ai;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->p()V

    .line 191
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->q()V

    .line 202
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->r()V

    .line 213
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->s()V

    .line 224
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->t()V

    .line 235
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->u()V

    .line 246
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->v()V

    .line 250
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->w()V

    .line 261
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->x()V

    .line 272
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->y()V

    .line 317
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Landroid/support/v4/app/ah;->j()Z

    move-result v0

    return v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->n()V

    .line 396
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->o()V

    .line 414
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->p()V

    .line 421
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->q()V

    .line 428
    return-void
.end method

.method public w()Landroid/support/v4/k/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/k/o",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->r()Landroid/support/v4/k/o;

    move-result-object v0

    return-object v0
.end method
