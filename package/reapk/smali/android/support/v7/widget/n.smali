.class Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/n$b;,
        Landroid/support/v7/widget/n$a;
    }
.end annotation


# static fields
.field private static final d:Z = false

.field private static final e:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final a:Landroid/support/v7/widget/n$b;

.field final b:Landroid/support/v7/widget/n$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/n$b;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/widget/n$b;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    .line 50
    new-instance v0, Landroid/support/v7/widget/n$a;

    invoke-direct {v0}, Landroid/support/v7/widget/n$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    .line 52
    return-void
.end method

.method private f(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 114
    if-gez p1, :cond_1

    move v2, v4

    .line 131
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v5}, Landroid/support/v7/widget/n$b;->a()I

    move-result v1

    .line 118
    .local v1, "limit":I
    move v2, p1

    .line 119
    .local v2, "offset":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 120
    iget-object v5, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/n$a;->e(I)I

    move-result v3

    .line 121
    .local v3, "removedBefore":I
    sub-int v5, v2, v3

    sub-int v0, p1, v5

    .line 122
    .local v0, "diff":I
    if-nez v0, :cond_2

    .line 123
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/n$a;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 128
    :cond_2
    add-int/2addr v2, v0

    .line 130
    goto :goto_1

    .end local v0    # "diff":I
    .end local v3    # "removedBefore":I
    :cond_3
    move v2, v4

    .line 131
    goto :goto_0
.end method

.method private g(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/n$b;->c(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method private h(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/n$b;->d(Landroid/view/View;)V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/n$a;->a()V

    .line 189
    iget-object v1, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    iget-object v1, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/n$b;->d(Landroid/view/View;)V

    .line 191
    iget-object v1, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1}, Landroid/support/v7/widget/n$b;->b()V

    .line 197
    return-void
.end method

.method a(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->f(I)I

    move-result v0

    .line 161
    .local v0, "offset":I
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/n$b;->b(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/n$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->h(Landroid/view/View;)Z

    .line 168
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/n$b;->a(I)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;)I

    move-result v0

    .line 141
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/n$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->h(Landroid/view/View;)Z

    .line 147
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/n$b;->a(I)V

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "hidden"    # Z

    .prologue
    .line 230
    if-gez p2, :cond_1

    .line 231
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1}, Landroid/support/v7/widget/n$b;->a()I

    move-result v0

    .line 235
    .local v0, "offset":I
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0, p4}, Landroid/support/v7/widget/n$a;->a(IZ)V

    .line 236
    if-eqz p4, :cond_0

    .line 237
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->g(Landroid/view/View;)V

    .line 239
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, p1, v0, p3}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void

    .line 233
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/n;->f(I)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method a(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "hidden"    # Z

    .prologue
    .line 98
    if-gez p2, :cond_1

    .line 99
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1}, Landroid/support/v7/widget/n$b;->a()I

    move-result v0

    .line 103
    .local v0, "offset":I
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0, p3}, Landroid/support/v7/widget/n$a;->a(IZ)V

    .line 104
    if-eqz p3, :cond_0

    .line 105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->g(Landroid/view/View;)V

    .line 107
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;I)V

    .line 111
    return-void

    .line 101
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/n;->f(I)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method a(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hidden"    # Z

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/n;->a(Landroid/view/View;IZ)V

    .line 86
    return-void
.end method

.method b()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v0}, Landroid/support/v7/widget/n$b;->a()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 297
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v2, p1}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;)I

    move-result v0

    .line 298
    .local v0, "index":I
    if-ne v0, v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/n$a;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/n$a;->e(I)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method b(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->f(I)I

    move-result v0

    .line 181
    .local v0, "offset":I
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/n$b;->b(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method c()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v0}, Landroid/support/v7/widget/n$b;->a()I

    move-result v0

    return v0
.end method

.method c(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 206
    iget-object v4, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 208
    iget-object v4, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 209
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/n$b;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v1

    .line 210
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$w;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 211
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return-object v3

    .line 207
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method c(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/n$b;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;)I

    move-result v0

    .line 329
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/n$a;->a(I)V

    .line 336
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->g(Landroid/view/View;)V

    .line 340
    return-void
.end method

.method e(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 282
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->f(I)I

    move-result v0

    .line 283
    .local v0, "offset":I
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/n$a;->d(I)Z

    .line 284
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/n$b;->c(I)V

    .line 288
    return-void
.end method

.method e(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;)I

    move-result v0

    .line 351
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/n$a;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/n$a;->b(I)V

    .line 358
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->h(Landroid/view/View;)Z

    .line 359
    return-void
.end method

.method f(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v2, p1}, Landroid/support/v7/widget/n$b;->a(Landroid/view/View;)I

    move-result v0

    .line 374
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 375
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->h(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/n$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 381
    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/n$a;->d(I)Z

    .line 382
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n;->h(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/n$b;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/n$b;->a(I)V

    goto :goto_0

    .line 389
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/n$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/n$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/n;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
